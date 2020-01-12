#ifndef _MKC_MACRO_H_
#define _MKC_MACRO_H_

#ifndef _MKC_CHECK_MACRO
# error "Missing MKC_FEATURES += macro"
#endif

#ifdef HAVE_HEADER_FILE_SYS_CDEFS_H
#include <sys/cdefs.h>
#endif

#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <regex.h>
#include <sys/stat.h>
#include <sys/param.h>
#include <sys/types.h>
#include <unistd.h>

#if HAVE_HEADER_FILE_SYS_SYSMACROS_H
# include <sys/sysmacros.h>
#endif /* HAVE_HEADER_FILE_SYS_SYSMACROS_H */

#if HAVE_HEADER_FILE_PATHS_H
# include <paths.h>
#endif /* HAVE_HEADER_FILE_PATHS_H */

/*
 * Return the number of elements in a statically-allocated array,
 * __x.
 */
#define __arraycount(__x)       (sizeof(__x) / sizeof(__x[0]))

#ifndef HN_DECIMAL
#define   HN_DECIMAL              0x01
#define   HN_NOSPACE              0x02
#define   HN_B                    0x04
#define   HN_DIVISOR_1000         0x08

#define   HN_GETSCALE             0x10
#define   HN_AUTOSCALE            0x20
#endif

#ifndef _DIAGASSERT
#define _DIAGASSERT(e)
#endif

#ifndef __UNCONST
#  define __UNCONST(a) ((void *)(unsigned long)(const void *)(a))
#endif

#ifndef MAXBSIZE
#define MAXBSIZE (64*1024)
#endif

#ifndef SIZE_T_MAX
#define SIZE_T_MAX (size_t)~0ull
#endif

#ifndef MB_LEN_MAX
#define MB_LEN_MAX     32      /* Allow ISO/IEC 2022 */
#endif

#ifndef CTASSERT
#define CTASSERT(x) /* for now empty */
#endif

#ifndef REG_BASIC
#define REG_BASIC 0
#endif

/*
 * Only to be used in other headers that are included from both c or c++
 * NOT to be used in code.
 */
#ifndef __CAST
# ifdef __cplusplus
#  define __CAST(__dt, __st)      static_cast<__dt>(__st)
# else
#  define __CAST(__dt, __st)      ((__dt)(__st))
# endif
#endif

#ifndef __CASTV
#define __CASTV(__dt, __st)     __CAST(__dt, __CAST(void *, __st))
#endif

#ifndef __CASTCV
#define __CASTCV(__dt, __st)    __CAST(__dt, __CAST(const void *, __st))
#endif

#ifndef __USE
#define __USE(a) ((void)(a))
#endif

#ifndef __unused
#define __unused
#endif

#if defined(__cplusplus)
#  ifndef __BEGIN_DECLS
#    define __BEGIN_DECLS        extern "C" {
#  endif
#  ifndef __END_DECLS
#    define __END_DECLS          }
#  endif
#else
#  ifndef __BEGIN_DECLS
#    define __BEGIN_DECLS
#  endif
#  ifndef __END_DECLS
#    define __END_DECLS
#  endif
#endif

#ifndef __P /* function prototypes */
#  ifdef STDC
#    define __P(args)  args
#  else
#    define __P(args)  ()
#  endif
#endif

#ifndef __CONCAT
# define __CONCAT(x,y)  x ## y
#endif

#ifndef MAP_FILE
# define MAP_FILE 0
#endif

#ifndef DEFFILEMODE
# define DEFFILEMODE (S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH)
#endif

#ifndef ALLPERMS
# define ALLPERMS (S_ISUID|S_ISGID|S_ISVTX|S_IRWXU|S_IRWXG|S_IRWXO)
#endif

#ifndef ACCESSPERMS
# define ACCESSPERMS (S_IRWXU|S_IRWXG|S_IRWXO)
#endif

#if !HAVE_TYPE_U_QUAD_T_SYS_TYPES_H
typedef unsigned long int u_quad_t;
#endif

#ifndef MAXHOSTNAMELEN
# if defined(HOST_NAME_MAX)
#   define MAXHOSTNAMELEN HOST_NAME_MAX
# elif defined(_POSIX_HOST_NAME_MAX)
#   define MAXHOSTNAMELEN _POSIX_HOST_NAME_MAX
# else
#   define MAXHOSTNAMELEN 255
# endif
#endif

#ifndef _PATH_TMP
#  define _PATH_TMP "/tmp/"
#endif

#ifndef _PATH_TTY
#  define _PATH_TTY "/dev/tty"
#endif

#ifndef _PATH_DEVNULL
#  define _PATH_DEVNULL "/dev/null"
#endif

#ifndef _PATH_BSHELL
#  define _PATH_BSHELL "/bin/sh"
#endif

#ifndef _PATH_MAILDIR
#  define _PATH_MAILDIR "/var/mail"
#endif

#ifndef _PATH_DEFPATH
#define	_PATH_DEFPATH	"/usr/bin:/bin"
#endif

#endif // _MKC_MACRO_H_
