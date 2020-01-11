PROG=	stty
SRCS=	cchar.c gfmt.c key.c modes.c print.c stty.c

#CWARNFLAGS.clang+=	-Wno-string-plus-int

MKC_CHECK_DEFINES +=	_PATH_URANDOM:paths.h

MKC_CHECK_TYPES +=	linedn_t:termios.h

.include "../mk/mkc_imp.f_strsep.mk"

.include <mkc.configure.mk>

.if ${HAVE_DEFINE._PATH_URANDOM.paths_h:U} == 0
path_urandom =	"/dev/urandom"
CFLAGS +=	-D_PATH_URANDOM=${path_urandom:Q}
.endif

.include "../mk/addlinks.mk"
