PROG   =	spellprog
SRCS   =	spellprog.c look.c
BINDIR =	${LIBEXECDIR}

MKC_FEATURES    +=	efun
MKC_CHECK_TYPES +=	u_char:sys/types.h

CPPFLAGS +=	-Dlint

.include "../../mk/addlinks.mk"
