PROG =		m4
MAN  =		m4.1
CPPFLAGS +=	-DEXTENDED -I${.CURDIR}/lib
SRCS =	parser.y tokenizer.l eval.c expr.c look.c main.c misc.c gnum4.c trace.c
.PATH: ${.CURDIR}/lib
SRCS +=	ohash_create_entry.c ohash_delete.c ohash_do.c ohash_entries.c \
	ohash_enum.c ohash_init.c ohash_int.h ohash_interval.c \
	ohash_lookup_interval.c ohash_lookup_memory.c ohash_qlookup.c \
	ohash_qlookupi.c strtonum.c
YHEADER =	1

MKC_REQD =	0.37.0
MKC_FEATURES +=	libl strtoi

tokenizer.o: parser.h

CLEANFILES += parser.c parser.h tokenizer.o

CPPFLAGS +=	-DHAVE_NBTOOL_CONFIG_H=1 -I${.CURDIR}

MKC_FEATURES +=		strsep

# va_end after verr in misc.c
CFLAGS.check +=		-erroff=E_STATEMENT_NOT_REACHED

# m4/main.c: write(2)
CFLAGS.check+=		-Wno-error=unused-result

.include "../mk/addlinks.mk"
