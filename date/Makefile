PROG   =	date
SRCS   =	date.c netdate.c
#DPADD +=	${LIBUTIL}
#LDADD +=	-lutil
CPPFLAGS +=	-I${.CURDIR}

COPTS.date.c = -Wno-format-nonliteral

MKC_FEATURES +=	strlcpy

.include "../mk/addlinks.mk"
