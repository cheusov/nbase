PROG =	xinstall
SRCS =	xinstall.c getid.c
MAN =	install.1

.PATH:		${NETBSDSRCDIR}/usr.sbin/mtree
CPPFLAGS+=	-I${NETBSDSRCDIR}/usr.sbin/mtree

COPTS.xinstall.c += -Wno-format-nonliteral

PROGNAME?=install

.include "../mk/addlinks.mk"
