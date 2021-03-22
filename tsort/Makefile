PROG =	tsort
MAN  =	tsort.1

MKC_CHECK_FUNCLIBS +=	dbopen:db1 dbopen:db

MKC_NOAUTO_FUNCLIBS = 1

.include <mkc.configure.mk>

.if ${HAVE_FUNCLIB.dbopen:U1} == 1
# ok, dbopen(3) is in libc
.elif ${HAVE_FUNCLIB.dbopen.db1:U1} == 1
LDADD +=	-ldb1
.elif ${HAVE_FUNCLIB.dbopen.db:U1} == 1
LDADD +=	-ldb
.else
.error "Cannot find dbopen function libdb1 and libc"
.endif

.include "../mk/addlinks.mk"
