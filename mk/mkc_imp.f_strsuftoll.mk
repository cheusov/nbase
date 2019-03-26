# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_STRSUFTOLL_MK
_MKC_IMP_F_STRSUFTOLL_MK := 1

MKC_CHECK_FUNCS4   =	strsuftoll:stdlib.h
MKC_CHECK_FUNCS6   =	strsuftollx:stdlib.h
MKC_CHECK_FUNCLIBS +=	strsuftoll strsuftollx

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.strsuftoll:U} != 1 || ${HAVE_FUNCLIB.strsuftollx:U} != 1
SRCS +=	mkc_strsuftoll.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_STRSUFTOLL

.endif #_MKC_IMP_F_STRSUFTOLL_MK
