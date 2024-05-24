PROG =		menuc
MAN  =		menuc.1
SRCS =		main.c parse.y scan.l avl.c mdb.c util.c
CPPFLAGS+=	-I. -I${.CURDIR} -D_PATH_DEFSYSPREFIX='"${_PATH_DEFSYSPREFIX}"'
YHEADER=

MKC_REQD =	0.34.0
MKC_FEATURES +=	libl macro

_PATH_DEFSYSPREFIX =	${DATADIR}/misc
.if ${MKSHARE:U} != "no"
FILES =		menu_sys.def
FILESDIR =	${_PATH_DEFSYSPREFIX}
.endif

# variable "root" and function argument "root"
CFLAGS.check +=	-Wno-error=shadow

# Ex.: char * lalala = "";
CFLAGS.check +=	-Wno-error=discarded-qualifiers

.include "../mk/addlinks.mk"
