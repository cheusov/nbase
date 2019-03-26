PROG      =	mtree
CPPFLAGS +=	-DMTREE -DHAVE_NBTOOL_CONFIG_H -I.
MAN       =	mtree.8
SRCS      =	compare.c crc.c create.c excludes.c misc.c mtree.c spec.c \
		specspec.c verify.c getid.c pack_dev.c only.c

CPPFLAGS+=	-I${.CURDIR}/../mknod
.PATH:		${.CURDIR}/../mknod

.include <mkc.init.mk>

.include "../mk/mkc_imp.f_lchmod.mk"
.include "../mk/mkc_imp.f_flags_to_string.mk"
.include "../mk/mkc_imp.f_fparseln.mk"
.include "../mk/mkc_imp.f_pwdgrp.mk"
.include "../mk/mkc_imp.f_vis.mk"
.include "../mk/mkc_imp.f_getsetmode.mk"

.include "../mk/addlinks.mk"
