MAN         =	spell.1
SCRIPTS     =	spell

SPECIALFILES =	special.math special.netbsd
FILES        =	american british stop ${SPECIALFILES}
FILESDIR     =	${DATADIR}/dict

.for F in ${SPECIALFILES}
FILESNAME_${F} =	${F:S/special.//}
FILESDIR_${F}  =	${DATADIR}/dict/special
.endfor

spell: spell.sh
	sed 's,@prefix@,${PREFIX},' ${.ALLSRC} > $@.tmp && mv $@.tmp $@

.include "../../mk/addlinks.mk"
