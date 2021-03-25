PROG =	stat
MAN  =	stat.1

LINKS  =	${BINDIR}/stat ${BINDIR}/readlink
MLINKS =	stat.1 readlink.1

.include <bsd.own.mk>

# Has fallthru comment that is missed
.if !defined(HOSTPROG) && defined(HAVE_GCC) && ${HAVE_GCC} == 7 && ${ACTIVE_CC} == "gcc"
COPTS.stat.c+=	-Wno-error=implicit-fallthrough
.endif

.include <bsd.own.mk>

# Has fallthru comment that is missed
.if !defined(HOSTPROG) && defined(HAVE_GCC) && ${HAVE_GCC} == 7 && ${ACTIVE_CC} == "gcc"
COPTS.stat.c+=	-Wno-error=implicit-fallthrough
.endif

COPTS.stat.c += -Wno-format-nonliteral

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "mkc_struct_stat.h"

.include "../mk/addlinks.mk"
