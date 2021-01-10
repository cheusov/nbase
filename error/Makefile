PROG =	error
MAN  =	error.1
SRCS =	main.c input.c pi.c subr.c filter.c touch.c

MKC_FEATURES +=		fgetln raise_default_signal

WARNERR       =		no # fixes issue on SunOS-5.10/SunC-5.11 (gcc210.fsffrance.org)

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
