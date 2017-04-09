# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_BSD_GETOPT_MK
_MKC_IMP_F_BSD_GETOPT_MK := 1

MKC_CHECK_DEFINES   =	__GLIBC__:string.h

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_DEFINE.__GLIBC__.string_h:U} == 1
SRCS     +=	mkc_bsd_getopt.c
.else
CPPFLAGS +=	-DHAVE_POSIX_GETOPT=1
. endif
.endif

.endif #_MKC_IMP_F_BSD_GETOPT_MK
