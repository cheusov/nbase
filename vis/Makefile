PROG =	vis
SRCS =	vis.c foldit.c
MAN  =	vis.1

CFLAGS.check +=	-Wno-error=unused-result # wctomb(...) and asprintf(...) on glibc/Linux-es
CFLAGS.check +=	-ww2218 # for icc

MKC_FEATURES +=	vis

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
