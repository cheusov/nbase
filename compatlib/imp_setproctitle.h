/********************************************************************\
 Copyright (c) 2026 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _IMP_SETPROCTITLE_H_
#define _IMP_SETPROCTITLE_H_

#ifndef _IMP_CHECK_SETPROCTITLE
# error "Missing MKC_FEATURES += setproctitle"
#endif

#include <stdlib.h>

#ifndef HAVE_FUNC1_SETPROCTITLE_STDLIB_H
static void setproctitle(const char *fmt, ...) {}
#endif

#endif // _IMP_SETPROCTITLE_H_
