PROG =		expr
MAN  =		expr.1
SRCS =		expr.y

MKC_FEATURES +=	err

CFLAGS.check +=	-erroff=E_STATEMENT_NOT_REACHED
CFLAGS.check +=	-Wno-error=unused-result # asprintf(...) on glibc/Linux-es
CFLAGS.check +=	-Wno-error=unused-const-variable
CFLAGS.check +=	-ww2218 # for icc

.include "../mk/addlinks.mk"
