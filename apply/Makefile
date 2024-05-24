PROG    =	apply
MAN     =	apply.1

# sigmask, sigblock etc. are deprecated on some systems
CFLAGS.check +=	-Wno-error=deprecated-declarations
CFLAGS.check +=	-Wno-error

.include "../mk/imp.f_bsd_signal.mk"

.include "../mk/addlinks.mk"
