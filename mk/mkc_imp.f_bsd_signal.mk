# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_BSD_SIGNAL_MK
_MKC_IMP_F_BSD_SIGNAL_MK := 1

MKC_CHECK_FUNCS1   +=	sigblock:signal.h sigsetmask:signal.h sigmask:signal.h
MKC_CHECK_FUNCS0   +=	siggetmask:signal.h
MKC_FUNC_OR_DEFINE.siggetmask =	yes
MKC_FUNC_OR_DEFINE.sigsetmask =	yes
MKC_FUNC_OR_DEFINE.sigblock   =	yes
MKC_FUNC_OR_DEFINE.sigmask    =	yes

.include <mkc.conf.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNC1.sigblock.signal_h:U} != 1 || ${HAVE_FUNC1.sigsetmask.signal_h:U} != 1 || ${HAVE_FUNC0.siggetmask.signal_h:U} != 1
SRCS +=	mkc_bsd_signal.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_BSD_SIGNAL

.endif #_MKC_IMP_F_BSD_SIGNAL_MK
