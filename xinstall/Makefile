#	$NetBSD: Makefile,v 1.22 2011/08/17 14:00:30 christos Exp $
#	@(#)Makefile	8.1 (Berkeley) 6/6/93

PROG =	xinstall
SRCS =	xinstall.c getid.c
MAN =	install.1

.PATH:		${NETBSDSRCDIR}/usr.sbin/mtree
CPPFLAGS+=	-I${NETBSDSRCDIR}/usr.sbin/mtree

COPTS.xinstall.c += -Wno-format-nonliteral

PROGNAME?=install

.include <mkc.prog.mk>
