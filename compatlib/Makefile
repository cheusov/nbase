LIB = compatlib

MKC_CHECK_HEADER_FILES +=	sys/cdefs.h

.include <mkc.configure.mk>

.if ${HAVE_HEADER_FILE.sys_cdefs_h:U} == 0
pre_all: ${.OBJDIR}/sys/cdefs.h
${.OBJDIR}/sys/cdefs.h: ${.CURDIR}/sys/cdefs.h.in
	cp ${.CURDIR}/sys/cdefs.h.in $@
.endif

CLEANFILES = ${.OBJDIR}/sys/cdefs.h
CPPFLAGS += -I. -I${.OBJDIR}

.include "../mk/hacks.mk"

.include "../mk/mkc_imp.f_parsedate.mk"
.include "../mk/mkc_imp.f_sys_signame.mk"
.include "../mk/mkc_imp.f_getsetmode.mk"
.include "../mk/mkc_imp.f_pwdgrp.mk"
.include "../mk/mkc_imp.f_strmode.mk"
.include "../mk/mkc_imp.f_getbsize.mk"
.include "../mk/mkc_imp.f_humanize_number.mk"
.include "../mk/mkc_imp.f_vis.mk"
.include "../mk/mkc_imp.f_strsuftoll.mk"
.include "../mk/mkc_imp.f_efun.mk"
.include "../mk/mkc_imp.f_raise_default_signal.mk"
.include "../mk/mkc_imp.f_funopen.mk"
.include "../mk/mkc_imp.f_timespeccmp.mk"
.include "../mk/mkc_imp.f_errc.mk"
.include "../mk/mkc_imp.f_base64.mk"
.include "../mk/mkc_imp.f_fgetwln.mk"
.include "../mk/mkc_imp.f_reallocarray.mk"
.include "../mk/mkc_imp.f_bswap.mk"
.include "../mk/mkc_imp.f_fparseln.mk"
.include "../mk/mkc_imp.f_lchmod.mk"
.include "../mk/mkc_imp.f_bsd_getopt.mk"
.include "../mk/mkc_imp.f_flags_to_string.mk"
.include "../mk/mkc_imp.f_endian_encdec.mk"
.include "../mk/mkc_imp.f_dprintf.mk"
.include "../mk/mkc_imp.f_struct_stat.mk"
.include "../mk/mkc_imp.f_arc4random.mk"
.include "../mk/mkc_imp.f_types.mk"
.include "../mk/mkc_imp.f_lutimes.mk"

.include <mkc.mk>
