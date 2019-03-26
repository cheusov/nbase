PROG =	find
SRCS =	find.c function.c ls.c main.c misc.c operator.c option.c

CPPFLAGS +=	-D_NETBSD_SOURCE

#LDADD+=-lutil
#DPADD+=${LIBUTIL}

.include "../mk/mkc_imp.f_timespeccmp.mk"
.include "../mk/mkc_imp.f_efun.mk"
.include "../mk/mkc_imp.f_getsetmode.mk"
.include "../mk/mkc_imp.f_pwdgrp.mk"
.include "../mk/mkc_imp.f_strmode.mk"

.include "../mk/addlinks.mk"
