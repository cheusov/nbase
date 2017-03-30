# WILL NOT BE SUPPORTED: ps

# TBD: chio db flock iconv infocmp ipcs ipcrm lock logger mt nbperf
# getent stat time touch tsort uname uuidgen vgrind whereis xinstall
# xlint

# NET: ftp rdist rup rwho rwall ruptime rusers rlogin rsh

#PROJECTS = bdes csh db ksh rcmd rcp sh sync asa at checknr chflags	\
  crunch du gcore getaddrinfo  locate

PROJECTS  =	apply nawk/bin banner basename cat chmod cleantags \
  cmp col colcrt colrm column comm compress cp csplit \
  ctags cut deroff dd dirname \
  domainname echo \
  ed env error \
  expand expr false fgen find fmt fold fpr from fsplit getconf getopt grep \
  head hexdump hostname id indent join jot kill \
  lam leave ln logname look lorder ls m4 machine mkdep mkdir mkfifo mkstr \
  mktemp menuc msgc mv nice nl \
  nohup paste patch pax pr printenv \
  printf pwd qsubst renice rev rm rmdir rs script sdiff sed seq shar shlock shuffle \
  sleep soelim sort split stty tabs tail tee testcmd timeout tr true tty \
  ul unexpand unifdef units uniq unvis uudecode uuencode \
  vis what whois wc xargs xstr yes

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
