# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_FGETWLN_MK
_MKC_IMP_F_FGETWLN_MK := 1

MKC_FEATURES += reallocarray

MKC_CHECK_FUNCLIBS +=	fgetwln
MKC_CHECK_FUNCS2   +=	fgetwln:stdio.h

.include <mkc.conf.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.fgetwln:U} != 1
SRCS +=	imp_fgetwln.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_FGETWLN

.endif #_MKC_IMP_F_FGETWLN_MK
