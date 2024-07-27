# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_GETBSIZE_MK
_IMP_F_GETBSIZE_MK := 1

.include <mkc.conf.mk>

.if ${TARGET_OPSYS:U} != NetBSD
MKC_FEATURES       +=	warn
MKC_SRCS           +=	imp_getbsize.c
.endif

CPPFLAGS +=	-D_IMP_CHECK_GETBSIZE

.endif #_IMP_F_GETBSIZE_MK
