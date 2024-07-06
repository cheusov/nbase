PROG=   pax
SRCS=	ar_io.c ar_subs.c buf_subs.c file_subs.c ftree.c \
	gen_subs.c getoldopt.c options.c pat_rep.c pax.c sel_subs.c tables.c \
	tar.c tty_subs.c

MAN+=	pax.1

CPPFLAGS+=	-DHAVE_NBTOOL_CONFIG_H

.if defined(SMALLPROG)
CPPFLAGS+=	-DSMALL -DNO_CPIO
.else
.PATH:		${.CURDIR}/../mtree ${.CURDIR}/../mknod
.NOPATH:	getid.o spec.o misc.o pack_dev.o getid.o fake_getid.o

CPPFLAGS+=	-I../mtree -I../mknod

MAN+=		tar.1 cpio.1
MKC_CHECK_FUNCS4     +=	pwcache_groupdb:grp.h

.include <mkc.configure.mk>

. if ${HAVE_FUNC4.pwcache_groupdb.grp_h:U1}
SRCS +=	getid.c
. else
SRCS +=	fake_getid.c
. endif

SRCS+=		spec.c misc.c pack_dev.c cpio.c

. if ${MKBSDTAR:U} != "no"
LINKS+=	${BINDIR}/pax ${BINDIR}/tar
LINKS+=	${BINDIR}/pax ${BINDIR}/cpio
. endif

MKC_FEATURES +=	fparseln SLIST posix_getopt err warn
.endif	# SMALLPROG

#.if !defined(HOSTPROG) && !defined(SMALLPROG)
#CPPFLAGS+=	-DSUPPORT_RMT

#LDADD+=	-lrmt
#DPADD+=	${LIBRMT}
#.endif

MKC_FEATURES +=	fgetln macro pwdgrp raise_default_signal strlcpy vis

MKC_CHECK_HEADER_FILES +=	sys/mtio.h
MKC_REQUIRE_FUNCLIBS +=	fts_open:fts

# write(2)
CFLAGS.check +=		-Wno-error=unused-result

# clang-16 and options.c "if ((num == OFFT_MAX) || ..."
CFLAGS.check +=		-Wno-error=tautological-constant-out-of-range-compare

.include <mkc.configure.mk>

.include "../mk/hacks.mk"

.include "../mk/imp.f_macro.mk"
.include "../mk/imp.f_lchmod.mk"
.include "../mk/imp.f_flags_to_string.mk"
.include "../mk/imp.f_getsetmode.mk"
.include "../mk/imp.f_struct_stat.mk"
.include "../mk/imp.f_makedev.mk"
.include "../mk/imp.f_types.mk"
.include "../mk/imp.f_lutimes.mk"
.include "../mk/imp.f_strmode.mk"

.include "../mk/addlinks.mk"
