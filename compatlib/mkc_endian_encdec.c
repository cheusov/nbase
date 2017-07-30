/*
 * Copyright (C) 2017 Aleksey Cheusov <vle@gmx.net>
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL
 * THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "mkc_endian_encdec.h"
#include "mkc_macro.h"

#ifndef HAVE_FUNC1_BE16DEC_SYS_ENDIAN_H
uint16_t be16dec(const void *buf)
{
	const uint8_t *p = __CAST(const uint8_t *, buf);

	return ((__CAST(uint16_t, p[0]) << 8) | p[1]);
}
#endif

#ifndef HAVE_FUNC1_BE32DEC_SYS_ENDIAN_H
uint32_t be32dec(const void *buf)
{
	const uint8_t *p = __CAST(const uint8_t *, buf);

	return ((__CAST(uint32_t, be16dec(p)) << 16) | be16dec(p + 2));
}
#endif

#ifndef HAVE_FUNC1_BE64DEC_SYS_ENDIAN_H
uint64_t be64dec(const void *buf)
{
	const uint8_t *p = (const uint8_t *)buf;

	return ((__CAST(uint64_t, be32dec(p)) << 32) | be32dec(p + 4));
}
#endif

#ifndef HAVE_FUNC1_LE16DEC_SYS_ENDIAN_H
uint16_t le16dec(const void *buf)
{
	const uint8_t *p = __CAST(const uint8_t *, buf);

	return (p[0] | (__CAST(uint16_t, p[1]) << 8));
}
#endif

#ifndef HAVE_FUNC1_LE32DEC_SYS_ENDIAN_H
uint32_t le32dec(const void *buf)
{
	const uint8_t *p = __CAST(const uint8_t *, buf);

	return (le16dec(p) | (__CAST(uint32_t, le16dec(p + 2)) << 16));
}
#endif

#ifndef HAVE_FUNC1_LE64DEC_SYS_ENDIAN_H
uint64_t le64dec(const void *buf)
{
	const uint8_t *p = (const uint8_t *)buf;

	return (le32dec(p) | (__CAST(uint64_t, le32dec(p + 4)) << 32));
}
#endif

/* decode functions */
#ifndef HAVE_FUNC2_BE16ENC_SYS_ENDIAN_H
void be16enc(void *buf, uint16_t u)
{
	uint8_t *p = __CAST(uint8_t *, buf);

	p[0] = __CAST(uint8_t, ((__CAST(unsigned, u) >> 8) & 0xff));
	p[1] = __CAST(uint8_t, (u & 0xff));
}
#endif

#ifndef HAVE_FUNC2_BE32ENC_SYS_ENDIAN_H
void be32enc(void *buf, uint32_t u)
{
	uint8_t *p = __CAST(uint8_t *, buf);

	p[0] = __CAST(uint8_t, ((u >> 24) & 0xff));
	p[1] = __CAST(uint8_t, ((u >> 16) & 0xff));
	p[2] = __CAST(uint8_t, ((u >> 8) & 0xff));
	p[3] = __CAST(uint8_t, (u & 0xff));
}
#endif

#ifndef HAVE_FUNC2_BE64ENC_SYS_ENDIAN_H
void be64enc(void *buf, uint64_t u)
{
	uint8_t *p = __CAST(uint8_t *, buf);

	be32enc(p, __CAST(uint32_t, (u >> 32)));
	be32enc(p + 4, __CAST(uint32_t, (u & 0xffffffffULL)));
}
#endif

#ifndef HAVE_FUNC2_LE16ENC_SYS_ENDIAN_H
void le16enc(void *buf, uint16_t u)
{
	uint8_t *p = __CAST(uint8_t *, buf);

	p[0] = __CAST(uint8_t, (u & 0xff));
	p[1] = __CAST(uint8_t, ((__CAST(unsigned, u) >> 8) & 0xff));
}
#endif

#ifndef HAVE_FUNC2_LE32ENC_SYS_ENDIAN_H
void le32enc(void *buf, uint32_t u)
{
	uint8_t *p = __CAST(uint8_t *, buf);

	p[0] = __CAST(uint8_t, (u & 0xff));
	p[1] = __CAST(uint8_t, ((u >> 8) & 0xff));
	p[2] = __CAST(uint8_t, ((u >> 16) & 0xff));
	p[3] = __CAST(uint8_t, ((u >> 24) & 0xff));
}
#endif

#ifndef HAVE_FUNC2_LE64ENC_SYS_ENDIAN_H
void le64enc(void *buf, uint64_t u)
{
	uint8_t *p = __CAST(uint8_t *, buf);

	le32enc(p, __CAST(uint32_t, (u & 0xffffffffULL)));
	le32enc(p + 4, __CAST(uint32_t, (u >> 32)));
}
#endif
