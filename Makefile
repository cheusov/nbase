#PROJECTS = apply awk banner basename bdes cal calendar chio cksum \
  cleantags col colrm comm compatlib compress csh csplit ctags \
  date db deroff df dirname doc error expand \
  ksh mk mt pax ps rcmd rcp \
  sh sync

PROJECTS   =	cat chmod cmp cp cut dd domainname echo ed env \
  expr false hostname kill \
  ln ls mkdir mv pwd rm rmdir sleep stty test

LIBDEPS    =	${PROJECTS:S/^/compatlib:/}

MKC_REQD  =	0.29.1
COMPATLIB =	compatlib

.include <mkc.mk>
