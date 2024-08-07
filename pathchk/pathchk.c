/*	$NetBSD: pathchk.c,v 1.2 2011/09/16 15:39:28 joerg Exp $	*/

/*-
 * Copyright (c) 2002 Tim J. Robbins.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * from FreeBSD: pathchk.c,v 1.4 2002/12/15 00:40:47 tjr Exp
 */

#include <sys/cdefs.h>
#ifndef lint
__RCSID("$NetBSD: pathchk.c,v 1.2 2011/09/16 15:39:28 joerg Exp $");
#endif /* !lint */

#include <sys/types.h>
#include <sys/stat.h>

#include <errno.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <mkc_err.h>
#include <mkc_warn.h>

#ifndef NAME_MAX
# define NAME_MAX 255
#endif

static int check(const char *);
static int portable(const char *);
__dead static void usage(void);

static int pflag;			/* Perform portability checks */

int
main(int argc, char *argv[])
{
	int ch, rval;
	const char *arg;

	while ((ch = getopt(argc, argv, "p")) > 0) {
		switch (ch) {
		case 'p':
			pflag = 1;
			break;
		default:
			usage();
			/*NOTREACHED*/
		}
	}
	argc -= optind;
	argv += optind;

	if (argc == 0)
		usage();

	rval = 0;
	while ((arg = *argv++) != NULL)
		rval |= check(arg);

	exit(rval);
}

static void
usage(void)
{

	fprintf(stderr, "usage: pathchk [-p] pathname...\n");
	exit(1);
}

static int
check(const char *path)
{
	struct stat sb;
	long complen, namemax, pathmax, svnamemax;
	int badch, last;
	char *end, *p, *pathd;

	if ((pathd = strdup(path)) == NULL)
		err(1, "strdup");

	p = pathd;

	if (!pflag) {
		errno = 0;
		namemax = pathconf(*p == '/' ? "/" : ".", _PC_NAME_MAX);
		if (namemax == -1 && errno != 0)
			namemax = NAME_MAX;
	} else
		namemax = _POSIX_NAME_MAX;

	for (;;) {
		p += strspn(p, "/");
		complen = (long)strcspn(p, "/");
		end = p + complen;
		last = *end == '\0';
		*end = '\0';

		if (namemax != -1 && complen > namemax) {
			warnx("%s: %s: component too long (limit %ld)", path,
			    p, namemax);
			goto bad;
		}

		if (!pflag && stat(pathd, &sb) == -1 && errno != ENOENT) {
			warn("%s: %.*s", path, (int)(strlen(pathd) -
			    complen - 1), pathd);
			goto bad;
		}

		if (pflag && (badch = portable(p)) >= 0) {
			warnx("%s: %s: component contains non-portable "
			    "character `%c'", path, p, badch);
			goto bad;
		}

		if (last)
			break;

		if (!pflag) {
			errno = 0;
			svnamemax = namemax;
			namemax = pathconf(pathd, _PC_NAME_MAX);
			if (namemax == -1 && errno != 0)
				namemax = svnamemax;
		}

		*end = '/';
		p = end + 1;
	}

	if (!pflag) {
		errno = 0;
		pathmax = pathconf(path, _PC_PATH_MAX);
		if (pathmax == -1 && errno != 0)
			pathmax = PATH_MAX;
	} else
		pathmax = _POSIX_PATH_MAX;
	if (pathmax != -1 && strlen(path) >= (size_t)pathmax) {
		warnx("%s: path too long (limit %ld)", path, pathmax - 1);
		goto bad;
	}

	free(pathd);
	return (0);

bad:	free(pathd);
	return (1);
}

/*
 * Check whether a path component contains only portable characters. Return
 * the first non-portable character found.
 */
static int
portable(const char *path)
{
	static const char charset[] =
	    "abcdefghijklmnopqrstuvwxyz"
	    "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	    "0123456789._-";
	long s;

	if (*path == '-')
		return (*path);

	s = strspn(path, charset);
	if (path[s] != '\0')
		return (path[s]);

	return (-1);
}
