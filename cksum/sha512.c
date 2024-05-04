/* $NetBSD: sha512.c,v 1.3 2006/10/30 20:22:54 christos Exp $ */

#if HAVE_NBTOOL_CONFIG_H
#include "nbtool_config.h"
#endif

#include <sha2.h>	/* this hash type */
#include <md5.h>	/* the hash we're replacing */

#define HASHTYPE	"SHA512"
#define HASHLEN		128

#define MD5Filter	SHA512_Filter
#define MD5String	SHA512_String
#define MD5TestSuite	SHA512_TestSuite
#define MD5TimeTrial	SHA512_TimeTrial

#define MD5Data		SHA512Data
#define MD5Init		SHA512Init
#define MD5Update	SHA512Update
#define MD5End		SHA512End

#define MD5_CTX		SHA2_CTX

#include "md5.c"
