# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _MKC_IMP_CURSES_MK
_MKC_IMP_CURSES_MK := 1

MKC_REQUIRE_HEADERS +=	curses.h

.include <mkc.conf.mk>

.if ${HAVE_HEADER.curses_h:U} == 1

LIB_CURSES   ?=	curses
LIB_NCURSES  ?=	ncurses

MKC_CHECK_DEFINES  +=	NCURSES_VERSION:curses.h

.include <mkc.conf.mk>

.if ${HAVE_DEFINE.NCURSES_VERSION.curses_h:U} == 1
libcurses=${LIB_NCURSES}
.else
libcurses=${LIB_CURSES}
.endif

MKC_CHECK_FUNCLIBS +=	main:${libcurses}

.include <mkc.conf.mk>

.if ${HAVE_FUNCLIB.main.${libcurses}}
LDADD +=	-l${libcurses}
.endif

#CPPFLAGS +=	-D_MKC_CHECK_CURSES

.endif # HAVE_HEADER.curses_h

.endif #_MKC_IMP_CURSES_MK
