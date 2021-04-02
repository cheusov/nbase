#ifndef _NBTOOL_CONFIG_H_
#define _NBTOOL_CONFIG_H_

#if HAVE_MEMBER_STRUCT_STAT_ST_FLAGS_SYS_STAT_H
# define HAVE_STRUCT_STAT_ST_FLAGS
#endif

#include "imp_lchmod.h"
#include "imp_flags_to_string.h"
#include "imp_struct_stat.h"
#include "mkc_LIST.h"
#include "mkc_strsep.h"
#include "mkc_err.h"
#include "mkc_warn.h"
#include "mkc_fparseln.h"
#include "imp_macro.h"

#include <sys/types.h>
#include <sys/stat.h>
#include <limits.h>
#include <stdint.h>
#include <pwd.h>
#include <grp.h>

#ifndef S_ISTXT
# define S_ISTXT S_ISVTX
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
