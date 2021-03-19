# Copyright (c) 2016 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_PARSEDATE_MK
_MKC_IMP_F_PARSEDATE_MK := 1

MKC_CHECK_HEADERS  +=	util.h
MKC_CHECK_FUNCS3   +=	parsedate:util.h
MKC_CHECK_FUNCLIBS +=	parsedate:util

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.parsedate:U} != 1 && ${HAVE_FUNCLIB.parsedate.util:U} != 1
MKC_SRCS +=	mkc_parsedate.y
.endif

CPPFLAGS +=	-D_MKC_CHECK_PARSEDATE

.endif #_MKC_IMP_F_PARSEDATE_MK
