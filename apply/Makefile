PROG    =	apply
MAN     =	apply.1

# sigmask, sigblock etc. are deprecated on some systems
CFLAGS.check +=	-Wno-error=deprecated-declarations
CFLAGS.check +=	-Wno-error

MKC_CHECK_TYPES    =	sig_t:signal.h

MKC_FEATURES +=		err warn

.include "../mk/imp.f_bsd_signal.mk"

.include "../mk/addlinks.mk"
