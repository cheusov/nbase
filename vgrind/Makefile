PROG =	vfontedpr
SRCS =	regexp.c vfontedpr.c
MAN =	vgrind.1 vgrindefs.5
BINDIR =	${LIBEXECDIR}
CLEANFILES +=	vgrindefs.src.db

.if ${MKSHARE:U} != "no"
FILES =				tmac.vgrind vgrindefs.src vgrindefs.src.db
FILESNAME_vgrindefs.src =	vgrindefs
FILESNAME_vgrindefs.src.db =	vgrindefs.db
FILESDIR ?=			${DATADIR}/misc
FILESDIR_tmac.vgrind ?=		${DATADIR}/tmac
FILESNAME_tmac.vgrind =		vgrind.tmac
.endif

SCRIPTS =	vgrind.sh
SCRIPTSNAME_vgrind.sh =	vgrind

do_all: vfontedpr vgrindefs.src.db

#.include <bsd.endian.mk>
#.if ${TARGET_ENDIANNESS} == "1234"
#CAP_MKDB_ENDIAN=	-l
#.elif ${TARGET_ENDIANNESS} == "4321"
#CAP_MKDB_ENDIAN=	-b
#.else
CAP_MKDB_ENDIAN=
#.endif

.if ${MKSHARE:U} != "no"
vgrindefs.src.db: vgrindefs.src
	${_MKTARGET_CREATE}
	${TOOL_CAP_MKDB} ${CAP_MKDB_ENDIAN} -f vgrindefs.src ${.ALLSRC}
.else
vgrindefs.src.db:
.endif

.include <mkc.prog.mk>
