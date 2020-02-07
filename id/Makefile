PROG  =	id
MAN   =	id.1 groups.1 whoami.1
LINKS =   ${BINDIR}/id ${BINDIR}/groups
LINKS +=  ${BINDIR}/id ${BINDIR}/whoami

.include <mkc.init.mk>

CFLAGS.check +=	-erroff=E_STATEMENT_NOT_REACHED

COPTS.id.c += -Wno-format-nonliteral

.include "../mk/addlinks.mk"
