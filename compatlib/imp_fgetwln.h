/********************************************************************\
 Copyright (c) 2017 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _IMP_FGETWLN_H_
#define _IMP_FGETWLN_H_

#ifndef _IMP_CHECK_FGETWLN
# error "Missing MKC_FEATURES += fgetwln"
#endif

#include <wchar.h>
#include <stdio.h>

#ifndef HAVE_FUNC2_FGETWLN_STDIO_H
wchar_t *fgetwln(FILE *stream, size_t *len);
#endif

#endif // _IMP_FGETWLN_H_
