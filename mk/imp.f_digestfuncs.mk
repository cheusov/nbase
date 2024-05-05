# Copyright (c) 2024 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
.ifndef _IMP_F_DIGESTFUNCS_MK
_IMP_F_DIGESTFUNCS_MK := 1

MKC_REQUIRE_FUNCLIBS =	SHA512Init:md

MKC_CHECK_HEADERS += sha256.h sha384.h sha512.h

.include <mkc.conf.mk>

CPPFLAGS +=	-D_IMP_CHECK_DIGESTFUNCS

.endif #_IMP_F_DIGESTFUNCS_MK
