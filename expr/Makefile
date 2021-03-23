PROG =		expr
MAN  =		expr.1
SRCS =		expr.y

CFLAGS.check +=	-erroff=E_STATEMENT_NOT_REACHED
CFLAGS.check +=	-Wno-error=unused-result # asprintf(...) on glibc/Linux-es
CFLAGS.check +=	-Wno-error=unused-const-variable

.include "../mk/addlinks.mk"
