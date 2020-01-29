PROG =		msgc
SRCS =		msgmain.c msgparse.y msgscan.l msgdb.c util.c avl.c
.PATH:		${.CURDIR}/../menuc
CPPFLAGS+=	-I. -I${.CURDIR} -D_PATH_DEFSYSPREFIX='"${_PATH_DEFSYSPREFIX}"'
YHEADER=

LDADD  +=	${LEXLIB}

WARNERR =	no

_PATH_DEFSYSPREFIX =	${DATADIR}/misc
.if ${MKSHARE:U} != "no"
FILES =		msg_sys.def
FILESDIR =	${_PATH_DEFSYSPREFIX}
.endif

.include "../mk/addlinks.mk"
