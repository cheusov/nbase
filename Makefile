#SUBDIR=	chio chmod csh date dd df domainname ed hostname \
#	ksh ls mt mv pax ps rcp rcmd rm sh \
#	stty sync

PROJECTS   =	cat cp echo expr kill ln mkdir pwd rmdir sleep test
LIBDEPS    =	${PROJECTS:S/^/compatlib:/}

COMPATLIB =	compatlib

.include <mkc.mk>
