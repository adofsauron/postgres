/* confdefs.h */
#define PACKAGE_NAME "PostgreSQL"
#define PACKAGE_TARNAME "postgresql"
#define PACKAGE_VERSION "14.3"
#define PACKAGE_STRING "PostgreSQL 14.3"
#define PACKAGE_BUGREPORT "pgsql-bugs@lists.postgresql.org"
#define PACKAGE_URL "https://www.postgresql.org/"
#define CONFIGURE_ARGS ""
#define PG_MAJORVERSION "14"
#define PG_MAJORVERSION_NUM 14
#define PG_MINORVERSION_NUM 3
#define PG_VERSION "14.3"
#define DEF_PGPORT 5432
#define DEF_PGPORT_STR "5432"
#define BLCKSZ 8192
#define RELSEG_SIZE 131072
#define XLOG_BLCKSZ 8192
#define ENABLE_THREAD_SAFETY 1
#define PG_KRB_SRVNAM "postgres"
#define STDC_HEADERS 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_SYS_STAT_H 1
#define HAVE_STDLIB_H 1
#define HAVE_STRING_H 1
#define HAVE_MEMORY_H 1
#define HAVE_STRINGS_H 1
#define HAVE_INTTYPES_H 1
#define HAVE_STDINT_H 1
#define HAVE_UNISTD_H 1
#define HAVE_PTHREAD_PRIO_INHERIT 1
#define HAVE_PTHREAD 1
#define HAVE_STRERROR_R 1
#define HAVE_GETPWUID_R 1
#define HAVE_GETHOSTBYNAME_R 1
#define HAVE_LIBM 1
/* end confdefs.h.  */

/* Override any GCC internal prototype to avoid an error.
   Use char because int might match the return type of a GCC
   builtin and then its argument prototype would still apply.  */
#ifdef __cplusplus
extern "C"
#endif
char readline ();
int
main ()
{
return readline ();
  ;
  return 0;
}
