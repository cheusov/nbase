# WILL NOT BE SUPPORTED: ps

# TBD: calendar chio date db flock gcore getaddrinfo getent
# iconv infocmp ipcs ipcrm lock logger mt nbperf stat stty time touch tsort
# uname uuidgen vgrind whereis xlint

# NET: ftp rcmd rcp rdist rup rwho rwall ruptime rusers rlogin rsh

#PROJECTS = bdes csh db ksh sh at checknr chflags	\
#  crunch locate

# TBD: units -- /usr/share/misc/units.lib is missing
.include <mkc.init.mk>

MKC_CHECK_HEADER_FILES  =	fts.h
MKC_CHECK_HEADERS  =	tzfile.h md2.h db.h termcap.h
MKC_CHECK_TYPES    =	sig_t:signal.h
MKC_CHECK_FUNCLIBS =	setupterm:terminfo
MKC_CHECK_FUNCS3   =	strtoq:strlib.h
MKC_CHECK_DEFINES  =	TIMESPEC_TO_TIMEVAL:sys/time.h

.include <mkc.configure.mk>

PROJECTS += apply asa nawk/bin banner basename cal cat chmod            \
  cksum cleantags \
  cmp col colcrt colrm column comm compress cp csplit ctags cut date    \
  deroff dd	\
  dirname domainname du echo ed env error expand expr false fgen find	\
  fmt fold fpr from fsplit getconf getopt grep head hexdump hostname	\
  id indent join jot kill lam leave libndigest ln logname look lorder	\
  ls m4	\
  machine mkdep mkdir mkfifo mknod mkstr mktemp mtree menuc msgc mv     \
  nice nl nohup	                                                        \
  paste patch pax pr printenv printf pwd qsubst renice rev rm rmdir	\
  rs script sdiff sed seq shar shlock shuffle sleep soelim sort split	\
  sync tabs tail tee testcmd timeout tr true tty ul unexpand	\
  unifdef uniq unvis uudecode uuencode vis what whois wc xargs xinstall	\
  xstr yes

.if ${HAVE_HEADER_FILE.fts_h:U} != 1
.  for t in chmod cp du find ls mtree pax rm xinstall
.  info "Exclude ${t} due to missing fts.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_HEADER.fts_h:U} != 1
.  for t in qsubst
.  info "Exclude ${t} due to missing termcap.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_TYPE.sig_t.signal_h:U} != 1
.  for t in apply patch
.  info "Exclude ${t} due to missing sig_t in signal.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNCLIB.setupterm.terminfo:U} != 1
.  for t in cal ul tabs
.  info "Exclude ${t} due to missing setupterm() in libtermcaph"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_FUNC3.strtoq.stdlib_h:U} != 1
.  for t in cmp
.  info "Exclude ${t} due to missing strtoq in stdlib.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${HAVE_DEFINE.TIMESPEC_TO_TIMEVAL.sys_time_h:U} != 1
.  for t in compress
.  info "Exclude ${t} due to missing TIMESPEC_TO_TIMEVAL in sys/time.h"
PROJECTS :=	${PROJECTS:N${t}}
.  endfor
.endif

.if ${OPSYS} == "SunOS"
PROJECTS :=	${PROJECTS:Nwc} # u_quad_t type
PROJECTS :=     ${PROJECTS:Nscript} # openpty, cfmakeraw, login_tty, MIN
PROJECTS :=     ${PROJECTS:Nrenice} # PRIO_MAX, PRIO_MIN
PROJECTS :=     ${PROJECTS:Nmknod} # makedev, major, minor, sys/sysctl.h
PROJECTS :=     ${PROJECTS:Nid} # getgrouplist
PROJECTS :=     ${PROJECTS:Nhostname} # MAXHOSTNAMELEN
PROJECTS :=     ${PROJECTS:Ngetconf} # confstr
PROJECTS :=     ${PROJECTS:Ndomainname} # MAXHOSTNAMELEN, setdomainname, getdomainname
PROJECTS :=     ${PROJECTS:Ndate} # TSP_SETDATE from util.h 
.endif

COMPATLIB    =	compatlib
INTERNALLIBS =	libndigest

.if ${HAVE_HEADER.tzfile_h:U} != 1
. for t in date
PROJECTS :=     ${PROJECTS:N${t}}
.  info "Exclude ${t} due to missing tzfile.h"
. endfor
.endif

#.if ${HAVE_HEADER.db_h:U} == 1
#PROJECTS += db
#.endif

#.if ${HAVE_MEMBER.struct_statvfs_f_mntfromname.sys_statvfs_h:U} == 1
#PROJECTS += df
#.endif

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

MKC_REQD     =	0.30.0

.include <mkc.mk>
