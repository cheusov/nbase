# Copyright (c) 2015-2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_STRMODE_MK
_IMP_F_STRMODE_MK := 1

MKC_CHECK_FUNCS2   +=	strmode:unistd.h strmode:string.h
MKC_CHECK_FUNCLIBS +=	strmode

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.strmode:U} != 1
MKC_SRCS +=	imp_strmode.c
.endif

CPPFLAGS +=	-D_IMP_CHECK_STRMODE

.endif #_IMP_F_STRMODE_MK
