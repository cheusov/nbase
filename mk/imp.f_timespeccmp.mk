# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
.ifndef _IMP_F_TIMESPECCMP_MK
_IMP_F_TIMESPECCMP_MK := 1

MKC_CHECK_DEFINES  +=	timespeccmp:time.h timespeccmp:sys/time.h

.include <mkc.conf.mk>

CPPFLAGS +=	-D_IMP_CHECK_TIMESPECCMP

.endif #_IMP_F_TIMESPECCMP_MK
