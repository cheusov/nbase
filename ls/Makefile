PROG =	ls
MAN  =	ls.1
SRCS =	cmp.c ls.c main.c print.c util.c

MKC_REQUIRE_FUNCLIBS +=	fts_open:fts

.include <mkc.init.mk>

CFLAGS.check   +=	-Wno-error=return-type

MKC_CHECK_HEADERS =	sys/sysmacros.h # Linux/glibc-2.26 -- major/minor from sys/types.h are deprecated

.if ${OPSYS:U} == FreeBSD
WARNERR   =	no # FreeBSD has a bit different fts_open(3)
.endif

MKC_REQUIRE_FUNCLIBS +=	fts_open:fts

MKC_FEATURES += humanize_number pwdgrp vis

.include "../mk/hacks.mk"

.include "../mk/imp.f_getbsize.mk"
.include "../mk/imp.f_strmode.mk"
.include "../mk/imp.f_types.mk"

.include "../mk/addlinks.mk"
