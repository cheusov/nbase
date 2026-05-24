CPPFLAGS+=	-I.

PROG    =	ksh
MAN     =	ksh.1
SRCS    =	alloc.c c_ksh.c c_sh.c c_test.c c_ulimit.c edit.c emacs.c \
		eval.c exec.c expr.c history.c io.c jobs.c lex.c mail.c \
		main.c misc.c path.c shf.c syn.c table.c trap.c tree.c tty.c \
		var.c version.c vi.c
DPSRCS  =	emacs.out siglist.out
DPSRCS +=	ksh.1

# CCSTD   =	c11

MKC_FEATURES +=	arc4random macro strlcpy strlcat

# needs tbl for the man page.
# USETBL= 

# Environment for scripts executed during build.
SCRIPT_ENV= \
	AWK=${AWK:Q} \
	SED=${SED:Q}

CLEANFILES+=	siglist.out siglist.out.tmp
# two steps to prevent the creation of a bogus siglist.out
trap.o trap.os: siglist.out
siglist.out: config.h sh.h siglist.in siglist.sh
	${_MKTARGET_CREATE}
	${SCRIPT_ENV} \
	${HOST_SH} $(.CURDIR)/siglist.sh "$(CC) -E $(CPPFLAGS) $(DEFS) -I. -I$(.CURDIR)" < $(.CURDIR)/siglist.in > siglist.out.tmp \
	    && mv siglist.out.tmp siglist.out

# two steps to prevent the creation of a bogus emacs.out
CLEANFILES +=	emacs.out emacs.out.tmp
emacs.o emacs.os: emacs.out
emacs.out: emacs.c
	${SCRIPT_ENV} \
	${HOST_SH} $(.CURDIR)/emacs-gen.sh $(.CURDIR)/emacs.c > emacs.out.tmp \
	    && mv emacs.out.tmp emacs.out

CLEANFILES +=	ksh.1 ksh.1.tmp
ksh.1: ksh.Man mkman
	${SCRIPT_ENV} \
	${HOST_SH} $(.CURDIR)/mkman ksh $(.CURDIR)/ksh.Man >ksh.1.tmp \
	    && mv ksh.1.tmp ksh.1

CFLAGS.check +=	-Wno-error=implicit-fallthrough
CFLAGS.check +=	-Wno-error=unused-result # jobs.c:nice
CFLAGS.check +=	-Wno-error=deprecated-non-prototype # failed with C23
CFLAGS.check +=	-Wno-error=cast-qual # xp->u.strv = (const char **) XPptrv(wv);

.include "../mk/imp.f_macro.mk"
.include "../mk/imp.f_setproctitle.mk"
.include <mkc.prog.mk>
