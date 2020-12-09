# Copyright (c) 2015-2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_STRMODE_MK
_MKC_IMP_F_STRMODE_MK := 1

MKC_CHECK_FUNCS2   +=	strmode:unistd.h strmode:string.h
MKC_CHECK_FUNCLIBS +=	strmode

.include <mkc.conf.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.strmode:U} != 1
SRCS +=	mkc_strmode.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_STRMODE

.endif #_MKC_IMP_F_STRMODE_MK
