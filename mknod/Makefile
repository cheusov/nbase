PROG =	mknod
SRCS =	mknod.c pack_dev.c
MAN  =	mknod.8

.include <mkc.init.mk>

CFLAGS.warns.gcc.4    +=	-Wno-error=cpp
CFLAGS.warns.clang.4  +=	-Wno-error=cpp

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_getsetmode.mk"
.include "../mk/mkc_imp.f_pwdgrp.mk"
.include "../mk/mkc_imp.f_makedev.mk"

.include "../mk/addlinks.mk"
