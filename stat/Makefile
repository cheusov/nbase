PROG =	stat

LINKS  =	${BINDIR}/stat ${BINDIR}/readlink
MLINKS =	stat.1 readlink.1

COPTS.stat.c += -Wno-format-nonliteral

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "mkc_struct_stat.h"

.include "../mk/addlinks.mk"
