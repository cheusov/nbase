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

#include "mkc_bsd_signal.h"

static int sigupdatemask(int how, int mask)
{
	int bit;
	int signal;
	sigset_t nmask, omask;
	int n;

	sigemptyset(&nmask);
	for (bit = 1, signal = 1; bit != 0; bit <<= 1, ++signal) {
		if ((mask & bit) != 0) {
			sigaddset(&nmask, signal);
		}
	}

	n = sigprocmask(how, &nmask, &omask);
	if (n)
		return (n);

	mask = 0;
	for (bit = 1, signal = 1; bit != 0; bit <<= 1, ++signal) {
		if (sigismember(&omask, signal)) {
			mask |= bit;
		}
	}

	return mask;
}

#if !defined(HAVE_FUNC1_SIGBLOCK_SIGNAL_H)
int sigblock(int mask)
{
	return sigupdatemask(SIG_BLOCK, mask);
}
#endif

#if !defined(HAVE_FUNC1_SIGSETMASK_SIGNAL_H)
int sigsetmask(int mask)
{
	return sigupdatemask(SIG_SETMASK, mask);
}
#endif

#if !defined(HAVE_FUNC0_SIGGETMASK_SIGNAL_H)
int siggetmask(void)
{
	return sigblock(0);
}
#endif
