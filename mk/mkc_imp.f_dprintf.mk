# Copyright (c) 2018 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_DPRINTF_MK
_MKC_IMP_F_DPRINTF_MK := 1

MKC_CHECK_FUNCLIBS +=	dprintf vdprintf
MKC_CHECK_FUNCS3   =	dprintf:stdio.h
MKC_CHECK_FUNCS4   =	vdprintf:stdio.h

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.dprintf:U} != 1 || ${HAVE_FUNCLIB.vdprintf:U} != 1
SRCS +=	mkc_dprintf.c
. endif
.endif

.endif #_MKC_IMP_F_DPRINTF_MK
