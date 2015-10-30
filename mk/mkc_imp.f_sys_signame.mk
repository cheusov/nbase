# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
.ifndef _MKC_IMP_F_SYS_SIGNAME_MK
_MKC_IMP_F_SYS_SIGNAME_MK := 1

MKC_CHECK_VARS  +=	sys_signame:signal.h

.include <mkc_imp.conf-cleanup.mk>

.if ${HAVE_VAR.sys_signame.signal_h:U} != 1 && ${.CURDIR:T} == "compatlib"
SRCS +=	mkc_sys_signame.c
.endif

.endif #_MKC_IMP_F_SYS_SIGNAME_MK
