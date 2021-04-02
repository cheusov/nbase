/********************************************************************\
 Copyright (c) 2017 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _MKC_FGETWLN_H_
#define _MKC_FGETWLN_H_

#ifndef _MKC_CHECK_FGETWLN
# error "Missing MKC_FEATURES += fgetwln"
#endif

#include <wchar.h>
#include <stdio.h>

#ifndef HAVE_FUNC2_FGETWLN_STDIO_H
wchar_t *fgetwln(FILE *stream, size_t *len);
#endif

#endif // _MKC_FGETWLN_H_
