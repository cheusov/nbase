PROG                =	script
MAN                 =	script.1

MKC_CHECK_HEADERS   =	utmp.h pty.h util.h
MKC_CHECK_FUNCLIBS  =	login_tty:util
MKC_FEATURES       +=	bswap

CFLAGS.check +=	-Wno-error=unused-result # write(...) on glibc/Linux-es

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
