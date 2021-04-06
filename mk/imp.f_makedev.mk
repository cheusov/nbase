# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_MAKEDEV_MK
_IMP_F_MAKEDEV_MK := 1

MKC_CHECK_HEADERS   +=	sys/sysmacros.h

.include <mkc.conf.mk>

CPPFLAGS +=	-D_IMP_CHECK_MAKEDEV

.endif #_IMP_F_MAKEDEV_MK
