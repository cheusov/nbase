LIB = compatlib

MKC_CHECK_HEADER_FILES +=	sys/cdefs.h

MKC_FEATURES = posix_getopt

.include <mkc.configure.mk>

.if ${HAVE_HEADER_FILE.sys_cdefs_h:U} == 0
pre_all: ${.OBJDIR}/sys/cdefs.h
${.OBJDIR}/sys/cdefs.h: ${.CURDIR}/sys/cdefs.h.in
	cp ${.CURDIR}/sys/cdefs.h.in $@
.endif

CLEANFILES = ${.OBJDIR}/sys/cdefs.h
CPPFLAGS += -I. -I${.OBJDIR}

MKC_FEATURES +=	arc4random bswap dprintf efun errc fgetln fparseln \
   humanize_number pwdgrp raise_default_signal \
   reallocarray strndup strsep vis

.include "../mk/hacks.mk"

.include "../mk/imp.f_parsedate.mk"
.include "../mk/imp.f_sys_signame.mk"
.include "../mk/imp.f_getsetmode.mk"
.include "../mk/imp.f_strmode.mk"
.include "../mk/imp.f_getbsize.mk"
.include "../mk/imp.f_strsuftoll.mk"
.include "../mk/imp.f_funopen.mk"
.include "../mk/imp.f_timespeccmp.mk"
.include "../mk/imp.f_base64.mk"
.include "../mk/imp.f_fgetwln.mk"
.include "../mk/imp.f_lchmod.mk"
.include "../mk/imp.f_flags_to_string.mk"
.include "../mk/imp.f_endian_encdec.mk"
.include "../mk/imp.f_struct_stat.mk"
.include "../mk/imp.f_types.mk"
.include "../mk/imp.f_lutimes.mk"
.include "../mk/imp.f_bsd_signal.mk"
.include "../mk/imp.f_fpurge.mk"
.include "../mk/imp.f_utimens.mk"
.include "../mk/imp.f_strtoi.mk"
.include "../mk/imp.f_strtonum.mk"

.include <mkc.mk>
