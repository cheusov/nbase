PROG =	vis
SRCS =	vis.c foldit.c

CFLAGS.check +=	-Wno-error=unused-result # wctomb(...) and asprintf(...) on glibc/Linux-es

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_vis.mk"

.include "../mk/addlinks.mk"
