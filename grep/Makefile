PROG =	grep
SRCS =	fastgrep.c file.c grep.c queue.c util.c

LINKS =	${BINDIR}/grep ${BINDIR}/egrep	\
	${BINDIR}/grep ${BINDIR}/fgrep	\
	${BINDIR}/grep ${BINDIR}/zgrep	\
	${BINDIR}/grep ${BINDIR}/zegrep	\
	${BINDIR}/grep ${BINDIR}/zfgrep

MLINKS =grep.1 egrep.1	\
	grep.1 fgrep.1	\
	grep.1 zgrep.1	\
	grep.1 zegrep.1	\
	grep.1 zfgrep.1

MKC_FEATURES =	STAILQ getline strsep

MKC_REQUIRE_FUNCLIBS= gzread:z BZ2_bzRead:bz2 fts_open:fts
#.PATH: ${.CURDIR}/nls

#NLS=	C.msg \
	es_ES.ISO8859-1.msg \
	gl_ES.ISO8859-1.msg \
	hu_HU.ISO8859-2.msg \
	ja_JP.eucJP.msg \
	ja_JP.SJIS.msg \
	ja_JP.UTF-8.msg \
	pt_BR.ISO8859-1.msg \
	ru_RU.KOI8-R.msg \
	uk_UA.UTF-8.msg \
	zh_CN.UTF-8.msg

COPTS.grep.c += -Wno-format-nonliteral
COPTS.util.c += -Wno-format-nonliteral

CPPFLAGS +=	-DHAVE_NBTOOL_CONFIG_H

.include "../mk/addlinks.mk"
