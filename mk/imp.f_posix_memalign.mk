# Copyright (c) 2024 by Aleksey Cheusov <vle@gmx.net>
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_POSIX_MEMALIGN_MK
_IMP_F_POSIX_MEMALIGN_MK := 1

MKC_CHECK_FUNCLIBS +=	posix_memalign memalign
MKC_CHECK_FUNCS2   +=	memalign:stdlib.h
MKC_CHECK_FUNCS3   +=	posix_memalign:stdlib.h

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.posix_memalign:U} != 1
MKC_SRCS +=	imp_posix_memalign.c
.endif

CPPFLAGS +=	-D_IMP_CHECK_POSIX_MEMALIGN

.endif #_IMP_F_POSIX_MEMALIGN_MK
