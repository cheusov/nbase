# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
.ifndef _IMP_F_TIMECMP_MK
_IMP_F_TIMECMP_MK := 1

MKC_CHECK_MEMBERS += \
   struct-stat.st_mtimespec:sys/stat.h \
   struct-stat.st_mtime:sys/stat.h \
   struct-stat.st_mtim:sys/stat.h

.include <mkc.conf.mk>

CPPFLAGS +=	-D_IMP_CHECK_TIMECMP

.endif #_IMP_F_TIMECMP_MK
