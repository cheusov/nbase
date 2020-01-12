PROG =	sed
SRCS =	compile.c main.c misc.c process.c

MKC_FEATURES +=	getline

.include <mkc.init.mk>

CFLAGS.warns.gcc.4   +=	-Wno-error=shadow
CFLAGS.warns.gcc.4   +=	-Wno-error=return-type

CFLAGS.warns.clang.4 +=	-Wno-error=return-type


.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_errc.mk"

.include "../mk/addlinks.mk"
