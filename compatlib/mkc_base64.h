/********************************************************************\
 Copyright (c) 2017 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _MKC_BASE64_H_
#define _MKC_BASE64_H_

#if HAVE_B64_FUNCS
#include <resolv.h>
#else
int b64_ntop(u_char const *, size_t, char *, size_t);
int b64_pton(u_char const *, size_t, char *, size_t);
#endif /* HAVE_B64_FUNCS */

#endif /* _MKC_BASE64_H_ */
