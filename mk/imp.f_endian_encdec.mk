# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
.ifndef _MKC_IMP_F_ENDIAN_ENCDEC_MK
_MKC_IMP_F_ENDIAN_ENCDEC_MK := 1

funcs1 =	be16dec be32dec be64dec le16dec le32dec le64dec
funcs2 =	be16enc be32enc be64enc le16enc le32enc le64enc

MKC_CHECK_HEADERS  +=	sys/endian.h
MKC_CHECK_FUNCS1   +=	${funcs1:S|$|:sys/endian.h|}
MKC_CHECK_FUNCS2   +=	${funcs2:S|$|:sys/endian.h|}
MKC_CHECK_DEFINES  +=	${MKC_CHECK_FUNCS1} ${MKC_CHECK_FUNCS2}

.include <mkc.conf.mk>

.undef funcs1
.undef funcs2

.if ${HAVE_DEFINE.be16dec.sys_endian_h:U} != 1 && ${HAVE_FUNC1.be16dec.sys_endian_h:U} != 1 || \
     ${HAVE_DEFINE.be16enc.sys_endian_h:U} != 1 && ${HAVE_FUNC2.be16enc.sys_endian_h:U} != 1 || \
     ${HAVE_DEFINE.be32dec.sys_endian_h:U} != 1 && ${HAVE_FUNC1.be32dec.sys_endian_h:U} != 1 || \
     ${HAVE_DEFINE.be32enc.sys_endian_h:U} != 1 && ${HAVE_FUNC2.be32enc.sys_endian_h:U} != 1 || \
     ${HAVE_DEFINE.be64dec.sys_endian_h:U} != 1 && ${HAVE_FUNC1.be64dec.sys_endian_h:U} != 1 || \
     ${HAVE_DEFINE.be64enc.sys_endian_h:U} != 1 && ${HAVE_FUNC2.be64enc.sys_endian_h:U} != 1 || \
     ${HAVE_DEFINE.le16dec.sys_endian_h:U} != 1 && ${HAVE_FUNC1.le16dec.sys_endian_h:U} != 1 || \
     ${HAVE_DEFINE.le16enc.sys_endian_h:U} != 1 && ${HAVE_FUNC2.le16enc.sys_endian_h:U} != 1 || \
     ${HAVE_DEFINE.le32dec.sys_endian_h:U} != 1 && ${HAVE_FUNC1.le32dec.sys_endian_h:U} != 1 || \
     ${HAVE_DEFINE.le32enc.sys_endian_h:U} != 1 && ${HAVE_FUNC2.le32enc.sys_endian_h:U} != 1 || \
     ${HAVE_DEFINE.le64dec.sys_endian_h:U} != 1 && ${HAVE_FUNC1.le64dec.sys_endian_h:U} != 1 || \
     ${HAVE_DEFINE.le64enc.sys_endian_h:U} != 1 && ${HAVE_FUNC2.le64enc.sys_endian_h:U} != 1
MKC_SRCS +=	mkc_endian_encdec.c
.endif

CPPFLAGS +=	-D_MKC_CHECK_ENDIAN_ENCDEC

.endif #_MKC_IMP_F_ENDIAN_ENCDEC_MK
