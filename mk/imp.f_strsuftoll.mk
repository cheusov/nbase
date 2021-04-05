# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_STRSUFTOLL_MK
_IMP_F_STRSUFTOLL_MK := 1

MKC_CHECK_FUNCS4   +=	strsuftoll:stdlib.h
MKC_CHECK_FUNCS6   +=	strsuftollx:stdlib.h
MKC_CHECK_FUNCLIBS +=	strsuftoll strsuftollx

MKC_FEATURES       +=	err

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.strsuftoll:U} != 1 || ${HAVE_FUNCLIB.strsuftollx:U} != 1
MKC_SRCS +=	imp_strsuftoll.c
.endif

CPPFLAGS +=	-D_IMP_CHECK_STRSUFTOLL

.endif #_IMP_F_STRSUFTOLL_MK
