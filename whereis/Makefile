PROG   =	whereis

MKC_CHECK_DEFINES  =	CTL_USER:sys/sysctl.h

.include <mkc.configure.mk>

.if ${HAVE_DEFINE.CTL_USER.sys_sysctl_h:U0}
MAN    =	whereis.1 which.1
LINKS  =	${BINDIR}/whereis ${BINDIR}/which
.else
MAN    =	which.1
PROGNAME =	which
.endif

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
