# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_FUNOPEN_MK
_MKC_IMP_F_FUNOPEN_MK := 1

MKC_CHECK_FUNCS3   =	fopencookie:stdio.h
MKC_CHECK_FUNCS5   =	funopen:stdio.h
MKC_CHECK_FUNCLIBS +=	funopen

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.funopen:U} != 1
SRCS +=	mkc_funopen.c
. endif
.endif

.endif #_MKC_IMP_F_FUNOPEN_MK
