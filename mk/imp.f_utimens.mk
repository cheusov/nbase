# Copyright (c) 2021 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_UTIMENS_MK
_IMP_F_UTIMENS_MK := 1

MKC_CHECK_FUNCS2   +=	utimens:fcntl.h,sys/stat.h lutimens:fcntl.h,sys/stat.h
MKC_CHECK_FUNCLIBS +=	utimens lutimens

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.utimens:U} != 1 || ${HAVE_FUNCLIB.lutimens:U} != 1
#MKC_SRCS +=	imp_utimens.c # cannot be used from compatlib due to absense of utimensat(2) on Darwinn
.PATH: ../compatlib
SRCS +=	imp_utimens.c
.endif

CPPFLAGS +=	-D_IMP_CHECK_UTIMENS

.endif # _IMP_F_UTIMENS_MK
