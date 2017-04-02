USE_FORT?= yes	# setuid

PROG=	rlogin
SRCS=	rlogin.c getport.c

.PATH.c: ${.CURDIR}/../rsh
CPPFLAGS+=-I${.CURDIR}/../rsh

BINOWN=	root
BINMODE=4555

.include <bsd.prog.mk>
