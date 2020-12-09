# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_FLAGS_TO_STRING_MK
_MKC_IMP_F_FLAGS_TO_STRING_MK := 1

MKC_CHECK_HEADER   +=	util.h
MKC_CHECK_FUNC2    +=	flags_to_string:util.h
MKC_CHECK_FUNC3    +=	string_to_flags:util.h

MKC_CHECK_FUNCLIBS +=	flags_to_string:util string_to_flags:util

.include <mkc.conf.mk>

.if ${.CURDIR:T} == "compatlib"
. if ${HAVE_FUNCLIB.flags_to_string.util:U} != 1 || \
     ${HAVE_FUNCLIB.string_to_flags.util:U} != 1
SRCS     +=	mkc_flags_to_string.c
. endif
.endif

CPPFLAGS +=	-D_MKC_CHECK_FLAGS_TO_STRING

.endif #_MKC_IMP_F_FLAGS_TO_STRING_MK
