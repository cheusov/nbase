/********************************************************************\
 Copyright (c) 2019 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _IMP_MAKEDEV_H_
#define _IMP_MAKEDEV_H_

#ifndef _IMP_CHECK_MAKEDEV
# error "Missing MKC_FEATURES += makedev"
#endif

#if HAVE_HEADER_SYS_SYSMACROS_H
# include <sys/sysmacros.h>
#else
# include <sys/stat.h>
#endif

#endif // _IMP_MAKEDEV_H_
