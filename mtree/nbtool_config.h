#ifndef _NBTOOL_CONFIG_H_
#define _NBTOOL_CONFIG_H_

#if HAVE_MEMBER_STRUCT_STAT_ST_FLAGS_SYS_STAT_H
# define HAVE_STRUCT_STAT_ST_FLAGS
#endif

#include "mkc_lchmod.h"
#include "mkc_flags_to_string.h"
#include "mkc_struct_stat.h"
#include "mkc_strsep.h"
#include "mkc_err.h"
#include "mkc_warn.h"
#include "mkc_fparseln.h"
#include "mkc_macro.h"

#include <sys/stat.h>
#include <limits.h>
#include <stdint.h>
#include <pwd.h>
#include <grp.h>

#ifndef S_ISTXT
# define S_ISTXT 0
#endif

#ifndef UID_MAX
# define UID_MAX ((uid_t) -1)
#endif

#ifndef GID_MAX
# define GID_MAX ((gid_t) -1)
#endif

#if !HAVE_LCHFLAGS_SYS_STAT_H
#define lchflags chflags
#endif

#endif // _NBTOOL_CONFIG_H_
