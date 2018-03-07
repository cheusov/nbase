#if HAVE_HEADER_FILE_SYS_MTIO_H
# define HAVE_SYS_MTIO_H
#endif

#include "sys/types.h"

#if !HAVE_TYPE_U_LONG_SYS_TYPES_H
#typedef unsigned long u_long;
#endif

#include <unistd.h>
#include <getopt.h>

#include "mkc_bsd_getopt.h"

