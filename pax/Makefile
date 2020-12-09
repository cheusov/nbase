PROG=   pax
SRCS=	ar_io.c ar_subs.c buf_subs.c file_subs.c ftree.c\
	gen_subs.c getoldopt.c options.c pat_rep.c pax.c sel_subs.c tables.c\
	tar.c tty_subs.c

MKC_REQUIRE_FUNCLIBS +=	fts_open:fts

SMALLPROG=1

.if defined(SMALLPROG)
CPPFLAGS+=	-DSMALL -DNO_CPIO
.else
SRCS+=		getid.c spec.c misc.c pack_dev.c cpio.c
CPPFLAGS+=	-I${NETBSDSRCDIR}/usr.sbin/mtree \
		-I${NETBSDSRCDIR}/sbin/mknod
.PATH:		${NETBSDSRCDIR}/usr.sbin/mtree \
		${NETBSDSRCDIR}/sbin/mknod

.if (${HOSTPROG:U} == "")
DPADD+= ${LIBUTIL}
LDADD+= -lutil
.endif
.endif

MAN=	pax.1 tar.1 cpio.1

.if defined(HOSTPROG)
CPPFLAGS+=	-DHOSTPROG
.else	# {	! HOSTPROG

# XXX: Interix does not have it; we need a conditional for it.
CPPFLAGS+=	-DHAVE_NBTOOL_CONFIG_H

.if ${MKBSDTAR:U} == "no"
LINKS+=	${BINDIR}/pax ${BINDIR}/tar
SYMLINKS+=${BINDIR}/tar /usr/bin/tar

LINKS+=	${BINDIR}/pax ${BINDIR}/cpio
SYMLINKS+=${BINDIR}/cpio /usr/bin/cpio
.endif
.endif	# }	! HOSTPROG

.if !defined(HOSTPROG) && !defined(SMALLPROG)
CPPFLAGS+=	-DSUPPORT_RMT

LDADD+=	-lrmt
DPADD+=	${LIBRMT}
.endif

MKC_FEATURES =	fgetln raise_default_signal strlcpy vis
MKC_CHECK_HEADER_FILES +=	sys/mtio.h
MKC_CHECK_HEADERS =	sys/sysmacros.h # Linux/glibc-2.26 -- major/minor from sys/types.h are deprecated
MKC_REQUIRE_FUNCLIBS +=	fts_open:fts

# Disable -Werror because of warning with gcc-8
#   tar.c: In function 'ustar_wr':
#   tar.c:1210:3: error: 'strncpy' output truncated before terminating nul copying 2 bytes from a string of the same length [-Werror=stringop-truncation]
#      strncpy(hd->version, TVERSION, TVERSLEN);
WARNERR =	no

.include <mkc.configure.mk>

.include "../mk/hacks.mk"

.include "../mk/imp.f_strmode.mk"
.include "../mk/imp.f_lchmod.mk"
.include "../mk/imp.f_getsetmode.mk"
.include "../mk/imp.f_pwdgrp.mk"
.include "../mk/imp.f_struct_stat.mk"
.include "../mk/imp.f_types.mk"
.include "../mk/imp.f_lutimes.mk"

.include "../mk/addlinks.mk"
