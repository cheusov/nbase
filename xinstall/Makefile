PROG =	xinstall
SRCS =	xinstall.c metachar.c
MAN  =	install.1

MKC_REQUIRE_FUNCLIBS =	SHA512Init:md

.PATH:		${.CURDIR}/../mtree ${.CURDIR}/../make
.NOPATH:	fake_getid.o getid.o

CPPFLAGS +=	-I${.CURDIR}/../mtree -I${.CURDIR}/../make -I${.CURDIR}

CPPFLAGS +=	-DHAVE_NBTOOL_CONFIG_H

COPTS.xinstall.c += -Wno-format-nonliteral

PROGNAME ?=	install

MKC_CHECK_FUNCS4     +=	pwcache_groupdb:grp.h

.include <mkc.configure.mk>

.if ${HAVE_FUNC4.pwcache_groupdb.grp_h:U1}
SRCS +=		getid.c
.else
SRCS +=		fake_getid.c
.endif

CFLAGS.check   +=	-Wno-error=deprecated-declarations
CFLAGS.check   +=	-Wno-error=unused-result # write(...) on glibc/Linux-es
CFLAGS.check   +=	-erroff=E_DEPRECATED_ATT # vfork(2) on SunOS
CFLAGS.check   +=	-ww2218 # for icc

.if ${TARGET_OPSYS} == "SunOS"
CFLAGS.check   +=	-Wno-error=pointer-sign
.endif

.include "../mk/hacks.mk"

.include "../mk/imp.f_getsetmode.mk"
.include "../mk/imp.f_flags_to_string.mk"
.include "../mk/imp.f_lchmod.mk"
.include "../mk/imp.f_struct_stat.mk"

MKC_FEATURES +=	fparseln LIST pwdgrp strsep vis errc

.include "../mk/addlinks.mk"
