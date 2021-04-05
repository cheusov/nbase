# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_MACRO_MK
_IMP_F_MACRO_MK := 1

MKC_CHECK_TYPES         +=	u_quad_t:sys/types.h
MKC_CHECK_HEADER_FILES  +=	sys/sysmacros.h sys/cdefs.h paths.h

CPPFLAGS +=	-D_IMP_CHECK_MACRO

.include <mkc.conf.mk>

.endif #_IMP_F_MACRO_MK
