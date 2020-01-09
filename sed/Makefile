PROG =	sed
SRCS =	compile.c main.c misc.c process.c

.include <mkc.init.mk>

CFLAGS.warns.gcc.4 +=	-Wno-error=shadow

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_errc.mk"

.include "../mk/addlinks.mk"
