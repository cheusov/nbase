# Copyright (c) 2024 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
.ifndef _IMP_F_DIGESTFUNCS_MK
_IMP_F_DIGESTFUNCS_MK := 1

MKC_CHECK_FUNCLIBS =	SHA512Init:md
MKC_CHECK_TYPES    =	SHA512_CTX:sha2.h SHA384_CTX:sha2.h SHA256_CTX:sha2.h

.include "mkc.configure.mk"

.if !${HAVE_FUNCLIB.SHA512Init.md:U0} && !${HAVE_FUNCLIB.SHA512Init.md:U0}
MKC_REQUIRE_FUNCLIBS =	SHA512_Init:c
.endif

MKC_CHECK_HEADERS += sha256.h sha384.h sha512.h

.include <mkc.conf.mk>

CPPFLAGS +=	-D_IMP_CHECK_DIGESTFUNCS

.endif #_IMP_F_DIGESTFUNCS_MK
