# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_STRUCT_STATVFS_MK
_MKC_IMP_F_STRUCT_STATVFS_MK := 1

MKC_CHECK_MEMBERS +=	\
   struct-statvfs.f_mntfromname:sys/statvfs.h \
   struct-statvfs.f_fstypename:sys/statvfs.h

.include <mkc.conf.mk>

CPPFLAGS +=	-D_MKC_CHECK_STRUCT_STATVFS

.endif #_MKC_IMP_F_STRUCT_STATVFS_MK
