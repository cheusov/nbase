USE_FORT?= yes	# setuid

PROG=	rlogin
MAN=	rlogin.1
SRCS=	rlogin.c getport.c

.PATH.c: ${.CURDIR}/../rsh
CPPFLAGS+=-I${.CURDIR}/../rsh

BINOWN=	root
BINMODE=4555

.include <bsd.prog.mk>
