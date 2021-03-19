# Copyright (c) 2021 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_UTIMENS_MK
_MKC_IMP_F_UTIMENS_MK := 1

MKC_CHECK_FUNCS2   +=	utimens:fcntl.h,sys/stat.h lutimens:fcntl.h,sys/stat.h

.include <mkc.conf.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNC1.utimens.sys_stat_h:U} != 1 || ${HAVE_FUNC1.lutimens.sys_stat_h:U} == 1
SRCS +=	mkc_utimens.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_UTIMENS

.endif #_MKC_IMP_F_UTIMENS_MK
