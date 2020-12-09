#CFLAGS+=-g
MAN  =	mkdep.1
PROG =	mkdep
SRCS =	mkdep.c findcc.c

.include <mkc.init.mk>

CFLAGS.check  +=	-Wno-error=deprecated-declarations
CFLAGS.check  +=	-erroff=E_DEPRECATED_ATT

MKC_FEATURES  +=	dprintf

.include "../mk/hacks.mk"

.include "../mk/imp.f_macro.mk"

.include "../mk/addlinks.mk"
