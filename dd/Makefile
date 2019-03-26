#.include <bsd.own.mk>

#RUMPPRG=dd
PROG=	dd
SRCS=	args.c conv.c dd.c misc.c position.c    dd_hostops.c

#DPADD +=	${LIBUTIL}
#LDADD +=	-lutil

#.ifdef SMALLPROG
CPPFLAGS+=	-DNO_CONV -DNO_MSGFMT -DNO_IOFLAG -DSMALL
#.else
#CPPFLAGS+=	-D_NETBSD_SOURCE -D_INCOMPLETE_XOPEN_C063
#SRCS+=		conv_tab.c
#.ifdef CRUNCHEDPROG
#CPPFLAGS+=	-DSMALL
#.endif
#.endif

.include "../mk/mkc_imp.f_raise_default_signal.mk"
.include "../mk/mkc_imp.f_strsuftoll.mk"
.include "../mk/mkc_imp.f_humanize_number.mk"

.include "../mk/addlinks.mk"
