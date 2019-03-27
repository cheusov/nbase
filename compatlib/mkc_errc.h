/********************************************************************\
 Copyright (c) 2017 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _MKC_ERRC_H_
#define _MKC_ERRC_H_

#ifndef _MKC_CHECK_ERRC
# error "Missing MKC_FEATURES += errc"
#endif

#include <stdarg.h>

#if HAVE_HEADER_ERR_H
#include <err.h>
#endif

#  if !HAVE_FUNC4_ERRC_ERR_H
void errc(int status, int code, const char *fmt, ...);
#  endif

#  if !HAVE_PROTOTYPE_VERRC
void verrc(int status, int code, const char *fmt, va_list args);
#  endif

#endif // _MKC_ERRC_H_
