PROG=		expr
SRCS=		expr.y

CFLAGS.check +=	-erroff=E_STATEMENT_NOT_REACHED
CFLAGS.check +=	-Wno-error=unused-result # asprintf(...) on glibc/Linux-es

.include "../mk/addlinks.mk"
