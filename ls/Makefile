PROG=	ls
SRCS=	cmp.c ls.c main.c print.c util.c

MKC_CHECK_TYPES =	blkcnt_t:sys/stat.h

.include <mkc.init.mk>

.include "../mk/mkc_imp.f_pwdgrp.mk"
.include "../mk/mkc_imp.f_getbsize.mk"
.include "../mk/mkc_imp.f_strmode.mk"
.include "../mk/mkc_imp.f_humanize_number.mk"
.include "../mk/mkc_imp.f_vis.mk"

.include "../mk/addlinks.mk"
