PROG =	find
SRCS =	find.c function.c ls.c main.c misc.c operator.c option.c

CPPFLAGS +=	-D_NETBSD_SOURCE

MKC_REQUIRE_FUNCLIBS +=	fts_open:fts

.include <mkc.init.mk>

.if ${OPSYS:U} == FreeBSD
WARNERR   =	no # FreeBSD has a bit different fts_open(3)
.endif

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_timespeccmp.mk"
.include "../mk/mkc_imp.f_efun.mk"
.include "../mk/mkc_imp.f_getsetmode.mk"
.include "../mk/mkc_imp.f_pwdgrp.mk"
.include "../mk/mkc_imp.f_strmode.mk"
.include "../mk/mkc_imp.f_struct_stat.mk"
.include "../mk/mkc_imp.f_struct_statvfs.mk"

.include "../mk/addlinks.mk"
