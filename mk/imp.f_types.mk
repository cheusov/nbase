# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_TYPES_MK
_MKC_IMP_F_TYPES_MK := 1

MKC_CHECK_TYPES +=	u_long:sys/types.h blkcnt_t:sys/stat.h blksize_t:sys/stat.h

CPPFLAGS +=	-D_MKC_CHECK_TYPES

.endif #_MKC_IMP_F_TYPES_MK
