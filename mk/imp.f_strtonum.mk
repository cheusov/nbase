# Copyright (c) 2021 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_STRTONUM_MK
_IMP_F_STRTONUM_MK := 1

MKC_CHECK_FUNCS4   +=	strtonum:limits.h,stdlib.h
MKC_CHECK_FUNCLIBS +=	strtonum

.include "../mk/imp.f_strtonum.mk"

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.strtonum:U} != 1
MKC_SRCS +=	imp_strtonum.c
.endif

CPPFLAGS +=	-D_IMP_CHECK_STRTONUM

.endif #_IMP_F_STRTONUM_MK
