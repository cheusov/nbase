/********************************************************************\
 Copyright (c) 2024 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _IMP_DIGESTFUNCS_H_
#define _IMP_DIGESTFUNCS_H_

#ifndef _IMP_CHECK_DIGESTFUNCS
# error "Missing MKC_FEATURES += digestfuncs"
#endif

#include <sha2.h>

#if HAVE_HEADER_SHA256_H
# include <sha256.h>
#endif
#if HAVE_HEADER_SHA384_H
# include <sha384.h>
#endif
#if HAVE_HEADER_SHA512_H
# include <sha512.h>
#endif

#endif // _IMP_DIGESTFUNCS_H_
