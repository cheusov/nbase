/*
 Copyright (c) 2015 by Aleksey Cheusov

 See LICENSE file in the distribution.
*/

#include "mkc_sys_signame.h"

#include <string.h>

#ifndef HAVE_VAR_SYS_SIGNAME_SIGNAL_H

const int sys_nsig = NSIG;

const char ** sys_signame__ (void)
{
	static const char *arr [NSIG];
	static int initialized = 0;
	int i = 0;

	if (initialized)
		return arr;

	for (i=0; i < NSIG; ++i){
		arr [i] = "";
	}

#ifdef SIGHUP
	arr [SIGHUP]="HUP";
#endif
#ifdef SIGINT
	arr [SIGINT]="INT";
#endif
#ifdef SIGQUIT
	arr [SIGQUIT]="QUIT";
#endif
#ifdef SIGILL
	arr [SIGILL]="ILL";
#endif
#ifdef SIGTRAP
	arr [SIGTRAP]="TRAP";
#endif
#ifdef SIGABRT
	arr [SIGABRT]="ABRT";
#endif
#ifdef SIGBUS
	arr [SIGBUS]="BUS";
#endif
#ifdef SIGFPE
	arr [SIGFPE]="FPE";
#endif
#ifdef SIGKILL
	arr [SIGKILL]="KILL";
#endif
#ifdef SIGUSR1
	arr [SIGUSR1]="USR1";
#endif
#ifdef SIGSEGV
	arr [SIGSEGV]="SEGV";
#endif
#ifdef SIGUSR2
	arr [SIGUSR2]="USR2";
#endif
#ifdef SIGPIPE
	arr [SIGPIPE]="PIPE";
#endif
#ifdef SIGALRM
	arr [SIGALRM]="ALRM";
#endif
#ifdef SIGTERM
	arr [SIGTERM]="TERM";
#endif
#ifdef SIGSTKFLT
	arr [SIGSTKFLT]="STKFLT";
#endif
#ifdef SIGCHLD
	arr [SIGCHLD]="CHLD";
#endif
#ifdef SIGCONT
	arr [SIGCONT]="CONT";
#endif
#ifdef SIGSTOP
	arr [SIGSTOP]="STOP";
#endif
#ifdef SIGTSTP
	arr [SIGTSTP]="TSTP";
#endif
#ifdef SIGTTIN
	arr [SIGTTIN]="TTIN";
#endif
#ifdef SIGTTOU
	arr [SIGTTOU]="TTOU";
#endif
#ifdef SIGURG
	arr [SIGURG]="URG";
#endif
#ifdef SIGXCPU
	arr [SIGXCPU]="XCPU";
#endif
#ifdef SIGXFSZ
	arr [SIGXFSZ]="XFSZ";
#endif
#ifdef SIGVTALRM
	arr [SIGVTALRM]="VTALRM";
#endif
#ifdef SIGPROF
	arr [SIGPROF]="PROF";
#endif
#ifdef SIGWINCH
	arr [SIGWINCH]="WINCH";
#endif
#ifdef SIGIO
	arr [SIGIO]="IO";
#endif
#ifdef SIGPWR
	arr [SIGPWR]="PWR";
#endif
#ifdef SIGSYS
	arr [SIGSYS]="SYS";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN]="RTMIN";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+1]="RTMIN+1";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+2]="RTMIN+2";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+3]="RTMIN+3";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+4]="RTMIN+4";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+5]="RTMIN+5";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+6]="RTMIN+6";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+7]="RTMIN+7";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+8]="RTMIN+8";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+9]="RTMIN+9";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+10]="RTMIN+10";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+11]="RTMIN+11";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+12]="RTMIN+12";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+13]="RTMIN+13";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+14]="RTMIN+14";
#endif
#ifdef SIGRTMIN
	arr [SIGRTMIN+15]="RTMIN+15";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-14]="RTMAX-14";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-13]="RTMAX-13";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-12]="RTMAX-12";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-11]="RTMAX-11";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-10]="RTMAX-10";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-9]="RTMAX-9";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-8]="RTMAX-8";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-7]="RTMAX-7";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-6]="RTMAX-6";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-5]="RTMAX-5";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-4]="RTMAX-4";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-3]="RTMAX-3";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-2]="RTMAX-2";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX-1]="RTMAX-1";
#endif
#ifdef SIGRTMAX
	arr [SIGRTMAX]="RTMAX";
#endif

	initialized = 1;

	return arr;
}

#endif /* HAVE_VAR_SYS_SIGNAME_SIGNAL_H */
