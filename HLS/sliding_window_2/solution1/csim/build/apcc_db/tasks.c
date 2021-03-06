/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void print_error(signed int llvm_cbe_err_val);


/* Global Variable Definitions and Initialization */
static  char aesl_internal__OC_str[8] = "Error: ";
static  char aesl_internal__OC_str1[12] = "errno = %d\n";
static  char aesl_internal__OC_str5[22] = "Unknown Error 0x%02X\n";
static  char aesl_internal_str[15] = "Internal Error";
static  char aesl_internal_str1[12] = "Input Error";
static  char aesl_internal_str2[14] = "Timeout Error";


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void print_error(signed int llvm_cbe_err_val) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  signed int *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_puts_count = 0;
  unsigned int llvm_cbe_puts;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_puts1_count = 0;
  unsigned int llvm_cbe_puts1;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_puts2_count = 0;
  unsigned int llvm_cbe_puts2;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @print_error\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @aesl_internal_.str, i32 0, i32 0)) nounwind, !dbg !9 for 0x%I64xth hint within @print_error  --> \n", ++aesl_llvm_cbe_4_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 8
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__1);
}
  switch (((unsigned int )(llvm_cbe_err_val&4294967295ull))) {
  default:
    goto llvm_cbe_tmp__6;
;
  case ((unsigned int )(5u&4294967295ull)):
    goto llvm_cbe_tmp__7;
    break;
  case ((unsigned int )(2u&4294967295ull)):
    goto llvm_cbe_tmp__8;
  case ((unsigned int )(4u&4294967295ull)):
    goto llvm_cbe_tmp__9;
  case ((unsigned int )(3u&4294967295ull)):
    goto llvm_cbe_tmp__10;
  }
llvm_cbe_tmp__7:
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = tail call i32* @_errno() nounwind, !dbg !10 for 0x%I64xth hint within @print_error  --> \n", ++aesl_llvm_cbe_6_count);
  llvm_cbe_tmp__2 = (signed int *) /*tail*/ _errno();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__2);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i32* %%3, align 4, !dbg !10 for 0x%I64xth hint within @print_error  --> \n", ++aesl_llvm_cbe_7_count);
  llvm_cbe_tmp__3 = (unsigned int )*llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @aesl_internal_.str1, i32 0, i32 0), i32 %%4) nounwind, !dbg !10 for 0x%I64xth hint within @print_error  --> \n", ++aesl_llvm_cbe_8_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 12
#endif
])), llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__4);
}
  goto llvm_cbe_tmp__11;

llvm_cbe_tmp__8:
if (AESL_DEBUG_TRACE)
printf("\n  %%puts = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @aesl_internal_str, i32 0, i32 0)), !dbg !10 for 0x%I64xth hint within @print_error  --> \n", ++aesl_llvm_cbe_puts_count);
   /*tail*/ puts(( char *)((&aesl_internal_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 15
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts = 0x%X",llvm_cbe_puts);
}
  goto llvm_cbe_tmp__11;

llvm_cbe_tmp__9:
if (AESL_DEBUG_TRACE)
printf("\n  %%puts1 = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @aesl_internal_str1, i32 0, i32 0)), !dbg !10 for 0x%I64xth hint within @print_error  --> \n", ++aesl_llvm_cbe_puts1_count);
   /*tail*/ puts(( char *)((&aesl_internal_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 12
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts1 = 0x%X",llvm_cbe_puts1);
}
  goto llvm_cbe_tmp__11;

llvm_cbe_tmp__10:
if (AESL_DEBUG_TRACE)
printf("\n  %%puts2 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @aesl_internal_str2, i32 0, i32 0)), !dbg !10 for 0x%I64xth hint within @print_error  --> \n", ++aesl_llvm_cbe_puts2_count);
   /*tail*/ puts(( char *)((&aesl_internal_str2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 14
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts2 = 0x%X",llvm_cbe_puts2);
}
  goto llvm_cbe_tmp__11;

llvm_cbe_tmp__6:
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @aesl_internal_.str5, i32 0, i32 0), i32 %%err_val) nounwind, !dbg !9 for 0x%I64xth hint within @print_error  --> \n", ++aesl_llvm_cbe_13_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str5[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 22
#endif
])), llvm_cbe_err_val);
if (AESL_DEBUG_TRACE) {
printf("\nArgument err_val = 0x%X",llvm_cbe_err_val);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__5);
}
  goto llvm_cbe_tmp__11;

llvm_cbe_tmp__11:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @print_error}\n");
  return;
}

