/*	$NetBSD: common.c,v 1.1 2007/02/18 22:13:42 rmind Exp $	*/
/*	$OpenBSD: common.c,v 1.4 2006/05/25 03:20:32 ray Exp $	*/

/*
 * Written by Raymond Lai <ray@cyth.net>.
 * Public domain.
 */

#include "mkc_err.h"

#include <stdlib.h>
#include <unistd.h>

#include "common.h"

void
cleanup(const char *filename)
{
	if (unlink(filename))
		err(2, "could not delete: %s", filename);
	exit(2);
}
