# Copyright (c) 2016 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_PARSEDATE_MK
_MKC_IMP_F_PARSEDATE_MK := 1

MKC_CHECK_FUNCS3   =	parsedate:util.h
MKC_CHECK_FUNCLIBS =	parsedate:util

.include <mkc_imp.conf-cleanup.mk>

. if ${HAVE_FUNCLIB.parsedate:U} == 0 && \
    ${.CURDIR:T} == "compatlib"
SRCS +=	${SRCDIR_compatlib}/mkc_parsedate.y
. endif

CPPFLAGS +=	-D_MKC_CHECK_PARSEDATE

.endif #_MKC_IMP_F_PARSEDATE_MK
