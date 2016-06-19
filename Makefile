#PROJECTS = awk bdes cal calendar chio cksum \
  cleantags compatlib compress csh csplit ctags \
  date db deroff df doc error \
  ksh mk mt pax ps rcmd rcp \
  sh sync

PROJECTS   =	apply banner basename cat chmod cmp col colrm comm cp cut dd dirname \
  domainname echo \
  ed env \
  expand expr false hostname kill \
  ln ls mkdir mv pwd rm rmdir sleep stty test

LIBDEPS    =	${PROJECTS:S/^/compatlib:/}

MKC_REQD  =	0.29.1
COMPATLIB =	compatlib

.include <mkc.mk>
