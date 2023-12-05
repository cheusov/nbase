DIST =		${.CURDIR}/../dist
.PATH:		${DIST}

PROG =		awk
MAN  =		awk.1
SRCS =		awkgram.y b.c lex.c lib.c main.c parse.c proctab.c run.c tran.c

awkgram_depends=b lex lib main maketab parse proctab run tran
.info "depends=${awkgram_depends:S/$/.o/}"
${awkgram_depends:S/$/.o/}:	awkgram.h
${awkgram_depends:S/$/.os/}:	awkgram.h

WARNS   =	3
WARNERR =	no

CPPFLAGS +=	-I${DIST} -I${.OBJDIR} -I${.CURDIR}
YHEADER   =	yes
#COPTS.run.c+=	-Wno-format-nonliteral
#COPTS.tran.c+=	-Wno-format-nonliteral

MKC_FEATURES +=	libm

.include "../../mk/imp.f_fpurge.mk"
.include "../../mk/addlinks.mk"

CFLAGS.check +=	-Wno-self-assign
CFLAGS.check +=	-Wno-pointer-sign
