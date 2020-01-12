PROG =	error
SRCS =	main.c input.c pi.c subr.c filter.c touch.c

MKC_FEATURES +=		fgetln

WARNERR       =		no # fixes issue on SunOS-5.10/SunC-5.11 (gcc210.fsffrance.org)

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_raise_default_signal.mk"

.include "../mk/addlinks.mk"
