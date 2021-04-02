/*
 * Copyright © 2019 Aleksey Cheusov <vle@gmx.net>
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

#ifndef _MKC_TIMECMP_H_
#define _MKC_TIMECMP_H_ 1

#ifndef _MKC_CHECK_TIMECMP
#  error "Missing MKC_FEATURES += timecmp"
#endif

#include <time.h>
#include <sys/time.h>

#if defined(HAVE_MEMBER_STRUCT_STAT_ST_MTIMESPEC_SYS_STAT_H) //|| defined(HAVE_MEMBER_STRUCT_STAT_ST_MTIM_SYS_STAT_H)
#   define timecmp(f1, f2, cmp)                                   \
        (((f1)->st_mtimespec.tv_sec == (f2)->st_mtimespec.tv_sec) ?        \
            ((f1)->st_mtimespec.tv_nsec cmp (f2)->st_mtimespec.tv_nsec) :  \
            ((f1)->st_mtimespec.tv_sec cmp (f2)->st_mtimespec.tv_sec))
#elif defined(HAVE_MEMBER_STRUCT_STAT_ST_MTIME_SYS_STAT_H)
#   define timecmp(f1, f2, cmp) f1.st_mtime cmp f2.st_mtime
#else
#   error "Neither stat.st_mtimespec nor stat.st_mtime is available"
#endif

#endif
