PROG =	script

MKC_CHECK_HEADERS   =	utmp.h pty.h util.h
MKC_CHECK_FUNCLIBS =	login_tty:util

CFLAGS.check +=	-Wno-error=unused-result # write(...) on glibc/Linux-es

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_bswap.mk"

.include "../mk/addlinks.mk"
