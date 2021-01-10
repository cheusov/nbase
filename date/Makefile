PROG   =	date
MAN    =	date.1
SRCS   =	date.c netdate.c
CPPFLAGS +=	-I${.CURDIR}

CFLAGS.check  =	-Wno-format-nonliteral
CFLAGS.check +=	-Wno-deprecated-declarations # for Darwin-15.6.0

MKC_FEATURES +=	strlcpy

.include <mkc.configure.mk>

.include "../mk/hacks.mk"

.include "../mk/imp.f_parsedate.mk"

.include "../mk/addlinks.mk"
