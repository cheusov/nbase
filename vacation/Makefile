PROG =	vacation
MAN  =	vacation.1

CPPFLAGS +=	-I${.OBJDIR}

MKC_CHECK_HEADERS +=	paths.h

vacation.o vacation.so vacation.po: db_header.h
db_header.h:
	echo '#include <${USE_DB_HEADER}>' > $@.tmp && mv $@.tmp $@

.if ${USE_DB_LIBNAME} != "c"
LDADD +=	-l${USE_DB_LIBNAME}
.endif

CLEANFILES +=	db_header.h

.include "../mk/addlinks.mk"
