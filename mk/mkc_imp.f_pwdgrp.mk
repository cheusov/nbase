# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.
.ifndef _MKC_IMP_F_PWDGRP_MK
_MKC_IMP_F_PWDGRP_MK := 1

MKC_CHECK_FUNCS2   =	user_from_uid:pwd.h group_from_gid:grp.h
MKC_CHECK_FUNCLIBS =	user_from_uid group_from_gid

.include <mkc_imp.conf-cleanup.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.user_from_uid:U} != 1 || ${HAVE_FUNCLIB.group_from_gid:U} != 1
SRCS +=	mkc_pwdgrp.c
. endif
.endif

.endif #_MKC_IMP_F_PWDGRP_MK
