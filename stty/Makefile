#	$NetBSD: Makefile,v 1.11 2012/04/04 10:59:44 joerg Exp $
#	@(#)Makefile	8.1 (Berkeley) 5/31/93

PROG=	stty
SRCS=	cchar.c gfmt.c key.c modes.c print.c stty.c

#CWARNFLAGS.clang+=	-Wno-string-plus-int

MKC_CHECK_DEFINES +=	_PATH_URANDOM:paths.h

MKC_CHECK_TYPES +=	linedn_t:termios.h

.include <mkc.configure.mk>

.if ${HAVE_DEFINE._PATH_URANDOM.paths_h:U} == 0
path_urandom =	"/dev/urandom"
CFLAGS +=	-D_PATH_URANDOM=${path_urandom:Q}
.endif

.include <mkc.prog.mk>
