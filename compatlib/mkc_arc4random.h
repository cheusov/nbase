/********************************************************************\
 Copyright (c) 2019 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _MKC_ARC4RANDOM_H_
#define _MKC_ARC4RANDOM_H_

#ifndef _MKC_CHECK_ARC4RANDOM
# error "Missing MKC_FEATURES += arc4random"
#endif

#if HAVE_FUNC0_ARC4RANDOM_STDLIB_H
#include <stdlib.h>
#else
#include <stdint.h>
uint32_t arc4random(void);
#endif

#endif // _MKC_ARC4RANDOM_H_
