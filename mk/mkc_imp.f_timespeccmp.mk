# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
.ifndef _MKC_IMP_F_TIMESPECCMP_MK
_MKC_IMP_F_TIMESPECCMP_MK := 1

MKC_CHECK_DEFINES  +=	timespeccmp:time.h timespeccmp:sys/time.h

.include <mkc_imp.conf-cleanup.mk>

CPPFLAGS +=	-D_MKC_CHECK_TIMESPECCMP

.endif #_MKC_IMP_F_TIMESPECCMP_MK
