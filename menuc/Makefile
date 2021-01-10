PROG =		menuc
MAN  =		menuc.1
SRCS =		main.c parse.y scan.l avl.c mdb.c util.c
CPPFLAGS+=	-I. -I${.CURDIR} -D_PATH_DEFSYSPREFIX='"${_PATH_DEFSYSPREFIX}"'
YHEADER=

MKC_REQD =	0.34.0
MKC_FEATURES +=	libl

WARNERR =	no

_PATH_DEFSYSPREFIX =	${DATADIR}/misc
.if ${MKSHARE:U} != "no"
FILES =		menu_sys.def
FILESDIR =	${_PATH_DEFSYSPREFIX}
.endif

.include "../mk/addlinks.mk"
