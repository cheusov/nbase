PROG =		csplit
MAN  =		csplit.1

CFLAGS.check +=	-Wno-error=unused-result # write(...) on glibc/Linux-es

MKC_FEATURES +=	raise_default_signal

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/addlinks.mk"
