PROG =		menuc
SRCS =		main.c parse.y scan.l avl.c mdb.c util.c
CPPFLAGS+=	-I. -I${.CURDIR} -D_PATH_DEFSYSPREFIX='"${_PATH_DEFSYSPREFIX}"'
YHEADER=

MKC_REQD =	0.34.0

WARNERR =	no

_PATH_DEFSYSPREFIX =	${DATADIR}/misc
.if ${MKSHARE:U} != "no"
FILES =		menu_sys.def
FILESDIR =	${_PATH_DEFSYSPREFIX}
.endif

MKC_FEATURES +=	libl

.include "../mk/addlinks.mk"
