# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_BSD_GETOPT_MK
_MKC_IMP_F_BSD_GETOPT_MK := 1

MKC_CHECK_DEFINES   =	__GLIBC__:string.h

.include <mkc_imp.conf-cleanup.mk>

.if ${HAVE_DEFINE.__GLIBC__.string_h:U} == 1
. if ${.CURDIR:T} == "compatlib"
SRCS     +=	mkc_bsd_getopt.c
. endif
.else
CPPFLAGS +=	-DHAVE_POSIX_GETOPT=1
.endif

CPPFLAGS +=	-D_MKC_CHECK_BSD_GETOPT

.endif #_MKC_IMP_F_BSD_GETOPT_MK
