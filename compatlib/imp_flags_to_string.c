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

struct flag_name {
	const char *name;
	u_long flag;
};

static const struct flag_name flag_names[] = {
#ifdef UF_APPEND
	{ "uappnd", UF_APPEND },
	{ "uappend", UF_APPEND },
#endif
#ifdef UF_IMMUTABLE
	{ "uchg", UF_IMMUTABLE },
	{ "uchange", UF_IMMUTABLE },
	{ "uimmutable", UF_IMMUTABLE },
#endif
#ifdef UF_NODUMP
	{ "nodump", UF_NODUMP },
#endif
#ifdef UF_OPAQUE
	{ "opaque", UF_OPAQUE },
#endif
#ifdef SF_APPEND
	{ "sappnd", SF_APPEND },
	{ "sappend", SF_APPEND },
#endif
#ifdef SF_ARCHIVED
	{ "arch", SF_ARCHIVED },
	{ "archived", SF_ARCHIVED },
#endif
#ifdef SF_IMMUTABLE
	{ "schg", SF_IMMUTABLE },
	{ "schange", SF_IMMUTABLE },
	{ "simmutable", SF_IMMUTABLE },
#endif
#ifdef SF_SNAPSHOT
	{ "snap", SF_SNAPSHOT },
	{ "snapshot", SF_SNAPSHOT },
#endif
#ifdef SF_NOUNLINK
	{ "sunlnk", SF_NOUNLINK },
	{ "sunlink", SF_NOUNLINK },
#endif
#ifdef UF_NOUNLINK
	{ "uunlnk", UF_NOUNLINK },
	{ "uunlink", UF_NOUNLINK },
#endif
#ifdef UF_OFFLINE
	{ "offline", UF_OFFLINE },
	{ "uoffline", UF_OFFLINE },
#endif
#ifdef UF_READONLY
	{ "urdonly", UF_READONLY },
	{ "rdonly", UF_READONLY },
	{ "readonly", UF_READONLY },
#endif
#ifdef UF_REPARSE
	{ "ureparse", UF_REPARSE },
	{ "reparse", UF_REPARSE },
#endif
#ifdef UF_SPARSE
	{ "usparse", UF_SPARSE },
	{ "sparse", UF_SPARSE },
#endif
#ifdef UF_SYSTEM
	{ "usystem", UF_SYSTEM },
	{ "system", UF_SYSTEM },
#endif
#ifdef UF_ARCHIVED
	{ "uarch", UF_ARCHIVED },
	{ "uarchived", UF_ARCHIVED },
#endif
#ifdef UF_HIDDEN
	{ "hidden", UF_HIDDEN },
	{ "uhidden", UF_HIDDEN },
#endif
};

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
	size_t i;
	u_long prev_flag = 0;
	u_long curr_flag;

	string[0] = '\0';
	prefix = NULL;
	for (i = 0 ; i < sizeof(flag_names)/sizeof(flag_names[0]); ++i) {
		curr_flag = flag_names[i].flag;
		if (curr_flag != prev_flag && (flags & curr_flag) != 0)
			SAPPEND(flag_names[i].name);
		prev_flag = curr_flag;
	}
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
		matched = 1;						\
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
	size_t i;
	int matched;

	if (setp)
		*setp = 0;
	if (clrp)
		*clrp = 0;

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
		matched = 0;
		for (i = 0 ; i < sizeof(flag_names)/sizeof(flag_names[0]); ++i) {
			TEST(p, flag_names[i].name, flag_names[i].flag);
		}
#ifdef UF_NODUMP
		if (p[0] == 'd') {
			clear = !clear;
			TEST(p, "dump", UF_NODUMP);
		}
#endif
		if (!matched)
			return (1);
	}

	return (0);
}
