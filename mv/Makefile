PROG =	mv
MAN  =	mv.1

MKC_CHECK_FUNCS2 +=	fcpxattr:sys/extattr.h

.include <mkc.init.mk>

CFLAGS.check  +=	-Wno-error=deprecated-declarations
CFLAGS.check  +=	-erroff=E_DEPRECATED_ATT

MKC_FEATURES  +=	pwdgrp

.include "../mk/hacks.mk"

.include "../mk/imp.f_strmode.mk"
.include "../mk/imp.f_struct_stat.mk"
.include "../mk/imp.f_types.mk"

.include "../mk/addlinks.mk"
