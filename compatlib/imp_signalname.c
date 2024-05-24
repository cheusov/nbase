/*
 * Copyright 2024 Aleksey Cheusov <vle@gmx.net>
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

#include <stdlib.h>
#include <strings.h>

#include "imp_signalname.h"

#ifndef NSIG
#define NSIG sys_nsig
#endif

#ifndef HAVE_FUNC1_SIGNALNAME_SIGNAL_H
const char * signalname(int sig)
{
	if (sig <= 0 || sig >= NSIG)
		return NULL;

	return sys_signame[sig];
}
#endif

#ifndef HAVE_FUNC1_SIGNALNUMBER_SIGNAL_H
int signalnumber(const char *name)
{
	for (unsigned i = 1; i < NSIG; ++i) {
		const char *sname = sys_signame[i];
		if (sname != NULL && !strcasecmp(sname, name))
			return i;
	}

	return 0;
}
#endif

#ifndef HAVE_FUNC0_SIGNALNEXT_SIGNAL_H
int signalnext(int sig)
{
	if (sig < 0 || sig >= NSIG || (sig > 0 && sys_signame[sig] == NULL))
		return -1;

	while (++sig < NSIG)
		if (sys_signame[sig] != NULL)
			return sig;

	return 0;
}
#endif
