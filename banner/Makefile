PROG =	banner
MAN  =	banner.1

SRCS =	$(PROG).c chset.c

# if you want to make chars from the letter involved (like lpd), then
# un-comment the following.
#CPPFLAGS+= -DNOHASH_ONLY

# if you want to use the same char set that lpd uses then un-comment
# the following.  Lpd uses a much nicer character set but banner
# output will not be the same as the real thing.
#CPPFLAGS+= -DLPD_CHSET

CFLAGS.check   +=	-Wno-error=unused-result # write(...) on glibc/Linux-es
CFLAGS.check   +=	-ww2218

.include "../mk/addlinks.mk"
