LIB   =	ndigest

SRCS =	keccak.c \
	md2.c md2hl.c md4c.c md4hl.c md5c.c md5hl.c rmd160.c rmd160hl.c \
	sha1.c sha1hl.c sha2.c \
	sha224hl.c sha256hl.c sha384hl.c sha512hl.c \
	tiger.c whirlpool.c \
	md2.h md4.h md5.h rmd160.h sha1.h sha2.h sha3.h tiger.h whirlpool.h # sha3.c

CPPFLAGS +=	-I${.CURDIR} -DHAVE_NBTOOL_CONFIG_H=1

MKC_CHECK_FUNCS1 +=	be32toh:sys/endian.h be64toh:sys/endian.h \
		 	htobe32:sys/endian.h htobe64:sys/endian.h

.include <mkc.configure.mk>

.include "../mk/mkc_imp.f_endian_encdec.mk"

.include <mkc.mk>
