PROG =	vis
SRCS =	vis.c foldit.c

CFLAGS.check +=	-Wno-error=unused-result # wctomb(...) and asprintf(...) on glibc/Linux-es

MKC_FEATURES +=	vis

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
