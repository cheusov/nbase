#SUBDIR=	chio chmod cp csh date dd df domainname echo ed expr hostname \
#	ksh ln ls mkdir mt mv pax ps pwd rcp rcmd rm rmdir sh \
#	sleep stty sync test

PROJECTS   =	kill cat cp
LIBDEPS    =	${PROJECTS:S/^/compatlib:/}

COMPATLIB =	compatlib

.include <mkc.mk>
