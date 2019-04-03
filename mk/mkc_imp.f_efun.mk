# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_EFUN_MK
_MKC_IMP_EFUN_MK := 1

MKC_FEATURES +=	strlcpy strlcat fgetln err

MKC_CHECK_FUNCS2   +=	ecalloc:util.h
MKC_CHECK_FUNCLIBS +=	ecalloc:util

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.ecalloc:U} != 1 && ${HAVE_FUNCLIB.ecalloc.util:U} != 1
. if ${.CURDIR:T} == "compatlib"
SRCS +=	${SRCDIR_compatlib}/mkc_efun.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_EFUN

.endif #_MKC_IMP_EFUN_MK
