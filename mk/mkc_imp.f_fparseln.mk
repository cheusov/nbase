# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_FPARSELN_MK
_MKC_IMP_F_FPARSELN_MK := 1

MKC_CHECK_FUNCLIBS +=	fparseln
MKC_CHECK_FUNCS5   +=	fparseln:stdio.h

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.fparseln:U} != 1
SRCS +=	mkc_fparseln.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_FPARSELN

.endif #_MKC_IMP_F_FPARSELN_MK
