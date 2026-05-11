# Copyright (c) 2026 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_BE32DEC_MK
_IMP_F_BE32DEC_MK := 1

MKC_CHECK_FUNCS1   +=	be32dec:sys/endian.h

.include <mkc.conf.mk>

CPPFLAGS +=	-D_IMP_CHECK_BE32DEC

.endif #_IMP_F_BE32DEC_MK
