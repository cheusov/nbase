#	$NetBSD: Makefile,v 1.9 2011/08/28 08:24:42 christos Exp $
#	@(#)Makefile	8.1 (Berkeley) 6/6/93

PROG =		time
SRCS =		time.c xtime.c

CPPFLAGS +=	-DNOT_CSH
CPPFLAGS +=	-I.

.PATH: ${.CURDIR}/csh

.include <mkc.prog.mk>
