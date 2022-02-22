PROG =		ctags
MAN  =		ctags.1
CPPFLAGS +=	-I${.CURDIR}
SRCS =		C.c ctags.c fortran.c lisp.c print.c tree.c yacc.c

CFLAGS.check +=	-Wno-error=unused-result # system(...) on glibc/Linux-es
CFLAGS.check +=	-ww2218 # for icc

.include "../mk/addlinks.mk"
