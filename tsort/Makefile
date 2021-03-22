PROG =	tsort
MAN  =	tsort.1

MKC_NOAUTO_FUNCLIBS = 1

CPPFLAGS +=	-I${.OBJDIR}

tsort.o tsort.so tsort.po: db_header.h
db_header.h:
	echo '#include <${USE_DB_HEADER}>' > $@.tmp && mv $@.tmp $@

.include <mkc.configure.mk>

.if ${USE_DB_LIBNAME} != "c"
LDADD +=	-l${USE_DB_LIBNAME}
.endif

.include "../mk/addlinks.mk"
