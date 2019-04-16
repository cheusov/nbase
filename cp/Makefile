PROG=	cp
SRCS=	cp.c utils.c

MKC_CHECK_FUNCS2 +=	fcpxattr:sys/extattr.h

.include <mkc.configure.mk>

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_lchmod.mk"
.include "../mk/mkc_imp.f_struct_stat.mk"

.include "../mk/addlinks.mk"
