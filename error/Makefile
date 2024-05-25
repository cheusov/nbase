PROG =	error
MAN  =	error.1
SRCS =	main.c input.c pi.c subr.c filter.c touch.c

MKC_FEATURES +=		fgetln raise_default_signal

# input.c on SunOS
CFLAGS.check +=		-erroff=E_ARGUEMENT_MISMATCH

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
