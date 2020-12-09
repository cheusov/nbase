PROG =	hexdump
SRCS =	conv.c display.c hexdump.c hexsyntax.c odsyntax.c parse.c
MAN =	hexdump.1 od.1

LINKS=	${BINDIR}/hexdump ${BINDIR}/od

COPTS.conv.c += -Wno-format-nonliteral
COPTS.display.c += -Wno-format-nonliteral

# Disable -Werror because of warning with gcc-8
# parse.c:314:5: error: 'strncpy' output truncated copying 1 byte from a string of length 2 [-Werror=stringop-truncation]
#      strncpy(cs, PRId64, sizeof(PRId64) - 2);
#      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# parse.c:378:7: error: 'strncpy' output truncated copying 1 byte from a string of length 2 [-Werror=stringop-truncation]
#        strncpy(cs, PRId64,
#        ^~~~~~~~~~~~~~~~~~~
#         sizeof(PRId64) - 2);
#        ~~~~~~~~~~~~~~~~~~~
WARNERR =	no

MKC_FEATURES +=	efun

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
