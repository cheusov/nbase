/*
 Copyright (c) 2015-2017 by Aleksey Cheusov

 See LICENSE file in the distribution.
*/

#ifndef _IMP_SYS_SIGNAME_H_
#define _IMP_SYS_SIGNAME_H_

#ifndef _IMP_CHECK_SYS_SIGNAME
# error "Missing MKC_FEATURES += sys_signame"
#endif

#include <signal.h>

#if !HAVE_VAR_SYS_NSIG_SIGNAL_H
extern const int sys_nsig;
#endif

#if !HAVE_VAR_SYS_SIGNAME_SIGNAL_H
extern const char * * sys_signame__ (void);
#define sys_signame sys_signame__()
#endif

#endif // _IMP_SYS_SIGNAME_H_
