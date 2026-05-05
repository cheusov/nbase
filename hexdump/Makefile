#	$NetBSD: Makefile,v 1.15 2019/10/13 07:28:15 mrg Exp $
SRCS =	conv.c display.c hexdump.c hexsyntax.c odsyntax.c parse.c
MAN =	hexdump.1 od.1

LINKS=	${BINDIR}/hexdump ${BINDIR}/od

COPTS.conv.c += -Wno-format-nonliteral
COPTS.display.c += -Wno-format-nonliteral

COPTS.parse.c+=	${GCC_NO_STRINGOP_TRUNCATION}

MKC_FEATURES +=	efun

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
