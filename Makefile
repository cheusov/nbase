#SUBDIR=	chio csh date dd df \
#	ksh ls mt pax ps rcp rcmd sh \
#	stty sync

PROJECTS   =	cat chmod cp domainname echo ed expr hostname kill ln mkdir \
		mv pwd rm rmdir sleep test

LIBDEPS    =	${PROJECTS:S/^/compatlib:/}

COMPATLIB =	compatlib

.include <mkc.mk>
