#ifndef _MKC_MACRO_H_
#define _MKC_MACRO_H_

#include <stdlib.h>
#include <assert.h>

/*
 * Return the number of elements in a statically-allocated array,
 * __x.
 */
#define __arraycount(__x)       (sizeof(__x) / sizeof(__x[0]))

#ifdef HAVE_MEMBER_STRUCT_STAT_ST_MTIMESPEC_SYS_STAT_H
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

#endif // _MKC_MACRO_H_
