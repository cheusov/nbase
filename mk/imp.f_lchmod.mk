# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_LCHMOD_MK
_IMP_F_LCHMOD_MK := 1

MKC_CHECK_FUNCS2   +=	lchmod:sys/stat.h
MKC_CHECK_FUNCLIBS +=	lchmod
MKC_CHECK_DEFINES  +=	__GLIBC__:string.h

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.lchmod:U} != 1 || ${HAVE_DEFINE.__GLIBC__.string_h:U} == 1
MKC_SRCS +=	imp_lchmod.c
.endif

CPPFLAGS +=	-D_IMP_CHECK_LCHMOD

.endif #_IMP_F_LCHMOD_MK
