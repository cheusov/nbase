.ifdef LINKSPREFIX
.include <mkc.init.mk>

LBINDIR  ?=	${BINDIR:S/${PREFIX}/${LINKSPREFIX}/}
LSBINDIR ?=	${SBINDIR:S/${PREFIX}/${LINKSPREFIX}/}
LMANDIR  ?=	${MANDIR:S/${PREFIX}/${LINKSPREFIX}/}

.for p in ${PROGNAME:U${PROGS}}
SYMLINKS +=	${BINDIR}/${p} ${LBINDIR}/nb-${p}
.endfor

.for s in ${SCRIPTS}
SYMLINKS +=	${BINDIR}/${SCRIPTSNAME_${s}:U${s}} ${LBINDIR}/nb-${SCRIPTSNAME_${s}:U${s}}
.endfor

.for from to in ${LINKS:U}
SYMLINKS +=	${from:S,^${DESTDIR},,} ${LBINDIR}/nb-${to:T}
.endfor

.for m in ${MAN:U${PROG}.1}
SYMLINKS +=	${MANDIR}/man${m:E}/${m} ${LMANDIR}/man${m:E}/nb-${m}
.endfor

.for m mto in ${MLINKS}
SYMLINKS +=	${MANDIR}/man${m:E}/${m} ${LMANDIR}/man${m:E}/nb-${mto}
.endfor

.endif # LINKSPREFIX

.include <mkc.mk>
