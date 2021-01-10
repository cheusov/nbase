PROG =	dd
MAN  =	dd.1
SRCS =	args.c conv.c dd.c misc.c position.c    dd_hostops.c

#.ifdef SMALLPROG
CPPFLAGS+=	-DNO_CONV -DNO_MSGFMT -DNO_IOFLAG -DSMALL
#.else
#CPPFLAGS+=	-D_NETBSD_SOURCE -D_INCOMPLETE_XOPEN_C063
#SRCS+=		conv_tab.c
#.ifdef CRUNCHEDPROG
#CPPFLAGS+=	-DSMALL
#.endif
#.endif

WARNERR = 	no # SunOS-5.11

MKC_CHECK_HEADER_FILES +=	sys/mtio.h

MKC_FEATURES +=	raise_default_signal strsep

.include <mkc.configure.mk>

.include "../mk/hacks.mk"

.include "../mk/imp.f_strsuftoll.mk"
.include "../mk/imp.f_humanize_number.mk"

.include "../mk/addlinks.mk"
