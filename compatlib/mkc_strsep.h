/********************************************************************\
 Copyright (c) 2020 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _MKC_STRSEP_H_
#define _MKC_STRSEP_H_

#ifndef _MKC_CHECK_STRSEP
# error "Missing MKC_FEATURES += strsep"
#endif

#include <string.h>

#if !HAVE_FUNC2_STRSEP_STRING_H
#  define strsep(s, d) stresep((s), (d), 0)
#endif

#if !HAVE_FUNC3_STRESEP_STRING_H
char *stresep(char **stringp, const char *delim, int esc);
#endif

#endif // _MKC_STRSEP_H_
