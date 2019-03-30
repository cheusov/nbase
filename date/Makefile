PROG   =	date
SRCS   =	date.c netdate.c
CPPFLAGS +=	-I${.CURDIR}

COPTS.date.c = -Wno-format-nonliteral

MKC_FEATURES +=	strlcpy

.include "../mk/mkc_imp.f_parsedate.mk"

.include "../mk/addlinks.mk"
