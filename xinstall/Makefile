PROG =	xinstall
SRCS =	xinstall.c getid.c
MAN  =	install.1

.PATH:		../mtree
CPPFLAGS +=	-I../mtree -I.

CPPFLAGS +=	-D HAVE_NBTOOL_CONFIG_H

COPTS.xinstall.c += -Wno-format-nonliteral

PROGNAME ?=	install

.include "../mk/addlinks.mk"
