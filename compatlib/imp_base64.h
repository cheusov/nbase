/********************************************************************\
 Copyright (c) 2017 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _IMP_BASE64_H_
#define _IMP_BASE64_H_

#ifndef _IMP_CHECK_BASE64
# error "Missing MKC_FEATURES += base64"
#endif

#if HAVE_B64_FUNCS
#include <netinet/in.h>
#include <resolv.h>
#else
#include "imp_macro.h"
int b64_ntop(u_char const *, size_t, char *, size_t);
int b64_pton(char const *src, u_char *target, size_t targsize);
#endif /* HAVE_B64_FUNCS */

#endif /* _IMP_BASE64_H_ */
