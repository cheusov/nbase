# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
.ifndef _MKC_IMP_F_ENDIAN_ENCDEC_MK
_MKC_IMP_F_ENDIAN_ENCDEC_MK := 1

funcs1 =	be16dec be32dec be64dec le16dec le32dec le64dec
funcs2 =	be16enc be32enc be64enc le16enc le32enc le64enc

MKC_CHECK_HEADERS   =	sys/endian.h
MKC_CHECK_FUNCS1   :=	${funcs1:S|$|:sys/endian.h|}
MKC_CHECK_FUNCS2   :=	${funcs2:S|$|:sys/endian.h|}
MKC_CHECK_FUNCLIBS :=	${funcs1} ${funcs2}

.undef funcs1
.undef funcs2

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.be16dec:U} != 1 || ${HAVE_FUNCLIB.be16enc:U} != 1 || \
     ${HAVE_FUNCLIB.be32dec:U} != 1 || ${HAVE_FUNCLIB.be32enc:U} != 1 || \
     ${HAVE_FUNCLIB.be64dec:U} != 1 || ${HAVE_FUNCLIB.be64enc:U} != 1 || \
     ${HAVE_FUNCLIB.le16dec:U} != 1 || ${HAVE_FUNCLIB.le16enc:U} != 1 || \
     ${HAVE_FUNCLIB.le32dec:U} != 1 || ${HAVE_FUNCLIB.le32enc:U} != 1 || \
     ${HAVE_FUNCLIB.le64dec:U} != 1 || ${HAVE_FUNCLIB.le64enc:U} != 1
SRCS +=	mkc_endian_encdec.c
. endif
.endif

.endif #_MKC_IMP_F_ENDIAN_ENCDEC_MK
