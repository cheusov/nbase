PROG  =	id
MAN   =	id.1 groups.1 whoami.1
LINKS =   ${BINDIR}/id ${BINDIR}/groups
LINKS +=  ${BINDIR}/id ${BINDIR}/whoami

.include <mkc.init.mk>

CFLAGS.check +=	-erroff=E_STATEMENT_NOT_REACHED
CFLAGS.check += -Wno-format-nonliteral
CFLAGS.check +=	-Wno-pointer-sign # for Darwin-15.6.0

.include "../mk/addlinks.mk"
