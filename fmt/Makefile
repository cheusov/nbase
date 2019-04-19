PROG =	fmt
SRCS =	fmt.c head.c
CPPFLAGS +=	-DFMT_PROG

.PATH: ${.CURDIR}/../mail

MKC_FEATURES +=		fgetln

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_vis.mk"

.include "../mk/addlinks.mk"
