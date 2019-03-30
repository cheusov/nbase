PROG   =	date
SRCS   =	date.c netdate.c
CPPFLAGS +=	-I${.CURDIR}

COPTS.date.c = -Wno-format-nonliteral

MKC_FEATURES +=	strlcpy

MKC_REQUIRE_FUNCLIBS +=	parsedate:util

.include "../mk/addlinks.mk"
