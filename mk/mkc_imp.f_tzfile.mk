# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
.ifndef _MKC_IMP_F_TZFILE_MK
_MKC_IMP_F_TZFILE_MK := 1

MKC_CHECK_HEADERS  +=	tzfile.h

.include <mkc.conf.mk>

CPPFLAGS +=	-D_MKC_CHECK_TZFILE

.endif #_MKC_IMP_F_TZFILE_MK
