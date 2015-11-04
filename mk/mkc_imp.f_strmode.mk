# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_STRMODE_MK
_MKC_IMP_F_STRMODE_MK := 1

MKC_CHECK_FUNCS2   =	strmode:unistd.h
MKC_CHECK_FUNCLIBS =	strmode

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.strmode:U} != 1
SRCS +=	mkc_strmode.c
. endif
.endif

.endif #_MKC_IMP_F_STRMODE_MK
