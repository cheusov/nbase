#ifndef _MKC_MACRO_H_
#define _MKC_MACRO_H_

#include <stdlib.h>
#include <assert.h>

/*
 * Return the number of elements in a statically-allocated array,
 * __x.
 */
#define __arraycount(__x)       (sizeof(__x) / sizeof(__x[0]))

#define timespeccmp(tsp, usp, cmp)                               \
        (((tsp)->tv_sec == (usp)->tv_sec) ?                      \
            ((tsp)->tv_nsec cmp (usp)->tv_nsec) :                \
            ((tsp)->tv_sec cmp (usp)->tv_sec))

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
