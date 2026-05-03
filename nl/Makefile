PROG =	nl
MAN  =	nl.1

COPTS.nl.c += -Wno-format-nonliteral

.include <mkc.init.mk>

CFLAGS.check +=	-erroff=E_STATEMENT_NOT_REACHED -erroff=E_EMPTY_INITIALIZER

.include "../mk/addlinks.mk"
