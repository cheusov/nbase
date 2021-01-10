PROG =	xargs
SRCS =	xargs.c strnsubst.c
MAN  =	xargs.1

MKC_FEATURES +=		fgetln

.include <mkc.init.mk>

CFLAGS.check  +=	-Wno-error=deprecated-declarations
CFLAGS.check  +=	-erroff=E_DEPRECATED_ATT

.include "../mk/hacks.mk"

.include "../mk/imp.f_sys_signame.mk"

.include "../mk/addlinks.mk"
