PROG =	hexdump
SRCS =	conv.c display.c hexdump.c hexsyntax.c odsyntax.c parse.c
MAN =	hexdump.1 od.1

LINKS=	${BINDIR}/hexdump ${BINDIR}/od

COPTS.conv.c += -Wno-format-nonliteral
COPTS.display.c += -Wno-format-nonliteral

MKC_FEATURES +=	efun

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
