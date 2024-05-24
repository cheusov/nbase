PROG =	cmp
MAN  =	cmp.1
SRCS =	cmp.c misc.c regular.c special.c

MKC_FEATURES +=	progname err warn

.include <mkc.init.mk>

.if "${OPSYS}" == "SunOS"
# mmap(2) and munmap(2) on Solaris-10 is incompatible with other systems
CFLAGS.check +=	-erroff=E_ASSIGNMENT_TYPE_MISMATCH -erroff=E_ARG_INCOMPATIBLE_WITH_ARG_L
.endif

CFLAGS.check +=	-Wno-error=pointer-sign

.include "../mk/addlinks.mk"
