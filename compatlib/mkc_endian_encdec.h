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

#ifndef _MKC_ENDIAN_ENCDEC_H_
#define _MKC_ENDIAN_ENCDEC_H_

#ifndef _MKC_CHECK_ENDIAN_ENCDEC
# error "Missing MKC_FEATURES += endian_encdec"
#endif

#ifdef HAVE_HEADER_SYS_ENDIAN_H
# include <sys/endian.h>
#endif

#include <stdint.h>

//__BEGIN_DECLS

/* decode functions */
#ifndef HAVE_FUNC1_BE16DEC_SYS_ENDIAN_H
uint16_t be16dec(const void *stream);
#endif

#ifndef HAVE_FUNC1_BE32DEC_SYS_ENDIAN_H
uint32_t be32dec(const void *stream);
#endif

#ifndef HAVE_FUNC1_BE64DEC_SYS_ENDIAN_H
uint64_t be64dec(const void *stream);
#endif

#ifndef HAVE_FUNC1_LE16DEC_SYS_ENDIAN_H
uint16_t le16dec(const void *stream);
#endif

#ifndef HAVE_FUNC1_LE32DEC_SYS_ENDIAN_H
uint32_t le32dec(const void *stream);
#endif

#ifndef HAVE_FUNC1_LE64DEC_SYS_ENDIAN_H
uint64_t le64dec(const void *stream);
#endif

/* encode functions */
#ifndef HAVE_FUNC2_BE16ENC_SYS_ENDIAN_H
void be16enc(void *stream, uint16_t host16);
#endif

#ifndef HAVE_FUNC2_BE32ENC_SYS_ENDIAN_H
void be32enc(void *stream, uint32_t host32);
#endif

#ifndef HAVE_FUNC2_BE64ENC_SYS_ENDIAN_H
void be64enc(void *stream, uint64_t host64);
#endif

#ifndef HAVE_FUNC2_LE16ENC_SYS_ENDIAN_H
void le16enc(void *stream, uint16_t host16);
#endif

#ifndef HAVE_FUNC2_LE32ENC_SYS_ENDIAN_H
void le32enc(void *stream, uint32_t host32);
#endif

#ifndef HAVE_FUNC2_LE64ENC_SYS_ENDIAN_H
void le64enc(void *stream, uint64_t host64);
#endif

//__END_DECLS

#endif /* _MKC_ENDIAN_ENCDEC_H_ */
