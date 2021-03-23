USE_VARIABLES=USE_DB_HEADER USE_DB_LIBNAME
USE_DB_HEADER.descr='db1 header filename'
USE_DB_HEADER.0='unset: db.h'
USE_DB_HEADER.1='value: db_185.h, db1.h or other value'
USE_DB_LIBRARY.descr='db1 library name'
USE_DB_LIBNAME.0='unset: db'
USE_DB_LIBNAME.1='value: db1, db2 or other value'

USE_DB_HEADER  ?=	db.h
USE_DB_LIBNAME ?=	c # libc
.export USE_DB_HEADER USE_DB_LIBNAME
