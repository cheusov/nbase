PROG                  =	rm
MAN                   =	rm.1

MKC_CHECK_FUNCS1      =	undelete:unistd.h
MKC_REQUIRE_FUNCLIBS +=	fts_open:fts
MKC_FEATURES         +=	arc4random pwdgrp err warn

.include <mkc.init.mk>

.include "../mk/hacks.mk"

.include "../mk/imp.f_strmode.mk"

.include "../mk/addlinks.mk"
