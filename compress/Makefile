PROG =		compress
MAN  =		compress.1
SRCS =		compress.c zopen.c
LINKS =		${BINDIR}/compress ${BINDIR}/uncompress
MLINKS =	compress.1 uncompress.1

MKC_FEATURES +=	progname

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/imp.f_funopen.mk"
.include "../mk/imp.f_struct_stat.mk"

.include "../mk/addlinks.mk"
