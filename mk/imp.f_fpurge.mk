# Copyright (c) 2021 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_F_FPURGE_MK
_IMP_F_FPURGE_MK := 1

MKC_CHECK_FUNCS1 +=	fpurge:stdio.h
MKC_CHECK_FUNCS1 +=	__fpurge:stdio.h,stdio_ext.h

CPPFLAGS +=	-D_IMP_CHECK_FPURGE

.endif #_IMP_F_FPURGE_MK
