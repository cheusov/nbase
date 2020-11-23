# Copyright (c) 2020 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_STRSEP_MK
_MKC_IMP_F_STRSEP_MK := 1

MKC_CHECK_FUNCLIBS +=	stresep
MKC_CHECK_FUNCS2   +=	strsep:string.h
MKC_CHECK_FUNCS3   +=	stresep:string.h
MKC_FUNC_OR_DEFINE.strsep  = yes

.include <mkc.conf.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.stresep:U} != 1
SRCS +=	mkc_strsep.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_STRSEP

.endif #_MKC_IMP_F_STRSEP_MK
