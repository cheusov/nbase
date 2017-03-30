/********************************************************************\
 Copyright (c) 2017 by Aleksey Cheusov

 See LICENSE file in the distribution.
\********************************************************************/

#ifndef _MKC_BSWAP_H_
#define _MKC_BSWAP_H_

#if HAVE_DEFINE_BSWAP16_MACHINE_BSWAP_H && \
	HAVE_DEFINE_BSWAP32_MACHINE_BSWAP_H && \
	HAVE_DEFINE_BSWAP64_MACHINE_BSWAP_H
#include <machine/bswap.h>
#else

#include <stdint.h>

#define bswap16(x) \
    (uint16_t)( \
    (((x) & 0xff00) >> 8) | \
    (((x) & 0x00ff) << 8))

#define bswap32(x) \
    (uint32_t)( \
    (((x) & 0xff000000) >> 24) | \
    (((x) & 0x00ff0000) >> 8) | \
    (((x) & 0x0000ff00) << 8) | \
    (((x) & 0x000000ff) << 24))

#define bswap64(x) \
    (uint64_t)( \
    (((x) & 0xff00000000000000ull) >> 56) | \
    (((x) & 0x00ff000000000000ull) >> 40) | \
    (((x) & 0x0000ff0000000000ull) >> 24) | \
    (((x) & 0x000000ff00000000ull) >>  8) | \
    (((x) & 0x00000000ff000000ull) <<  8) | \
    (((x) & 0x0000000000ff0000ull) << 24) | \
    (((x) & 0x000000000000ff00ull) << 40) | \
    (((x) & 0x00000000000000ffull) << 56))

#endif /**/

#endif /* _MKC_BSWAP_H_ */
