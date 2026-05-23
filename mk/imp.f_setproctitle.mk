# Copyright (c) 2026 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_SETPROCTITLE_MK
_IMP_F_SETPROCTITLE_MK := 1

MKC_CHECK_FUNCS1    +=	setproctitle:stdlib.h
# MKC_SOURCE_FUNCLIBS +=	setproctitle
CPPFLAGS +=	-D_IMP_CHECK_SETPROCTITLE

.endif #_IMP_F_SETPROCTITLE_MK
