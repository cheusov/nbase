PROG         =	chown
CPPFLAGS    +=	-DSUPPORT_DOT
MAN          =	chgrp.1 chown.8

ORIG_BINDIR :=	${BINDIR}

SYMLINKS    :=	../sbin/chown ${ORIG_BINDIR}/chgrp

BINDIR      ?=	${SBINDIR}

MKC_FEATURES +=	progname pwdgrp err warn

MKC_REQUIRE_FUNCLIBS +=	fts_open:fts

.include "../mk/addlinks.mk"
