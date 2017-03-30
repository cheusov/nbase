/*
 Copyright (c) 2015 by Aleksey Cheusov

 See LICENSE file in the distribution.
*/

#ifndef _MKC_SYS_SIGNAME_H_
#define _MKC_SYS_SIGNAME_H_

#include <signal.h>

#ifndef HAVE_VAR_SYS_SIGNAME_SIGNAL_H
extern const int sys_nsig;
extern const char * * sys_signame__ (void);
#define sys_signame sys_signame__()
#endif

#endif // _MKC_SYS_SIGNAME_H_
