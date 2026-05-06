PROG =	cp
MAN  =	cp.1
SRCS =	cp.c utils.c

MKC_CHECK_FUNCS2 +=	fcpxattr:sys/extattr.h
MKC_REQUIRE_FUNCLIBS +=	fts_open:fts
MKC_CHECK_HEADERS    +=	sys/acl.h
MKC_CHECK_FUNCS2     += acl_get_fd_np:sys/acl.h

.include <mkc.configure.mk>

.if !${HAVE_FUNC1.acl_get_fd_np.sys_acl_h:U0}
CPPFLAGS             +=	-DSMALL=1
.endif

.include "../mk/hacks.mk"

.include "../mk/imp.f_lchmod.mk"
.include "../mk/imp.f_struct_stat.mk"
.include "../mk/imp.f_utimens.mk"

.include "../mk/addlinks.mk"
