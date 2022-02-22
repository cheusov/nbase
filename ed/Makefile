PROG      =	ed
MAN       =	ed.1
CPPFLAGS +=	-DBACKWARDS

CFLAGS.check +=	-Wno-error=unused-result # asprintf(...) and system(...) on glibc/Linux-es
CFLAGS.check +=	-ww2218 # for icc

#.if (${MKCRYPTO} != "no")
#CPPFLAGS+=-DDES
#.endif

SRCS      =	buf.c cbc.c glbl.c io.c main.c re.c sub.c undo.c

#LDADD    += -lcrypt
#DPADD    += ${LIBCRYPT}

.include "../mk/addlinks.mk"
