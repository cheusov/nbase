PROG =		ctags
CPPFLAGS +=	-I${.CURDIR}
SRCS =		C.c ctags.c fortran.c lisp.c print.c tree.c yacc.c

CFLAGS.check +=	-Wno-error=unused-result # system(...) on glibc/Linux-es

.include "../mk/addlinks.mk"
