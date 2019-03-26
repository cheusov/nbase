# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_HUMANIZE_NUMBER_MK
_MKC_IMP_F_HUMANIZE_NUMBER_MK := 1

MKC_CHECK_FUNCS2   =	dehumanize_number:stdlib.h
MKC_CHECK_FUNCS6   =	humanize_number:stdlib.h
MKC_CHECK_FUNCLIBS +=	humanize_number dehumanize_number

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.humanize_number:U} != 1 || ${HAVE_FUNCLIB.dehumanize_number:U} != 1
SRCS +=	mkc_humanize_number.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_HUMANIZE_NUMBER

.endif #_MKC_IMP_F_HUMANIZE_NUMBER_MK
