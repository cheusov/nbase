PROG =		progress
SRCS =		progress.c progressbar.c
MAN  =		progress.1

CPPFLAGS +=	-I${.CURDIR}/../ftp -DSTANDALONE_PROGRESS

.PATH:		${.CURDIR}/../ftp
.NOPATH:	progressbar.o

# progress.c asprintf
CFLAGS.check +=	-Wno-error=unused-result

MKC_CHECK_HEADERS +=	sys/ptyvar.h sys/ioccom.h

.include "../mk/imp.f_strsuftoll.mk"
.include "../mk/addlinks.mk"
