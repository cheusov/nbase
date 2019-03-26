# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_BSWAP_MK
_MKC_IMP_F_BSWAP_MK := 1

MKC_CHECK_FUNCS1   =	bswap16:machine/bswap.h \
			bswap32:machine/bswap.h \
			bswap64:machine/bswap.h
MKC_CHECK_FUNCLIBS =	bswap16 bswap32 bswap64
MKC_CHECK_DEFINES  =	${MKC_CHECK_FUNCS1}

.include <mkc_imp.conf-cleanup.mk>

#.if ${.CURDIR:T} == "compatlib"
#. if ${HAVE_FUNCLIB.bswap:U} != 1
#SRCS +=	mkc_bswap.c
#. endif
#.endif

CPPFLAGS +=	-D_MKC_CHECK_BSWAP

.endif #_MKC_IMP_F_BSWAP_MK
