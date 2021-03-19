WARNS =	2	# XXX -Wcast-qual issues

PROG =	sdiff
MAN  =	sdiff.1
SRCS =	common.c edit.c sdiff.c

MKC_FEATURES =	fparseln SIMPLEQ progname

.include "../mk/imp.f_strtonum.mk"

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
