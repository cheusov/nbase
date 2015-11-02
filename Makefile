#SUBDIR=	chio chmod csh date dd df domainname ed hostname \
#	ksh ls mt mv pax ps pwd rcp rcmd rm rmdir sh \
#	sleep stty sync

PROJECTS   =	cat cp echo expr kill ln mkdir test
LIBDEPS    =	${PROJECTS:S/^/compatlib:/}

COMPATLIB =	compatlib

.include <mkc.mk>
