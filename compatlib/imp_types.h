/********************************************************************\
 Copyright (c) 2019 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _IMP_TYPES_H_
#define _IMP_TYPES_H_

#ifndef _IMP_CHECK_TYPES
# error "Missing MKC_FEATURES += types"
#endif

#include "sys/types.h"

#if !HAVE_TYPE_U_LONG_SYS_TYPES_H
typedef unsigned long u_long;
#endif

#if !HAVE_TYPE_BLKSIZE_T_SYS_STAT_H
typedef unsigned int blksize_t;
#endif

#if !HAVE_TYPE_BLKCNT_T_SYS_STAT_H
typedef unsigned int blkcnt_t;
#endif

#endif // _IMP_TYPES_H_
