PROG      =	qsubst
MAN       =	qsubst.1

MKC_FEATURES +=	progname

# sigmask, sigblock etc. are deprecated on some systems
CFLAGS.check +=	-Wno-error=deprecated-declarations -Wno-error

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/imp.f_curses.mk"
.include "../mk/imp.f_bsd_signal.mk"

.include "../mk/addlinks.mk"
