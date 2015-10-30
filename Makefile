#SUBDIR=	cat chio chmod cp csh date dd df domainname echo ed expr hostname \
#	kill ksh ln ls mkdir mt mv pax ps pwd rcp rcmd rm rmdir sh \
#	sleep stty sync test

LIBDEPS    =	compatlib:kill

COMPATLIB =	compatlib

.include <mkc.subprj.mk>
