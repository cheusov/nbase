/********************************************************************\
 Copyright (c) 2017 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _MKC_REALLOCARRAY_H_
#define _MKC_REALLOCARRAY_H_

#include <stdio.h>

#ifndef HAVE_FUNC3_REALLOCARRAY_STDIO_H
void *reallocarray(void *ptr, size_t nmemb, size_t size);
#endif

#endif // _MKC_REALLOCARRAY_H_
