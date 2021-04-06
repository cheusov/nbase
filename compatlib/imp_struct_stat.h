/********************************************************************\
 Copyright (c) 2019 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _IMP_STRUCT_STAT_H_
#define _IMP_STRUCT_STAT_H_

#ifndef _IMP_CHECK_STRUCT_STAT
# error "Missing MKC_FEATURES += struct_stat"
#endif

#if HAVE_MEMBER_STRUCT_STAT_ST_ATIM_SYS_STAT_H
#define st_atimespec st_atim
#endif /* HAVE_STRUCT_STAT_ST_ATIM */

#if HAVE_MEMBER_STRUCT_STAT_ST_CTIM_SYS_STAT_H
#define st_ctimespec st_ctim
#endif /* HAVE_STRUCT_STAT_ST_CTIM */

#if HAVE_MEMBER_STRUCT_STAT_ST_MTIM_SYS_STAT_H
#define st_mtimespec st_mtim
#endif /* HAVE_STRUCT_STAT_ST_MTIM */

#endif /* _IMP_STRUCT_STAT_H_ */
