#PROJECTS = awk bdes cal calendar chio cksum \
  cleantags colrm compatlib compress csh csplit ctags \
  date db deroff df doc error expand \
  ksh mk mt pax ps rcmd rcp \
  sh sync

PROJECTS   =	apply banner basename cat chmod cmp col comm cp cut dd dirname domainname echo \
  ed env \
  expr false hostname kill \
  ln ls mkdir mv pwd rm rmdir sleep stty test

LIBDEPS    =	${PROJECTS:S/^/compatlib:/}

MKC_REQD  =	0.29.1
COMPATLIB =	compatlib

.include <mkc.mk>
