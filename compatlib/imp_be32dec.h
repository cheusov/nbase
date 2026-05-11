/*
 * Copyright (C) 2026 Aleksey Cheusov <vle@gmx.net>
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

#ifndef _IMP_BE32DEC_H_
#define _IMP_BE32DEC_H_

#ifndef _IMP_CHECK_BE32DEC
# error "Missing MKC_FEATURES += be32dec"
#endif

#ifdef HAVE_FUNC1_BE32DEC_SYS_ENDIAN_H
#include <sys/endian.h>
#else
#include <stdint.h>
static uint16_t
be16dec(const void *buf)
{
    const uint8_t *p = (const uint8_t *) buf;
    return (((uint16_t) p[0]) << 8) | p[1];
}

static uint32_t
be32dec(const void *buf)
{
    const uint8_t *p = (const uint8_t *) buf;
    return (((uint32_t) be16dec(p)) << 16) | be16dec(p + 2);
}

#endif // HAVE_FUNC2_BE32DEC_SYS_ENDIAN_H

#endif // _IMP_BE32DEC_H_
