PROG=	ls
SRCS=	cmp.c ls.c main.c print.c util.c

.include <mkc.init.mk>

CFLAGS.check   +=	-Wno-error=return-type

MKC_CHECK_HEADERS =	sys/sysmacros.h # Linux/glibc-2.26 -- major/minor from sys/types.h are deprecated

.if ${OPSYS:U} == FreeBSD
WARNERR   =	no # FreeBSD has a bit different fts_open(3)
.endif

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_pwdgrp.mk"
.include "../mk/mkc_imp.f_getbsize.mk"
.include "../mk/mkc_imp.f_strmode.mk"
.include "../mk/mkc_imp.f_humanize_number.mk"
.include "../mk/mkc_imp.f_vis.mk"
.include "../mk/mkc_imp.f_types.mk"

.include "../mk/addlinks.mk"
