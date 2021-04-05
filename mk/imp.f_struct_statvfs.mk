# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_STRUCT_STATVFS_MK
_IMP_F_STRUCT_STATVFS_MK := 1

MKC_CHECK_MEMBERS +=	\
   struct-statvfs.f_mntfromname:sys/statvfs.h \
   struct-statvfs.f_fstypename:sys/statvfs.h

.include <mkc.conf.mk>

CPPFLAGS +=	-D_IMP_CHECK_STRUCT_STATVFS

.endif #_IMP_F_STRUCT_STATVFS_MK
