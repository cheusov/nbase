PROG =	mknod
SRCS =	mknod.c pack_dev.c
MAN  =	mknod.8

.include <mkc.init.mk>

CFLAGS.check    +=	-Wno-error=cpp

.include "../mk/hacks.mk"

.include "../mk/imp.f_getsetmode.mk"
.include "../mk/imp.f_pwdgrp.mk"
.include "../mk/imp.f_makedev.mk"

.include "../mk/addlinks.mk"
