PROG =	mktemp
MAN  =	mktemp.1

CFLAGS.check +=	-Wno-error=unused-result # asprintf(...) on glibc/Linux-es
CFLAGS.check +=	-ww2218 # for icc

.include "../mk/addlinks.mk"
