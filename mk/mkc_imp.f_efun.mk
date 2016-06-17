# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_EFUN_MK
_MKC_IMP_EFUN_MK := 1

MKC_FEATURES =	strlcpy strlcat fgetln err

.include <mkc.configure.mk>

MKC_CHECK_FUNCS2   =	ecalloc:util.h
MKC_CHECK_FUNCLIBS =	ecalloc:util

.include <mkc_imp.conf-cleanup.mk>

.if ${HAVE_FUNCLIB.ecalloc:U} != 1
. if ${.CURDIR:T} == "compatlib"
SRCS +=	mkc_efun.c
. endif
.endif

.endif #_MKC_IMP_EFUN_MK
