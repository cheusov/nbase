CALENDARS=	birthday christian computer history holiday judaic \
		lotr music netbsd usholiday

PROG =		calendar
MAN  =		calendar.1

FILESDIR =	${DATADIR}/calendar
.for _C_ in ${CALENDARS}
FILES   +=	${.CURDIR}/calendars/calendar.${_C_}
.endfor

.include "../mk/addlinks.mk"
