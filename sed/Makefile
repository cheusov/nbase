PROG =	sed
MAN  =	sed.1
SRCS =	compile.c main.c misc.c process.c

MKC_FEATURES +=	errc getline

CFLAGS.check +=	-Wno-error=unused-result # fchown(...) on glibc/Linux-es
CFLAGS.check +=	-ww2218 # for icc

.include <mkc.init.mk>

CFLAGS.check  +=	-Wno-error=shadow
CFLAGS.check  +=	-Wno-error=return-type
CFLAGS.check  +=	-erroff=E_STATEMENT_NOT_REACHED

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
