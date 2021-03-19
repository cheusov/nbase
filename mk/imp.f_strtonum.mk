# Copyright (c) 2021 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_STRTONUM_MK
_MKC_IMP_F_STRTONUM_MK := 1

MKC_CHECK_FUNCS4   +=	strtonum:limits.h,stdlib.h
MKC_CHECK_FUNCLIBS +=	strtonum

.include "../mk/imp.f_strtonum.mk"

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.strtonum:U} != 1
. if ${.CURDIR:T} == "compatlib"
SRCS +=	mkc_strtonum.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_STRTONUM

.endif #_MKC_IMP_F_STRTONUM_MK
