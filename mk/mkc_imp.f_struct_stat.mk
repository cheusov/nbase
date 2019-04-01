# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_STRUCT_STAT_MK
_MKC_IMP_F_STRUCT_STAT_MK := 1

MKC_CHECK_MEMBERS += \
   struct-stat.st_atimespec:sys/stat.h \
   struct-stat.st_atime:sys/stat.h \
   struct-stat.st_atim:sys/stat.h \
   struct-stat.st_ctimespec:sys/stat.h \
   struct-stat.st_ctime:sys/stat.h \
   struct-stat.st_ctim:sys/stat.h \
   struct-stat.st_mtimespec:sys/stat.h \
   struct-stat.st_mtime:sys/stat.h \
   struct-stat.st_mtim:sys/stat.h \
   struct-stat.st_flags:sys/stat.h

.include <mkc.conf.mk>

CPPFLAGS +=	-D_MKC_CHECK_STRUCT_STAT

.endif #_MKC_IMP_F_STRUCT_STAT_MK
