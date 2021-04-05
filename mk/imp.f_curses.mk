# Copyright (c) 2019 by Aleksey Cheusov
#
# See LICENSE file in the distribution.

.ifndef _IMP_CURSES_MK
_IMP_CURSES_MK := 1

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

MKC_REQUIRE_FUNCLIBS +=	main:${libcurses}

.include <mkc.conf.mk>

LDADD += -l${libcurses}

#CPPFLAGS +=	-D_IMP_CHECK_CURSES

.endif # HAVE_HEADER.curses_h

.endif #_IMP_CURSES_MK
