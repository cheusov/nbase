#if HAVE_TYPE_U_CHAR_SYS_TYPES_H
#include <sys/types.h>
#else
typedef unsigned char u_char;
#endif

int	 look(u_char *, u_char *, u_char *);
