PROG =	xinstall
SRCS =	xinstall.c getid.c
MAN  =	install.1

.PATH:		${.CURDIR}/../mtree
CPPFLAGS +=	-I${.CURDIR}/../mtree -I${.CURDIR}/

CPPFLAGS +=	-D HAVE_NBTOOL_CONFIG_H

COPTS.xinstall.c += -Wno-format-nonliteral

PROGNAME ?=	install

.include <mkc.init.mk>

.if ${TARGET_OPSYS} == "SunOS"
CFLAGS.warns.gcc.4     +=	-Wno-error=pointer-sign
CFLAGS.warns.clang.4   +=	-Wno-error=pointer-sign
.endif

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_getsetmode.mk"
.include "../mk/mkc_imp.f_pwdgrp.mk"
.include "../mk/mkc_imp.f_vis.mk"
.include "../mk/mkc_imp.f_flags_to_string.mk"
.include "../mk/mkc_imp.f_lchmod.mk"
.include "../mk/mkc_imp.f_struct_stat.mk"
.include "../mk/mkc_imp.f_strsep.mk"
.include "../mk/mkc_imp.f_fparseln.mk"

.include "../mk/addlinks.mk"
