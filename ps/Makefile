PROG =		ps
SRCS =		fmt.c keyword.c nlist.c print.c ps.c
LDADD=		-lm

CWARNFLAGS+=	-Wno-format-y2k
COPTS.print.c = -Wno-format-nonliteral

.include <mkc.mk>
