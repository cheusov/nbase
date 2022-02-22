PROG =	uniq
MAN  =	uniq.1

MKC_FEATURES +=		fgetln

CFLAGS.check +=	-Wno-error=unused-result # asprintf(...) on glibc/Linux-es
CFLAGS.check +=	-ww2218 # for icc

.include "../mk/addlinks.mk"
