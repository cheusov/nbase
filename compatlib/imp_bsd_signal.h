/*
 * Copyright 2019 Aleksey Cheusov <vle@gmx.net>
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL
 * THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef _IMP_BSD_SIGNAL_H_
#define _IMP_BSD_SIGNAL_H_

#ifndef _IMP_CHECK_BSD_SIGNAL
# error "Missing MKC_FEATURES += bsd_signal"
#endif

#include <signal.h>

#if !defined(HAVE_FUNC1_SIGMASK_SIGNAL_H)
#define sigmask(n)        (int)(1U << ((n) - 1))
#endif

#if !defined(HAVE_FUNC1_SIGBLOCK_SIGNAL_H)
int sigblock(int);
#endif

#if !defined(HAVE_FUNC1_SIGSETMASK_SIGNAL_H)
int sigsetmask(int);
#endif

#if !defined(HAVE_FUNC0_SIGGETMASK_SIGNAL_H)
int siggetmask(void);
#endif

#endif // _IMP_BSD_SIGNAL_H_
