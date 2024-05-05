PROG      =	mtree
CPPFLAGS +=	-DMTREE -DHAVE_NBTOOL_CONFIG_H -I.
MAN       =	mtree.8
SRCS      =	compare.c crc.c create.c excludes.c misc.c mtree.c spec.c \
		specspec.c verify.c pack_dev.c only.c

MKC_CHECK_FUNCS4     +=	pwcache_groupdb:grp.h
MKC_REQUIRE_FUNCLIBS +=	fts_open:fts

.include <mkc.configure.mk>

.if ${HAVE_FUNC4.pwcache_groupdb.grp_h:U1}
SRCS +=		getid.c
.else
SRCS +=		fake_getid.c
.endif

CPPFLAGS+=	-I${.CURDIR}/../mknod

.PATH:		${.CURDIR}/../mknod
.NOPATH:	pack_dev.o

WARNERR   =	no

MKC_FEATURES         +=	fparseln LIST pwdgrp strsep vis

.include "../mk/hacks.mk"

.include "../mk/imp.f_macro.mk"
.include "../mk/imp.f_lchmod.mk"
.include "../mk/imp.f_flags_to_string.mk"
.include "../mk/imp.f_getsetmode.mk"
.include "../mk/imp.f_struct_stat.mk"
.include "../mk/imp.f_makedev.mk"
.include "../mk/imp.f_digestfuncs.mk"

.include "../mk/addlinks.mk"
