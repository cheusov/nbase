# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_GETBSIZE_MK
_MKC_IMP_F_GETBSIZE_MK := 1

MKC_CHECK_FUNCS2   +=	getbsize:stdlib.h
MKC_CHECK_FUNCLIBS +=	getbsize
MKC_FEATURES       +=	warn

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.getbsize:U} != 1
MKC_SRCS +=	imp_getbsize.c
.endif

CPPFLAGS +=	-D_MKC_CHECK_GETBSIZE

.endif #_MKC_IMP_F_GETBSIZE_MK
