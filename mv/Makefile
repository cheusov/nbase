PROG=	mv

MKC_CHECK_FUNCS2 +=	fcpxattr:sys/extattr.h

.include <mkc.init.mk>

CFLAGS.warns.gcc.4    +=	-Wno-error=deprecated-declarations
CFLAGS.warns.clang.4  +=	-Wno-error=deprecated-declarations
CFLAGS.warns.sunpro.4 +=	-erroff=E_DEPRECATED_ATT

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_pwdgrp.mk"
.include "../mk/mkc_imp.f_strmode.mk"
.include "../mk/mkc_imp.f_struct_stat.mk"
.include "../mk/mkc_imp.f_types.mk"

.include "../mk/addlinks.mk"
