/********************************************************************\
 Copyright (c) 2014 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _MKC_ERR_H_
#define _MKC_ERR_H_

#include <stdarg.h>

#if HAVE_HEADER_ERR_H
#include <err.h>
#endif

#ifndef MKC_ERRC_IS_FINE

#  if !HAVE_FUNC4_ERRC_ERR_H
void errc(int status, int code, const char *fmt, ...);
#  endif

#  if !HAVE_PROTOTYPE_VERRC
void verrc(int status, int code, const char *fmt, va_list args);
#  endif

#endif // MKC_ERRC_IS_FINE

#endif // _MKC_ERR_H_
