# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_FGETWLN_MK
_IMP_F_FGETWLN_MK := 1

MKC_FEATURES += reallocarray

MKC_CHECK_FUNCLIBS +=	fgetwln
MKC_CHECK_FUNCS2   +=	fgetwln:stdio.h

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.fgetwln:U} != 1
MKC_SRCS +=	imp_fgetwln.c
.endif

CPPFLAGS +=	-D_IMP_CHECK_FGETWLN

.endif #_IMP_F_FGETWLN_MK
