# Copyright (c) 2015 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_FUNOPEN_MK
_MKC_IMP_F_FUNOPEN_MK := 1

MKC_CHECK_FUNCS3   +=	fopencookie:stdio.h
MKC_CHECK_FUNCS5   +=	funopen:stdio.h
MKC_CHECK_FUNCLIBS +=	funopen

MKC_CHECK_PROTOTYPES += fopencookie
MKC_PROTOTYPE_FUNC.fopencookie = \
   FILE *fopencookie(void *cookie, const char *mode, \
      cookie_io_functions_t io_funcs)
MKC_PROTOTYPE_HEADERS.fopencookie = stdio.h

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.funopen:U} != 1
MKC_SRCS +=	imp_funopen.c
.endif

CPPFLAGS +=	-D_MKC_CHECK_FUNOPEN

.endif #_MKC_IMP_F_FUNOPEN_MK
