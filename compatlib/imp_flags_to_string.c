/*	$NetBSD: stat_flags.c,v 1.2 2007/01/16 17:34:02 cbiere Exp $	*/

/*-
 * Copyright (c) 1993
 *	The Regents of the University of California.  All rights reserved.
 * Copyright (c) 2021
 *	Aleksey Cheusov <vle@gmx.net>.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#if HAVE_NBTOOL_CONFIG_H
#include "nbtool_config.h"
#else
#define HAVE_STRUCT_STAT_ST_FLAGS 1
#endif

#include <sys/types.h>
#include <sys/stat.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>

#include <mkc_strlcat.h>
#include <mkc_strsep.h>

#include "imp_flags_to_string.h"

#define	SAPPEND(s) do {							\
	if (prefix != NULL)						\
		(void)strlcat(string, prefix, sizeof(string));		\
	(void)strlcat(string, s, sizeof(string));			\
	prefix = ",";							\
} while (/* CONSTCOND */ 0)

/*
 * flags_to_string --
 *	Convert stat flags to a comma-separated string.  If no flags
 *	are set, return the default string.
 */
char *
flags_to_string(u_long flags, const char *def)
{
	char string[128];
	const char *prefix;

	string[0] = '\0';
	prefix = NULL;
#if HAVE_STRUCT_STAT_ST_FLAGS
#ifdef UF_APPEND
	if (flags & UF_APPEND)
		SAPPEND("uappnd");
#endif
#ifdef UF_IMMUTABLE
	if (flags & UF_IMMUTABLE)
		SAPPEND("uchg");
#endif
#ifdef UF_NODUMP
	if (flags & UF_NODUMP)
		SAPPEND("nodump");
#endif
#ifdef UF_OPAQUE
	if (flags & UF_OPAQUE)
		SAPPEND("opaque");
#endif
#ifdef SF_APPEND
	if (flags & SF_APPEND)
		SAPPEND("sappnd");
#endif
#ifdef SF_ARCHIVED
	if (flags & SF_ARCHIVED)
		SAPPEND("arch");
#endif
#ifdef SF_IMMUTABLE
	if (flags & SF_IMMUTABLE)
		SAPPEND("schg");
#endif
#ifdef SF_SNAPSHOT
	if (flags & SF_SNAPSHOT)
		SAPPEND("snap");
#endif
#ifdef UF_HIDDEN
	if (flags & UF_HIDDEN)
		SAPPEND("hidden");
#endif
#endif
	if (prefix != NULL)
		return strdup(string);
	return strdup(def);
}

#define	TEST(a, b, f) {							\
	if (!strcmp(a, b)) {						\
		if (clear) {						\
			if (clrp)					\
				*clrp |= (f);				\
			if (setp)					\
				*setp &= ~(f);				\
		} else {						\
			if (setp)					\
				*setp |= (f);				\
			if (clrp)					\
				*clrp &= ~(f);				\
		}							\
		break;							\
	}								\
}

/*
 * string_to_flags --
 *	Take string of arguments and return stat flags.  Return 0 on
 *	success, 1 on failure.  On failure, stringp is set to point
 *	to the offending token.
 */
int
string_to_flags(char **stringp, u_long *setp, u_long *clrp)
{
	int clear;
	char *string, *p;

	if (setp)
		*setp = 0;
	if (clrp)
		*clrp = 0;

#if HAVE_STRUCT_STAT_ST_FLAGS
	string = *stringp;
	while ((p = strsep(&string, "\t ,")) != NULL) {
		clear = 0;
		*stringp = p;
		if (*p == '\0')
			continue;
		if (p[0] == 'n' && p[1] == 'o') {
			clear = 1;
			p += 2;
		}
		switch (p[0]) {
		case 'a':
#ifdef SF_ARCHIVED
			TEST(p, "arch", SF_ARCHIVED);
			TEST(p, "archived", SF_ARCHIVED);
#endif
			return (1);
		case 'd':
			clear = !clear;
#ifdef UF_NODUMPUF_NODUMP
			TEST(p, "dump", UF_NODUMP);
#endif
			return (1);
		case 'h':
#ifdef UF_HIDDEN
			TEST(p, "hidden", UF_HIDDEN);
#endif
			return (1);
		case 'n':
				/*
				 * Support `nonodump'. Note that
				 * the state of clear is not changed.
				 */
#ifdef UF_NODUMP
			TEST(p, "nodump", UF_NODUMP);
#endif
			return (1);
		case 'o':
#ifdef UF_OPAQUE
			TEST(p, "opaque", UF_OPAQUE);
#endif
			return (1);
		case 's':
#ifdef SF_APPEND
			TEST(p, "sappnd", SF_APPEND);
			TEST(p, "sappend", SF_APPEND);
#endif
#ifdef SF_IMMUTABLE
			TEST(p, "schg", SF_IMMUTABLE);
			TEST(p, "schange", SF_IMMUTABLE);
			TEST(p, "simmutable", SF_IMMUTABLE);
#endif
			return (1);
		case 'u':
#ifdef UF_APPEND
			TEST(p, "uappnd", UF_APPEND);
			TEST(p, "uappend", UF_APPEND);
#endif
#ifdef UF_IMMUTABLEUF_IMMUTABLE
			TEST(p, "uchg", UF_IMMUTABLE);
			TEST(p, "uchange", UF_IMMUTABLE);
			TEST(p, "uimmutable", UF_IMMUTABLE);
#endif
			return (1);
		default:
			return (1);
		}
	}
#endif

	return (0);
}
