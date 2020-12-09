PROG =	find
SRCS =	find.c function.c ls.c main.c misc.c operator.c option.c

CPPFLAGS +=	-D_NETBSD_SOURCE

MKC_REQUIRE_FUNCLIBS +=	fts_open:fts
MKC_FEATURES         +=	efun

.include <mkc.init.mk>

CFLAGS.check +=	-Wno-error=return-type
CFLAGS.check +=	-Wno-error=unused-result # write(...) on glibc/Linux-es

.if ${OPSYS:U} == FreeBSD
WARNERR   =	no # FreeBSD has a bit different fts_open(3)
.endif

.include "../mk/hacks.mk"

.include "../mk/imp.f_timespeccmp.mk"
.include "../mk/imp.f_getsetmode.mk"
.include "../mk/imp.f_pwdgrp.mk"
.include "../mk/imp.f_strmode.mk"
.include "../mk/imp.f_struct_stat.mk"
.include "../mk/imp.f_struct_statvfs.mk"

.include "../mk/addlinks.mk"
