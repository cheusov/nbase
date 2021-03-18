# Copyright (c) 2021 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_F_FPURGE_MK
_MKC_IMP_F_FPURGE_MK := 1

MKC_CHECK_FUNCS1 +=	fpurge:stdio.h
MKC_CHECK_FUNCS1 +=	__fpurge:stdio.h,stdio_ext.h

CPPFLAGS +=	-D_MKC_CHECK_FPURGE

.endif #_MKC_IMP_F_FPURGE_MK
