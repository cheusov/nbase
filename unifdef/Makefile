PROG =	unifdef
MAN  =	unifdef.1

SCRIPTS =	unifdefall.sh
SCRIPTSNAME_unifdefall.sh = unifdefall

MLINKS  =	unifdef.1 unifdefall.1

# Disable -Werror because of warning with gcc-8
#   unifdef.c: In function 'Mpass':
#   unifdef.c:451:28: error: 'strncpy' output truncated before terminating nul copying 4 bytes from a string of the same length [-Werror=stringop-truncation]
# static void Mpass (void) { strncpy(keyword, "if  ", 4); Pelif(); }
WARNERR =	no

.include "../mk/addlinks.mk"
