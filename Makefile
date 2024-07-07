# TBD:
#
# biff calendar catman chio chroot crunchgen cu cvslatest date db dc
# df disklabel dump finger gcore gencat getaddrinfo getent gettext
# iconv inetd infocmp ipcrm ipcrm ipcs ipcs ldd?  link locale lock
# logger makenabdb man) (mesg mkesdb mklocale mkubootimage mt nbperf
# nbperf nbsvtool newsyslog pagesize pathchk progress service sortinfo
# spell stat stty talk tic time (tip, touch uname unlink usr.sbin
# uuidgen vacation vgrind (whatis whereis write) xlint

# Do not want to port:
#
#   ftp rcmd rcp rdist rup rwho rwall ruptime rusers rlogin rsh bdes
#   csh db ksh sh at checknr locate

# Impossible to port?
#   chflags(only to some BSD?) ps

# TBD: units -- /usr/share/misc/units.lib is missing

MKC_REQD     =	0.37.0

.include "help.mk"
.include "use.mk"

MKC_CHECK_HEADER_FILES  = pty.h fts.h term.h
MKC_CHECK_HEADERS  =	tzfile.h termcap.h
MKC_CHECK_FUNCLIBS =	setupterm:terminfo
MKC_CHECK_FUNCS5   =	openpty:pty.h openpty:util.h dbopen:${USE_DB_HEADER} linkat:unistd.h
MKC_CHECK_FUNCS4   =	getgrouplist:grp.h getgrouplist:unistd.h clock_nanosleep:time.h
MKC_CHECK_FUNCS4   +=	utimensat:fcntl.h,sys/stat.h
MKC_CHECK_FUNCS3   =	logwtmp:util.h logwtmp:utmp.h timer_create:signal.h,time.h
MKC_CHECK_FUNCS2   =	getdomainname:unistd.h makedev:sys/sysmacros.h \
  makedev:sys/types.h flock:fcntl.h flock:sys/file.h
MKC_CHECK_FUNCS2   +=   utimens:fcntl.h,sys/stat.h
MKC_CHECK_DEFINES  =	TIMESPEC_TO_TIMEVAL:sys/time.h REG_STARTEND:regex.h
MKC_CHECK_TYPES    =	sig_t:signal.h

MKC_FUNC_OR_DEFINE.makedev =	yes

.include <mkc.configure.mk>

PROJECTS += apply asa nawk/bin banner base64 basename cal cat chmod chown      \
  chroot cksum cleantags \
  cmp col colcrt colrm column comm compress cp csplit ctags cut date    \
  deroff dd	\
  dirname domainname du echo ed env error expand expr false fgen find	\
  flock fmt fold fpr from fsplit getconf getopt grep head hexdump	\
  hostname id join jot kill lam leave ln logname look \
  lorder ls m4	\
  machine menuc mkdep mkdir mkfifo mknod mkstr mktemp msgc mtree mv     \
  nice nl nohup							\
  paste patch pax pr printenv printf progress pwd qsubst renice rev rm rmdir	\
  rs script sdiff sed seq shar shlock shuffle sleep soelim sort split	\
  sync tabs tail tee testcmd timeout tr true tsort tty ul unexpand	\
  unifdef uniq unvis uudecode uuencode vacation vis wc what \
  whereis whois xargs xinstall	\
  xstr yes
# PROJECTS +=	indent

.if ${HAVE_FUNC2.utimens.sys_stat_h:U1} != 1 && ${HAVE_FUNC4.utimensat.sys_stat_h:U1} != 1
.  for t in cp touch
   WARN_MSG += "Exclude ${t} due to missing utimens(3) and utimensat(2) in sys/stat.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC5.openpty.pty_h:U1} != 1 && ${HAVE_FUNC5.openpty.util_h:U1} != 1
.  for t in script
   WARN_MSG += "Exclude ${t} due to missing openpty(3) in pty.h and util.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_HEADER_FILE.fts_h:U1} != 1
.  for t in chmod chown cp du find grep ls mtree pax rm xinstall
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

.if ${HAVE_HEADER_FILE.term_h:U1} != 1
.  for t in cal ul tabs
   WARN_MSG += "Exclude ${t} due to missing term.h header file"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC2.getdomainname.unistd_h:U1} != 1
.  for t in domainname
   WARN_MSG += "Exclude ${t} due to missing getdomainname(3) in unistd.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC5.linkat.unistd_h:U1} != 1
.  for t in ln
   WARN_MSG += "Exclude ${t} due to missing linkat(3) in unistd.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC2.flock.fcntl_h:U1} != 1 && ${HAVE_FUNC2.flock.sys_file_h:U1} != 1
.  for t in flock
   WARN_MSG += "Exclude ${t} due to missing flock(2) in sys/file.h and fcntl.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC4.clock_nanosleep.time_h:U1} != 1
.  for t in sleep
   WARN_MSG += "Exclude ${t} due to missing clock_nanosleep(2) in time.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC2.makedev.sys_sysmacros_h:U1} != 1 && ${HAVE_FUNC2.makedev.sys_types_h:U1} != 1
.  for t in mknod
   WARN_MSG += "Exclude ${t} due to missing makedev(3) in sys/sysmacros.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC4.getgrouplist.grp_h:U1} != 1 && ${HAVE_FUNC4.getgrouplist.unistd_h:U1} != 1
.  for t in id
   WARN_MSG += "Exclude ${t} due to missing getgrouplist(3) in grp.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC3.logwtmp.util_h:U1} != 1 && ${HAVE_FUNC3.logwtmp.utmp_h:U1} != 1
.  for t in date
   WARN_MSG += "Exclude ${t} due to missing logwtmp(3) in util.h and utmp.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC3.timer_create.time_h:U1} != 1
.  for t in flock
   WARN_MSG += "Exclude ${t} due to missing timer_create(2) in time.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC5.dbopen.db_h:U1} != 1
.  for t in tsort
   WARN_MSG += "Exclude ${t} due to missing dbopen(3) in db.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_DEFINE.TIMESPEC_TO_TIMEVAL.sys_time_h:U1} != 1
.  for t in compress
   WARN_MSG += "Exclude ${t} due to missing TIMESPEC_TO_TIMEVAL in sys/time.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_DEFINE.REG_STARTEND.regex_h:U1} != 1
.  for t in grep
   WARN_MSG += "Exclude ${t} due to missing REG_STARTEND macro in regex.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

COMPATLIB    =	compatlib

.if ${HAVE_HEADER.tzfile_h:U1} != 1
. for t in cal date vacation
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

SUBPRJ    =	doc nawk/bin:awk

.include <mkc.mk>
