# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_GETSETMODE_MK
_IMP_GETSETMODE_MK := 1

MKC_CHECK_FUNCS1   +=	setmode:unistd.h
MKC_CHECK_FUNCS2   +=	getmode:unistd.h
MKC_CHECK_FUNCLIBS +=	setmode getmode

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.setmode:U} != 1 || ${HAVE_FUNCLIB.getmode:U} != 1
MKC_SRCS +=	imp_getsetmode.c
.endif

CPPFLAGS +=	-D_IMP_CHECK_GETSETMODE

.endif #_IMP_GETSETMODE_MK
