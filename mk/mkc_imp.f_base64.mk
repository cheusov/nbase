# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_BASE64_MK
_MKC_IMP_F_BASE64_MK := 1

MKC_CHECK_FUNCS4   =	b64_ntop:resolv.h
MKC_CHECK_FUNCS3   =	b64_pton:resolv.h

MKC_CHECK_FUNCLIBS +=	b64_ntop:resolv b64_pton:resolv

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
. if ( ${HAVE_FUNCLIB.b64_ntop:U} != 1 && ${HAVE_FUNCLIB.b64_ntop.resolv:U} != 1) \
  || ( ${HAVE_FUNCLIB.b64_pton:U} != 1 && ${HAVE_FUNCLIB.b64_pton.resolv:U} != 1)
SRCS +=	mkc_base64.c
. elif ${HAVE_FUNCLIB.b64_ntop.resolv:U} != 1 || ${HAVE_FUNCLIB.b64_pton.resolv:U} != 1)
LDADD +=	-lresolv
. endif
.endif

.endif #_MKC_IMP_F_BASE64_MK
