PROG      =	ed
CPPFLAGS +=	-DBACKWARDS

#.if (${MKCRYPTO} != "no")
#CPPFLAGS+=-DDES
#.endif

SRCS      =	buf.c cbc.c glbl.c io.c main.c re.c sub.c undo.c

#LDADD    += -lcrypt
#DPADD    += ${LIBCRYPT}

.include <mkc.mk>
