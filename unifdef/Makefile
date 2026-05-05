#	$NetBSD: Makefile,v 1.7 2019/10/13 07:28:17 mrg Exp $
MAN  =	unifdef.1

SCRIPTS =	unifdefall.sh
SCRIPTSNAME_unifdefall.sh = unifdefall

MLINKS  =	unifdef.1 unifdefall.1

.include "../mk/addlinks.mk"
COPTS.unifdef.c+=	${GCC_NO_STRINGOP_TRUNCATION}

