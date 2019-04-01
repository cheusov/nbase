PROG=   pax
SRCS=	ar_io.c ar_subs.c buf_subs.c file_subs.c ftree.c\
	gen_subs.c getoldopt.c options.c pat_rep.c pax.c sel_subs.c tables.c\
	tar.c tty_subs.c

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

MKC_FEATURES =	strlcpy fgetln
MKC_CHECK_HEADER_FILES +=	sys/mtio.h

.include <mkc.configure.mk>

.include "../mk/mkc_imp.f_strmode.mk"
.include "../mk/mkc_imp.f_lchmod.mk"
.include "../mk/mkc_imp.f_vis.mk"
.include "../mk/mkc_imp.f_getsetmode.mk"
.include "../mk/mkc_imp.f_pwdgrp.mk"
.include "../mk/mkc_imp.f_raise_default_signal.mk"
.include "../mk/mkc_imp.f_struct_stat.mk"

.include "../mk/addlinks.mk"
