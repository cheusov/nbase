WARNS ?=	2	# XXX -Wcast-qual issues

PROG =	sdiff
SRCS =	common.c edit.c sdiff.c strtonum.c

MKC_FEATURES =	SIMPLEQ

.include <mkc.init.mk>

.include "../mk/mkc_imp.f_fparseln.mk"

.include "../mk/addlinks.mk"
