PROG =		msgc
MAN  =		msgc.1
SRCS =		msgmain.c msgparse.y msgscan.l msgdb.c util.c avl.c
.PATH:		${.CURDIR}/../menuc
.NOPATH:	avl.o util.o
CPPFLAGS+=	-I. -I${.CURDIR} -D_PATH_DEFSYSPREFIX='"${_PATH_DEFSYSPREFIX}"'
YHEADER=

MKC_REQD =		0.34.0
MKC_FEATURES +=	libl

_PATH_DEFSYSPREFIX =	${DATADIR}/misc
.if ${MKSHARE:U} != "no"
FILES =		msg_sys.def
FILESDIR =	${_PATH_DEFSYSPREFIX}
.endif

# variable "root" and function argument "root"
CFLAGS.check +=	-Wno-error=shadow -Wno-error

# Ex.: char * lalala = "";
CFLAGS.check +=	-Wno-error=discarded-qualifiers

.include "../mk/addlinks.mk"
