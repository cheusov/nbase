# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_VIS_MK
_MKC_IMP_F_VIS_MK := 1

MKC_CHECK_FUNCS4   =	vis:vis.h strnvis:vis.h strvisx:vis.h
MKC_CHECK_FUNCS3   =	strvis:vis.h

MKC_CHECK_HEADERS  =	vis.h

MKC_CHECK_FUNCLIBS +=	vis strnvis strvisx strvis

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.vis:U} != 1 || ${HAVE_FUNCLIB.strnvis:U} != 1 || \
     ${HAVE_FUNCLIB.strvisx:U} != 1 || ${HAVE_FUNCLIB.strvis:U} != 1
SRCS +=	mkc_vis.c mkc_unvis.c
. endif
.endif

.endif #_MKC_IMP_F_VIS_MK
