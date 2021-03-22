# WILL NOT BE SUPPORTED: ps

# TBD: calendar chio date db flock gcore getaddrinfo getent
# iconv infocmp ipcs ipcrm lock logger mt nbperf stat stty time touch tsort
# uname uuidgen vgrind whereis xlint

# TBD: disklabel dump apropos biff cvslatest dc finger gencat
# gettext ipcrm ipcs ldd? locale (whatis man) (mesg talk write) mkesdb
# mklocale mkubootimage nbperf nbsvtool newsyslog pagesize pathchk
# progress sortinfo spell tic (tip, cu) vacation
# unlinke
# usr.sbin

# NET: ftp rcmd rcp rdist rup rwho rwall ruptime rusers rlogin rsh

#PROJECTS = bdes csh db ksh sh at checknr chflags	\
#  crunch locate

# TBD: units -- /usr/share/misc/units.lib is missing
MKC_REQD     =	0.36.0

MKC_CHECK_HEADER_FILES  = fts.h sys/sysctl.h term.h
MKC_CHECK_HEADERS  =	tzfile.h termcap.h
MKC_CHECK_FUNCS5   =	openpty:pty.h openpty:util.h dbopen:db.h
MKC_CHECK_FUNCS4   =	getgrouplist:grp.h getgrouplist:unistd.h
MKC_CHECK_FUNCS3   =	logwtmp:util.h
MKC_CHECK_FUNCS2   =	getdomainname:unistd.h makedev:sys/sysmacros.h \
  makedev:sys/types.h
MKC_CHECK_FUNCS1   =	signalname:signal.h
MKC_CHECK_DEFINES  =	TIMESPEC_TO_TIMEVAL:sys/time.h REG_STARTEND:regex.h

MKC_FUNC_OR_DEFINE.makedev =	yes

.include "help.mk"

.include <mkc.configure.mk>

PROJECTS += apply asa nawk/bin banner basename cal cat chmod chown      \
  cksum cleantags \
  cmp col colcrt colrm column comm compress cp csplit ctags cut date    \
  deroff dd	\
  dirname domainname du echo ed env error expand expr false fgen find	\
  fmt fold fpr from fsplit getconf getopt grep head hexdump hostname	\
  id indent join jot kill lam leave libndigest ln logname look lorder	\
  ls m4	\
  machine menuc mkdep mkdir mkfifo mknod mkstr mktemp msgc mtree mv     \
  nice nl nohup	                                                        \
  paste patch pax pr printenv printf pwd qsubst renice rev rm rmdir	\
  rs script sdiff sed seq shar shlock shuffle sleep soelim sort split	\
  sync tabs tail tee testcmd timeout tr true tsort tty ul unexpand	\
  unifdef uniq unvis uudecode uuencode vis wc what whois xargs xinstall	\
  xstr yes

.if ${HAVE_FUNC5.openpty.pty_h:U1} != 1 && ${HAVE_FUNC5.openpty.util_h:U1} != 1
.  for t in script
   WARN_MSG += "Exclude ${t} due to missing openpty"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_HEADER_FILE.sys_sysctl_h:U1} != 1
.  for t in mknod
   WARN_MSG += "Exclude ${t} due to missing sys/sysctl.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_HEADER_FILE.fts_h:U1} != 1
.  for t in chmod cp du find grep ls mtree pax rm xinstall
   WARN_MSG += "Exclude ${t} due to missing fts.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_HEADER.termcap_h:U1} != 1
.  for t in qsubst
   WARN_MSG += "Exclude ${t} due to missing termcap.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_TYPE.sig_t.signal_h:U1} != 1
.  for t in apply patch
   WARN_MSG += "Exclude ${t} due to missing sig_t in signal.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_HEADER_FILE.term_h:U1} != 1
.  for t in cal ul tabs
   WARN_MSG += "Exclude ${t} due to missing term.h header file"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC2.getdomainname.unistd_h:U1} != 1
.  for t in domainname
   WARN_MSG += "Exclude ${t} due to missing getdomainname in unistd.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC1.signalname.signal_h:U1} != 1
.  for t in kill
   WARN_MSG += "Exclude ${t} due to missing signalname in signal.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC2.makedev.sys_sysmacros_h:U1} != 1 && ${HAVE_FUNC2.makedev.sys_types_h:U1} != 1
.  for t in mknod
   WARN_MSG += "Exclude ${t} due to missing makedev in sys/sysmacros.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC4.getgrouplist.grp_h:U1} != 1 && ${HAVE_FUNC4.getgrouplist.unistd_h:U1} != 1
.  for t in id
   WARN_MSG += "Exclude ${t} due to missing getgrouplist in grp.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC3.logwtmp.util_h:U1} != 1
.  for t in date
   WARN_MSG += "Exclude ${t} due to missing logwtmp util.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC5.dbopen.db_h:U1} != 1
.  for t in tsort
   WARN_MSG += "Exclude ${t} due to missing dbopen in db.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_DEFINE.TIMESPEC_TO_TIMEVAL.sys_time_h:U1} != 1
.  for t in compress cp
   WARN_MSG += "Exclude ${t} due to missing TIMESPEC_TO_TIMEVAL in sys/time.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_DEFINE.REG_STARTEND.regex_h:U1} != 1
.  for t in grep
   WARN_MSG += "Exclude ${t} due to missing REG_STARTEND in regex.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

COMPATLIB    =	compatlib
INTERNALLIBS =	libndigest

.if ${HAVE_HEADER.tzfile_h:U1} != 1
. for t in cal date
PROJECTS :=     ${PROJECTS:N${t}}
   WARN_MSG += "Exclude ${t} due to missing tzfile.h"
. endfor
.endif

#.if ${HAVE_HEADER.db_h:U1} == 1
#PROJECTS += db
#.endif

#.if ${HAVE_MEMBER.struct_statvfs_f_mntfromname.sys_statvfs_h:U1} == 1
#PROJECTS += df
#.endif

.if empty(MKC_ERR_MSG:U)
.for w in ${WARN_MSG}
.info ${w}
.endfor
.endif

LIBDEPS   =	${PROJECTS:S/^/compatlib:/}
.if !empty(PROJECTS:Mmtree)
LIBDEPS +=	libndigest:mtree
.endif
.if !empty(PROJECTS:Mxinstall)
LIBDEPS +=	libndigest:xinstall
.endif
.if !empty(PROJECTS:Mcksum)
LIBDEPS +=	libndigest:cksum
.endif

SUBPRJ    =	doc nawk/bin:awk

.include <mkc.mk>
