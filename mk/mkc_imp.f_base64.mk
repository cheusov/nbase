# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_BASE64_MK
_MKC_IMP_F_BASE64_MK := 1

old :=			${MKC_COMMON_HEADERS}
MKC_COMMON_HEADERS =	netinet/in.h # for OpenBSD 5.3

MKC_CHECK_FUNCS4   =	b64_ntop:resolv.h
MKC_CHECK_FUNCS3   =	b64_pton:resolv.h

MKC_CHECK_FUNCLIBS +=	main:resolv

.include <mkc_imp.conf-cleanup.mk>

.if ${HAVE_FUNCLIB.main.resolv:U0}
LDADD +=	-lresolv
.endif

MKC_COMMON_HEADERS :=   ${old}
.undef old

.if ${HAVE_FUNC4.b64_ntop.resolv_h:U} == 1 && ${HAVE_FUNC3.b64_pton.resolv_h:U} == 1
CPPFLAGS += -DHAVE_B64_FUNCS
.elif ${.CURDIR:T} == "compatlib"
SRCS +=	mkc_base64.c
.endif

CPPFLAGS +=	-D_MKC_CHECK_BASE64

.endif #_MKC_IMP_F_BASE64_MK
