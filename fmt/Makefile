PROG =	fmt
MAN  =	fmt.1
SRCS =	fmt.c head.c
CPPFLAGS +=	-DFMT_PROG

.PATH: ${.CURDIR}/../mail

MKC_CHECK_HEADERS +=	paths.h

MKC_FEATURES +=		fgetln vis err warn

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/imp.f_fgetwln.mk"

.include "../mk/addlinks.mk"
