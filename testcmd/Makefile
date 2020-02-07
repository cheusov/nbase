PROG =		testcmd
PROGNAME ?=	test
SRCS =   	test.c
MAN =		test.1
LINKS =		${BINDIR}/test ${BINDIR}/[
MLINKS =	test.1 [.1

.include <mkc.init.mk>

CFLAGS.check += -erroff=E_STATEMENT_NOT_REACHED

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_timecmp.mk"

.include "../mk/addlinks.mk"
