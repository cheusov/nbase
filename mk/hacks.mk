.ifndef _HACKS_MK_
_HACKS_MK_ := 1

.if ${OPSYS:U} == FreeBSD
# On FreeBSD getbsize(3) doesn't accept NULL as the first argument, so we
# always use our own version.
HAVE_FUNCLIB.getbsize=0
.endif

.endif # _HACKS_MK_
