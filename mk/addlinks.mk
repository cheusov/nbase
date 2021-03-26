.ifdef LINKSPREFIX
.include <mkc.init.mk>

LBINDIR  ?=	${BINDIR:S/${PREFIX}/${LINKSPREFIX}/}
LSBINDIR ?=	${SBINDIR:S/${PREFIX}/${LINKSPREFIX}/}
LMANDIR  ?=	${MANDIR:S/${PREFIX}/${LINKSPREFIX}/}
USE_NB_PREFIX ?=	nb

.if ${USE_NB_PREFIX} != "nb" && ${USE_NB_PREFIX} != "nb-"
.error "Only nb or nb- values are allowed for USE_NB_PREFIX variable"
.endif

.for p in ${PROGNAME:U${PROGS}}
SYMLINKS +=	${BINDIR}/${p} ${LBINDIR}/${USE_NB_PREFIX}${p}
.endfor

.for s in ${SCRIPTS}
SYMLINKS +=	${BINDIR}/${SCRIPTSNAME_${s}:U${s}} ${LBINDIR}/${USE_NB_PREFIX}${SCRIPTSNAME_${s}:U${s}}
.endfor

.for from to in ${LINKS:U}
SYMLINKS +=	${from:S,^${DESTDIR},,} ${LBINDIR}/${USE_NB_PREFIX}${to:T}
.endfor

.for m in ${MAN:U${PROG}.1}
SYMLINKS +=	${MANDIR}/man${m:E}/${m} ${LMANDIR}/man${m:E}/${USE_NB_PREFIX}${m}
.endfor

.for m mto in ${MLINKS}
SYMLINKS +=	${MANDIR}/man${m:E}/${m} ${LMANDIR}/man${m:E}/${USE_NB_PREFIX}${mto}
.endfor

.endif # LINKSPREFIX

.include <mkc.mk>
