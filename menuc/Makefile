PROG =		menuc
SRCS =		main.c parse.y scan.l avl.c mdb.c util.c
CPPFLAGS+=	-I. -I${.CURDIR} -D_PATH_DEFSYSPREFIX='"${_PATH_DEFSYSPREFIX}"'
YHEADER=

_PATH_DEFSYSPREFIX =	${DATADIR}/misc
.if ${MKSHARE:U} != "no"
FILES =		menu_sys.def
FILESDIR =	${_PATH_DEFSYSPREFIX}
.endif

.include <mkc.prog.mk>
