#ifndef _MKC_MACRO_H_
#define _MKC_MACRO_H_

#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <regex.h>

/*
 * Return the number of elements in a statically-allocated array,
 * __x.
 */
#define __arraycount(__x)       (sizeof(__x) / sizeof(__x[0]))

#ifdef HAVE_MEMBER_STRUCT_STAT_ST_MTIM_SYS_STAT_H
#define st_mtimespec st_mtim
#endif

#if defined(HAVE_MEMBER_STRUCT_STAT_ST_MTIMESPEC_SYS_STAT_H) || defined(HAVE_MEMBER_STRUCT_STAT_ST_MTIM_SYS_STAT_H)
#  define timecmp(f1, f2, cmp)                                   \
        (((f1)->st_mtimespec.tv_sec == (f2)->st_mtimespec.tv_sec) ?        \
            ((f1)->st_mtimespec.tv_nsec cmp (f2)->st_mtimespec.tv_nsec) :  \
            ((f1)->st_mtimespec.tv_sec cmp (f2)->st_mtimespec.tv_sec))
#else
#  ifdef HAVE_MEMBER_STRUCT_STAT_ST_MTIME_SYS_STAT_H
#    define timecmp(f1, f2, cmp) f1.st_mtime cmp f2.st_mtime
#  else
#    error "Neither stat.st_mtimespec nor stat.st_mtime is available"
#  endif
#endif

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

#ifdef HAVE_DEFINE___UNCONST_SYS_CDEFS_H
#  include <sys/cdefs.h>
#else
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

#endif // _MKC_MACRO_H_
