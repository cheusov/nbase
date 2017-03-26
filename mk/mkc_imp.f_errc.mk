# Copyright (c) 2014 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
############################################################
.ifndef _MKC_IMP_F_ERR_MK
_MKC_IMP_F_ERR_MK := 1

.include <mkc_imp.f_progname.mk>

.include <mkc_imp.conf-cleanup.mk>

MKC_CHECK_HEADERS       +=	err.h
MKC_CHECK_FUNCS4        +=	err:err.h

MKC_CHECK_PROTOTYPES    +=	verrc
MKC_PROTOTYPE_FUNC.verrc =	void verrc(int, int code, const char *, va_list)
MKC_PROTOTYPE_HEADERS.verrc =	err.h

MKC_CHECK_FUNCLIBS      +=	errc verrc

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
.if ${HAVE_FUNCLIB.errc:U0} && ${HAVE_FUNCLIB.verrc:U0}
CFLAGS +=	-DMKC_ERRC_IS_FINE
.else
MKC_SRCS +=	mkc_errc.c mkc_verrc.c
.endif
.endif

.include <mkc_imp.conf-final.mk>

.endif #_MKC_IMP_F_ERR_MK
