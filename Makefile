# will not be supported: chio db mt ps

#PROJECTS = bdes							\
  csh									\
  db									\
  ksh rcmd rcp								\
  sh sync								\
									\
									\
  asa at checknr chflags cleantagsCVS/ cleantagscleantags.sh colcrt	\
  crunch du fgen flock fpr from fsplit ftp gcore	\
  getaddrinfo getconf getent hexdump iconv id indent	\
  infocmp ipcrm ipcs jot leave locate lock logger logname	\
  look lorder machine menuc mkstr msgc nbperf	\
  nice qsubst rdist renice	\
  rlogin rsh rup ruptime rusers rwall rwho \
  stat \
  time timeout touch tsort uname \
  uuidgen vgrind whereis	\
  whois xinstall xlint

PROJECTS  =	apply nawk/bin banner basename cat chmod cleantags \
  cmp col colrm column comm compress cp csplit \
  ctags cut deroff dd dirname \
  domainname echo \
  ed env error \
  expand expr false find fmt fold getopt grep head hostname join kill \
  lam ln ls m4 mkdep mkdir mkfifo mktemp mv nl nohup paste patch pax pr printenv \
  printf pwd rev rm rmdir rs script sdiff sed seq shar shlock shuffle \
  sleep soelim sort split stty tabs tail tee testcmd tr true tty \
  ul unexpand unifdef units uniq unvis uudecode uuencode \
  vis what wc xargs xstr yes

MKC_CHECK_HEADERS = tzfile.h md2.h db.h

.include <mkc.configure.mk>

.if ${HAVE_HEADER.tzfile_h:U} == 1
PROJECTS += cal
PROJECTS += calendar
PROJECTS += date
.endif

.if ${HAVE_HEADER.md2_h:U} == 1
PROJECTS += cksum
.endif

#.if ${HAVE_HEADER.db_h:U} == 1
#PROJECTS += db
#.endif

#.if ${HAVE_MEMBER.struct_statvfs_f_mntfromname.sys_statvfs_h:U} == 1
#PROJECTS += df
#.endif

LIBDEPS   =	${PROJECTS:S/^/compatlib:/}
SUBPRJ    =	doc nawk/bin:awk

MKC_REQD  =	0.29.1
COMPATLIB =	compatlib

.include <mkc.mk>
