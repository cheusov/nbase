# Copyright (c) 2015-2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
.ifndef _MKC_IMP_F_SYS_SIGNAME_MK
_MKC_IMP_F_SYS_SIGNAME_MK := 1

MKC_CHECK_VARS  +=	sys_signame:signal.h sys_nsig:signal.h

.include <mkc.conf.mk>

.if ${.CURDIR:T} == "compatlib"
.  if ${HAVE_VAR.sys_signame.signal_h:U} != 1 || ${HAVE_VAR.sys_nsig.signal_h:U} != 1
SRCS +=	mkc_sys_signame.c
.  endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_SYS_SIGNAME

.endif #_MKC_IMP_F_SYS_SIGNAME_MK
