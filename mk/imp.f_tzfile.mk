# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
.ifndef _IMP_F_TZFILE_MK
_IMP_F_TZFILE_MK := 1

MKC_CHECK_HEADERS  +=	tzfile.h

.include <mkc.conf.mk>

CPPFLAGS +=	-D_IMP_CHECK_TZFILE

.endif #_IMP_F_TZFILE_MK
