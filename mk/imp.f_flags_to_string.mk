# Copyright (c) 2017 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_FLAGS_TO_STRING_MK
_IMP_F_FLAGS_TO_STRING_MK := 1

MKC_CHECK_HEADER   +=	util.h
MKC_CHECK_FUNC2    +=	flags_to_string:util.h
MKC_CHECK_FUNC3    +=	string_to_flags:util.h

MKC_CHECK_FUNCLIBS +=	flags_to_string:util string_to_flags:util

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.flags_to_string.util:U} != 1 || \
     ${HAVE_FUNCLIB.string_to_flags.util:U} != 1
MKC_SRCS     +=	imp_flags_to_string.c
.endif

CPPFLAGS +=	-D_IMP_CHECK_FLAGS_TO_STRING

.endif #_IMP_F_FLAGS_TO_STRING_MK
