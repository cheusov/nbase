/* $NetBSD: sha256.c,v 1.3 2006/10/30 20:22:54 christos Exp $ */

#if HAVE_NBTOOL_CONFIG_H
#include "nbtool_config.h"
#endif

#include <sha2.h>	/* this hash type */
#include <md5.h>	/* the hash we're replacing */

#define HASHTYPE	"SHA256"
#define HASHLEN		64

#define MD5Filter	SHA256_Filter
#define MD5String	SHA256_String
#define MD5TestSuite	SHA256_TestSuite
#define MD5TimeTrial	SHA256_TimeTrial

#define MD5Data		SHA256Data
#define MD5Init		SHA256Init
#define MD5Update	SHA256Update
#define MD5End		SHA256End

#define MD5_CTX		SHA2_CTX

#include "md5.c"
