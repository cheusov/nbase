#SUBDIR=	chio chmod csh date dd df domainname ed \
#	ksh ls mt mv pax ps rcp rcmd sh \
#	stty sync

PROJECTS   =	cat cp echo expr hostname kill ln mkdir pwd rm rmdir sleep test
LIBDEPS    =	${PROJECTS:S/^/compatlib:/}

COMPATLIB =	compatlib

.include <mkc.mk>
