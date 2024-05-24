# Copyright (c) 2024 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_SIGNALNAME_MK
_IMP_F_SIGNALNAME_MK := 1

MKC_CHECK_FUNCS1  =	signalname:signal.h signalnumber:signal.h \
	signalnext:signal.h

MKC_CHECK_VARS   +=	sys_siglist:signal.h sys_signame:signal.h

.include <mkc.conf.mk>

.if ${HAVE_FUNC1.signalname.signal_h:U} != 1 || ${HAVE_FUNC1.signalnumber.signal_h:U} != 1 || \
	${HAVE_FUNC0.signalnext.signal_h:U} != 1
MKC_SRCS +=	imp_signalname.c
.endif

CPPFLAGS +=	-D_IMP_CHECK_SIGNALNAME

.endif #_IMP_F_SIGNALNAME_MK
