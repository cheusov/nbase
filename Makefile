# WILL NOT BE SUPPORTED: ps

# TBD: cal calendar chio date db flock gcore getaddrinfo getent
# iconv infocmp ipcs ipcrm lock logger mt nbperf stat time touch tsort
# uname uuidgen vgrind whereis xlint

# NET: ftp rcmd rcp rdist rup rwho rwall ruptime rusers rlogin rsh

#PROJECTS = bdes csh db ksh sh at checknr chflags	\
#  crunch locate

# TBD: units -- /usr/share/misc/units.lib is missing
.include <mkc.init.mk>
.if ${OPSYS} != "SunOS"
PROJECTS = apply chmod
.endif

PROJECTS += asa nawk/bin banner basename cat cksum cleantags \
  cmp	\
  col colcrt colrm column comm compress cp csplit ctags cut deroff dd	\
  dirname domainname du echo ed env error expand expr false fgen find	\
  fmt fold fpr from fsplit getconf getopt grep head hexdump hostname	\
  id indent join jot kill lam leave libndigest ln logname look lorder	\
  ls m4	\
  machine mkdep mkdir mkfifo mknod mkstr mktemp mtree menuc msgc mv     \
  nice nl nohup	                                                        \
  paste patch pax pr printenv printf pwd qsubst renice rev rm rmdir	\
  rs script sdiff sed seq shar shlock shuffle sleep soelim sort split	\
  stty sync tabs tail tee testcmd timeout tr true tty ul unexpand	\
  unifdef uniq unvis uudecode uuencode vis what whois wc xargs xinstall	\
  xstr yes

COMPATLIB    =	compatlib
INTERNALLIBS =	libndigest

MKC_CHECK_HEADERS = tzfile.h md2.h db.h

.include <mkc.configure.mk>

# .if ${HAVE_HEADER.tzfile_h:U} == 1
# PROJECTS += cal
# PROJECTS += calendar
# PROJECTS += date
# .endif

#.if ${HAVE_HEADER.db_h:U} == 1
#PROJECTS += db
#.endif

#.if ${HAVE_MEMBER.struct_statvfs_f_mntfromname.sys_statvfs_h:U} == 1
#PROJECTS += df
#.endif

LIBDEPS   =	${PROJECTS:S/^/compatlib:/} libndigest:mtree libndigest:cksum \
		libndigest:xinstall

SUBPRJ    =	doc nawk/bin:awk

MKC_REQD     =	0.30.0

.include <mkc.mk>
