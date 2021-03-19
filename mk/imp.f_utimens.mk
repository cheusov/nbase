# Copyright (c) 2021 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_UTIMENS_MK
_MKC_IMP_F_UTIMENS_MK := 1

MKC_CHECK_FUNCS2   +=	utimens:fcntl.h,sys/stat.h lutimens:fcntl.h,sys/stat.h
MKC_CHECK_FUNCLIBS +=	utimens lutimens

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.utimens:U} != 1 || ${HAVE_FUNCLIB.lutimens:U} != 1
. if ${.CURDIR:T} == "compatlib"
SRCS +=	mkc_utimens.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_UTIMENS

.endif # _MKC_IMP_F_UTIMENS_MK
