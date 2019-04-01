# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_ARC4RANDOM_MK
_MKC_IMP_F_ARC4RANDOM_MK := 1

MKC_CHECK_FUNCS0 +=	arc4random:stdlib.h

.include <mkc.conf.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNC0.arc4random.stdlib_h:U} != 1
SRCS +=	mkc_arc4random.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_ARC4RANDOM

.endif #_MKC_IMP_F_ARC4RANDOM_MK
