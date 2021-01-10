PROG =	fmt
MAN  =	fmt.1
SRCS =	fmt.c head.c
CPPFLAGS +=	-DFMT_PROG

.PATH: ${.CURDIR}/../mail

MKC_FEATURES +=		fgetln vis

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
