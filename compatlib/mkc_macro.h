#ifndef _MACRO_H_
#define _MACRO_H_

/*
 * Return the number of elements in a statically-allocated array,
 * __x.
 */
#define __arraycount(__x)       (sizeof(__x) / sizeof(__x[0]))

#define timespeccmp(tsp, usp, cmp)                               \
        (((tsp)->tv_sec == (usp)->tv_sec) ?                      \
            ((tsp)->tv_nsec cmp (usp)->tv_nsec) :                \
            ((tsp)->tv_sec cmp (usp)->tv_sec))

#endif // _MACRO_H_
