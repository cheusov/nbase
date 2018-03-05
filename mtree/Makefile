PROG      =	mtree
CPPFLAGS +=	-DMTREE -DHAVE_NBTOOL_CONFIG_H -I.
MAN       =	mtree.8
SRCS      =	compare.c crc.c create.c excludes.c misc.c mtree.c spec.c \
		specspec.c verify.c getid.c pack_dev.c only.c

CPPFLAGS+=	-I${.CURDIR}/../mknod
.PATH:		${.CURDIR}/../mknod

.include "../mk/addlinks.mk"
