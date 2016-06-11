#SUBDIR=	chio csh date df \
#	ksh mt pax ps rcp rcmd sh \
#	sync

PROJECTS   =	cat chmod cp dd domainname echo ed expr hostname kill \
  ln ls mkdir mv pwd rm rmdir sleep stty test

LIBDEPS    =	${PROJECTS:S/^/compatlib:/}

MKC_REQD  =	0.29.1
COMPATLIB =	compatlib

.include <mkc.mk>
