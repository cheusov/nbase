/********************************************************************\
 Copyright (c) 2017 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _MKC_BASE64_H_
#define _MKC_BASE64_H_

#if HAVE_FUNC4_B64_NTOP_RESOLV_H && HAVE_FUNC3_B64_PTON_RESOLV_H
#include <resolv.h>
#endif

#if !HAVE_FUNC4_B64_NTOP_RESOLV_H
int b64_ntop(u_char const *, size_t, char *, size_t);
#endif

#if !HAVE_FUNC3_B64_PTON_RESOLV_H
int b64_pton(u_char const *, size_t, char *, size_t);
#endif

#endif // _MKC_BASE64_H_
