PROG =	dd
MAN  =	dd.1
SRCS =	args.c conv.c dd.c misc.c position.c    dd_hostops.c

#.ifdef SMALLPROG
CPPFLAGS+=	-DNO_CONV -DNO_MSGFMT -DNO_IOFLAG -DSMALL
#.else
#CPPFLAGS+=	-D_NETBSD_SOURCE -D_INCOMPLETE_XOPEN_C063
#SRCS+=		conv_tab.c
#.ifdef CRUNCHEDPROG
#CPPFLAGS+=	-DSMALL
#.endif
#.endif

MKC_CHECK_HEADER_FILES +=	sys/mtio.h

MKC_FEATURES +=	humanize_number raise_default_signal strsep

# void swab(const void *restrict from, void *restrict to, ssize_t n);
CFLAGS.check +=	-Wno-error=restrict -erroff=E_ARG_INCOMPATIBLE_WITH_ARG_L \
	-Wno-error=pointer-sign

.include <mkc.init.mk>

.if "${TARGET_OPSYS}" == "SunOS"
# ioctl(2) on Solaris is incompatible with other systems
CFLAGS.check +=	-Wno-error=incompatible-pointer-types -erroff=E_INITIALIZATION_TYPE_MISMATCH
.endif

# write(2)
CFLAGS.check +=	-Wno-error=unused-result

.include <mkc.configure.mk>

.include "../mk/hacks.mk"

.include "../mk/imp.f_strsuftoll.mk"
.include "../mk/imp.f_posix_memalign.mk"

.include "../mk/addlinks.mk"
