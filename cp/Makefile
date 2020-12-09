PROG=	cp
SRCS=	cp.c utils.c

MKC_CHECK_FUNCS2 +=	fcpxattr:sys/extattr.h
MKC_REQUIRE_FUNCLIBS +=	fts_open:fts

.include <mkc.configure.mk>

.include "../mk/hacks.mk"

.include "../mk/imp.f_lchmod.mk"
.include "../mk/imp.f_struct_stat.mk"

.include "../mk/addlinks.mk"
