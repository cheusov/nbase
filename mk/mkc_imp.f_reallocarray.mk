# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_REALLOCARRAY_MK
_MKC_IMP_F_REALLOCARRAY_MK := 1

MKC_CHECK_FUNCLIBS +=	reallocarray
MKC_CHECK_FUNCS3   +=	reallocarray:stdlib.h

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.reallocarray:U} != 1
SRCS +=	mkc_reallocarray.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_REALLOCARRAY

.endif #_MKC_IMP_F_REALLOCARRAY_MK
