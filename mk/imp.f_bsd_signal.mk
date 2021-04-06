# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_BSD_SIGNAL_MK
_IMP_F_BSD_SIGNAL_MK := 1

MKC_CHECK_FUNCS1   +=	sigblock:signal.h sigsetmask:signal.h sigmask:signal.h
# MKC_CHECK_FUNCS0   +=	siggetmask:signal.h
MKC_FUNC_OR_DEFINE.siggetmask =	yes
MKC_FUNC_OR_DEFINE.sigsetmask =	yes
MKC_FUNC_OR_DEFINE.sigblock   =	yes
MKC_FUNC_OR_DEFINE.sigmask    =	yes

.include <mkc.conf.mk>

.if ${HAVE_FUNC1.sigblock.signal_h:U} != 1 || ${HAVE_FUNC1.sigsetmask.signal_h:U} != 1 # || ${HAVE_FUNC0.siggetmask.signal_h:U} != 1
MKC_SRCS +=	imp_bsd_signal.c
.endif

CPPFLAGS +=	-D_IMP_CHECK_BSD_SIGNAL

.endif #_IMP_F_BSD_SIGNAL_MK
