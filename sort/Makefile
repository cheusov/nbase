#	$NetBSD: Makefile,v 1.9 2019/10/13 07:28:17 mrg Exp $
MAN  =	sort.1
SRCS =	append.c fields.c files.c fsort.c init.c msort.c sort.c tmp.c
SRCS +=	radix_sort.c

CFLAGS.check +=	-Wno-error=unused-result # asprintf(...) and fread(...) on glibc/Linux-es
CFLAGS.check +=	-ww2218 # for icc

MKC_FEATURES +=	efun

COPTS.init.c+=		${GCC_NO_FORMAT_TRUNCATION}

CFLAGS.check += -Wno-error=use-after-free

.include <mkc.init.mk>

.include "../mk/hacks.mk"
.include "../mk/imp.f_lchmod.mk"
.include "../mk/addlinks.mk"
