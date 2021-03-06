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
/* Structure forward decls */
typedef struct l_struct_OC_env l_struct_OC_env;
typedef struct l_struct_OC_matrix l_struct_OC_matrix;

/* Structure contents */
struct l_struct_OC_matrix {
   char field0[30];
   char *field1;
  unsigned int field2;
  unsigned int field3;
};

struct l_struct_OC_env {
  l_struct_OC_matrix field0;
  l_struct_OC_matrix field1;
  l_struct_OC_matrix field2;
  l_struct_OC_matrix field3;
};


/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
signed int user_input_get(void);
signed int free_resources(l_struct_OC_env *llvm_cbe_cnn_env);
signed int matrix_free(l_struct_OC_matrix *);
signed int init_matrices(l_struct_OC_env *llvm_cbe_cnn_env);
signed int matrix_init(l_struct_OC_matrix *,  char *, signed int , signed int , signed int , signed int , signed int , signed int );
signed int matrix_comp(l_struct_OC_matrix *llvm_cbe_a, l_struct_OC_matrix *llvm_cbe_b);


/* Global Variable Definitions and Initialization */
static  char aesl_internal__OC_str1[3] = "%d";
static  char aesl_internal__OC_str3[6] = "image";
static  char aesl_internal__OC_str4[7] = "kernel";
static  char aesl_internal__OC_str5[39] = "rows mismatch: %s.rows=%d, %s.rows=%d\n";
static  char aesl_internal__OC_str6[39] = "cols mismatch: %s.cols=%d, %s.cols=%d\n";
static  char aesl_internal__OC_str7[37] = "data mismatch: %s[%d][%d]=%d, %s=%d\n";
static  char aesl_internal__OC_str8[25] = "matrix match!! (%s==%s)\n";
static  char aesl_internal_str[45] = "options:\n0. exit\n1. run SW CNN\n2. run HW CNN";
static  char aesl_internal_str1[16] = "invalid choice!";


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

signed int user_input_get(void) {
  static  unsigned long long aesl_llvm_cbe_choise_count = 0;
  signed int llvm_cbe_choise;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_puts2_count = 0;
  unsigned int llvm_cbe_puts2;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_puts1_count = 0;
  unsigned int llvm_cbe_puts1;
  static  unsigned long long aesl_llvm_cbe_puts_count = 0;
  unsigned int llvm_cbe_puts;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa_count = 0;
  unsigned int llvm_cbe__2e_lcssa;
  unsigned int llvm_cbe__2e_lcssa__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @user_input_get\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%puts2 = call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_str, i32 0, i32 0)), !dbg !9 for 0x%I64xth hint within @user_input_get  --> \n", ++aesl_llvm_cbe_puts2_count);
  puts(( char *)((&aesl_internal_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 45
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts2 = 0x%X",llvm_cbe_puts2);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([3 x i8]* @aesl_internal_.str1, i32 0, i32 0), i32* %%choise) nounwind, !dbg !9 for 0x%I64xth hint within @user_input_get  --> \n", ++aesl_llvm_cbe_2_count);
  scanf(( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
])), (signed int *)(&llvm_cbe_choise));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = load i32* %%choise, align 4, !dbg !9 for 0x%I64xth hint within @user_input_get  --> \n", ++aesl_llvm_cbe_7_count);
  llvm_cbe_tmp__2 = (unsigned int )*(&llvm_cbe_choise);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
  if ((((signed int )llvm_cbe_tmp__2) > ((signed int )2u))) {
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    llvm_cbe__2e_lcssa__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__2;   /* for PHI node */
    goto llvm_cbe__2e__crit_edge;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%puts1 = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @aesl_internal_str1, i32 0, i32 0)), !dbg !9 for 0x%I64xth hint within @user_input_get  --> \n", ++aesl_llvm_cbe_puts1_count);
  puts(( char *)((&aesl_internal_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 16
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts1 = 0x%X",llvm_cbe_puts1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%puts = call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_str, i32 0, i32 0)), !dbg !9 for 0x%I64xth hint within @user_input_get  --> \n", ++aesl_llvm_cbe_puts_count);
  puts(( char *)((&aesl_internal_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 45
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts = 0x%X",llvm_cbe_puts);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([3 x i8]* @aesl_internal_.str1, i32 0, i32 0), i32* %%choise) nounwind, !dbg !9 for 0x%I64xth hint within @user_input_get  --> \n", ++aesl_llvm_cbe_10_count);
  scanf(( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
])), (signed int *)(&llvm_cbe_choise));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__3);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = load i32* %%choise, align 4, !dbg !9 for 0x%I64xth hint within @user_input_get  --> \n", ++aesl_llvm_cbe_17_count);
  llvm_cbe_tmp__4 = (unsigned int )*(&llvm_cbe_choise);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
  if ((((signed int )llvm_cbe_tmp__4) > ((signed int )2u))) {
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    llvm_cbe__2e_lcssa__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__4;   /* for PHI node */
    goto llvm_cbe__2e__crit_edge;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
llvm_cbe__2e__crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa = phi i32 [ %%2, %%0 ], [ %%5, %%.lr.ph  for 0x%I64xth hint within @user_input_get  --> \n", ++aesl_llvm_cbe__2e_lcssa_count);
  llvm_cbe__2e_lcssa = (unsigned int )llvm_cbe__2e_lcssa__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa = 0x%X",llvm_cbe__2e_lcssa);
printf("\n = 0x%X",llvm_cbe_tmp__2);
printf("\n = 0x%X",llvm_cbe_tmp__4);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @user_input_get}\n");
  return llvm_cbe__2e_lcssa;
}


signed int free_resources(l_struct_OC_env *llvm_cbe_cnn_env) {
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  unsigned int llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  unsigned int llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @free_resources\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 2, !dbg !9 for 0x%I64xth hint within @free_resources  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__5 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = tail call i32 @matrix_free(%%struct.matrix* %%1) nounwind, !dbg !9 for 0x%I64xth hint within @free_resources  --> \n", ++aesl_llvm_cbe_28_count);
   /*tail*/ matrix_free((l_struct_OC_matrix *)llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__6);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 0, !dbg !9 for 0x%I64xth hint within @free_resources  --> \n", ++aesl_llvm_cbe_29_count);
  llvm_cbe_tmp__7 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field0);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = tail call i32 @matrix_free(%%struct.matrix* %%3) nounwind, !dbg !9 for 0x%I64xth hint within @free_resources  --> \n", ++aesl_llvm_cbe_30_count);
   /*tail*/ matrix_free((l_struct_OC_matrix *)llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__8);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 1, !dbg !9 for 0x%I64xth hint within @free_resources  --> \n", ++aesl_llvm_cbe_31_count);
  llvm_cbe_tmp__9 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = tail call i32 @matrix_free(%%struct.matrix* %%5) nounwind, !dbg !9 for 0x%I64xth hint within @free_resources  --> \n", ++aesl_llvm_cbe_32_count);
   /*tail*/ matrix_free((l_struct_OC_matrix *)llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__10);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 3, !dbg !9 for 0x%I64xth hint within @free_resources  --> \n", ++aesl_llvm_cbe_33_count);
  llvm_cbe_tmp__11 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = tail call i32 @matrix_free(%%struct.matrix* %%7) nounwind, !dbg !9 for 0x%I64xth hint within @free_resources  --> \n", ++aesl_llvm_cbe_34_count);
   /*tail*/ matrix_free((l_struct_OC_matrix *)llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__12);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @free_resources}\n");
  return 0u;
}


signed int init_matrices(l_struct_OC_env *llvm_cbe_cnn_env) {
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned int llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @init_matrices\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 0, !dbg !9 for 0x%I64xth hint within @init_matrices  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__13 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field0);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = tail call i32 @matrix_init(%%struct.matrix* %%1, i8* getelementptr inbounds ([6 x i8]* @aesl_internal_.str3, i32 0, i32 0), i32 512, i32 512, i32 512, i32 512, i32 255, i32 0) nounwind, !dbg !9 for 0x%I64xth hint within @init_matrices  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__14 = (unsigned int ) /*tail*/ matrix_init((l_struct_OC_matrix *)llvm_cbe_tmp__13, ( char *)((&aesl_internal__OC_str3[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 6
#endif
])), 512u, 512u, 512u, 512u, 255u, 0u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",512u);
printf("\nArgument  = 0x%X",512u);
printf("\nArgument  = 0x%X",512u);
printf("\nArgument  = 0x%X",512u);
printf("\nArgument  = 0x%X",255u);
printf("\nArgument  = 0x%X",0u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__14);
}
  if (((llvm_cbe_tmp__14&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__17;
  } else {
    goto llvm_cbe_tmp__18;
  }

llvm_cbe_tmp__17:
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 1, !dbg !9 for 0x%I64xth hint within @init_matrices  --> \n", ++aesl_llvm_cbe_48_count);
  llvm_cbe_tmp__15 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = tail call i32 @matrix_init(%%struct.matrix* %%5, i8* getelementptr inbounds ([7 x i8]* @aesl_internal_.str4, i32 0, i32 0), i32 3, i32 3, i32 3, i32 3, i32 1, i32 0) nounwind, !dbg !9 for 0x%I64xth hint within @init_matrices  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__16 = (unsigned int ) /*tail*/ matrix_init((l_struct_OC_matrix *)llvm_cbe_tmp__15, ( char *)((&aesl_internal__OC_str4[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 7
#endif
])), 3u, 3u, 3u, 3u, 1u, 0u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",3u);
printf("\nArgument  = 0x%X",3u);
printf("\nArgument  = 0x%X",3u);
printf("\nArgument  = 0x%X",3u);
printf("\nArgument  = 0x%X",1u);
printf("\nArgument  = 0x%X",0u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__16);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @init_matrices}\n");
  return llvm_cbe_tmp__16;
llvm_cbe_tmp__18:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @init_matrices}\n");
  return llvm_cbe_tmp__14;
}


signed int matrix_comp(l_struct_OC_matrix *llvm_cbe_a, l_struct_OC_matrix *llvm_cbe_b) {
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond_count = 0;
  bool llvm_cbe_or_2e_cond;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
   char **llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
   char *llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
   char **llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
   char *llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  signed int *llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  signed int *llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  unsigned int llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
   char *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
   char *llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  unsigned int llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  unsigned int llvm_cbe_tmp__30;
  unsigned int llvm_cbe_tmp__30__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  signed int *llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  unsigned int llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  signed int *llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
   char *llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
   char *llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  unsigned int llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
   char *llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
   char *llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  unsigned int llvm_cbe_tmp__40;
  unsigned int llvm_cbe_tmp__40__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge_count = 0;
  unsigned int llvm_cbe_storemerge;
  unsigned int llvm_cbe_storemerge__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  unsigned int llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  unsigned int llvm_cbe_tmp__42;
  unsigned int llvm_cbe_tmp__42__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  unsigned int llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  unsigned int llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  unsigned int llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
   char *llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
   char *llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  unsigned char llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  unsigned int llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  unsigned int llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  unsigned int llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
   char *llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
   char *llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  unsigned char llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  unsigned int llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  unsigned int llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  unsigned int llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  unsigned int llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  unsigned int llvm_cbe_tmp__59;
  unsigned int llvm_cbe_tmp__59__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  unsigned int llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  unsigned int llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
   char *llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
   char *llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  unsigned int llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  unsigned int llvm_cbe_tmp__65;
  unsigned int llvm_cbe_tmp__65__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @matrix_comp\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond = or i1 %%1, %%2, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_or_2e_cond_count);
  llvm_cbe_or_2e_cond = (bool )((((llvm_cbe_a) == (((l_struct_OC_matrix *)/*NULL*/0))) | ((llvm_cbe_b) == (((l_struct_OC_matrix *)/*NULL*/0))))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond = 0x%X\n", llvm_cbe_or_2e_cond);
  if (llvm_cbe_or_2e_cond) {
    llvm_cbe_tmp__65__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
    goto llvm_cbe__2e_loopexit;
  } else {
    goto llvm_cbe_tmp__66;
  }

llvm_cbe_tmp__66:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 1, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__19 = ( char **)(&llvm_cbe_a->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = load i8** %%4, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_93_count);
  llvm_cbe_tmp__20 = ( char *)*llvm_cbe_tmp__19;
  if (((llvm_cbe_tmp__20) == ((( char *)/*NULL*/0)))) {
    goto llvm_cbe_tmp__67;
  } else {
    goto llvm_cbe_tmp__68;
  }

llvm_cbe_tmp__68:
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 1, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_96_count);
  llvm_cbe_tmp__21 = ( char **)(&llvm_cbe_b->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i8** %%8, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_97_count);
  llvm_cbe_tmp__22 = ( char *)*llvm_cbe_tmp__21;
  if (((llvm_cbe_tmp__22) == ((( char *)/*NULL*/0)))) {
    goto llvm_cbe_tmp__67;
  } else {
    goto llvm_cbe_tmp__69;
  }

llvm_cbe_tmp__67:
  llvm_cbe_tmp__65__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe__2e_loopexit;

llvm_cbe_tmp__69:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 3, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_106_count);
  llvm_cbe_tmp__23 = (signed int *)(&llvm_cbe_a->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i32* %%13, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__24 = (unsigned int )*llvm_cbe_tmp__23;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 3, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_108_count);
  llvm_cbe_tmp__25 = (signed int *)(&llvm_cbe_b->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load i32* %%15, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_109_count);
  llvm_cbe_tmp__26 = (unsigned int )*llvm_cbe_tmp__25;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__26);
  if (((llvm_cbe_tmp__24&4294967295U) == (llvm_cbe_tmp__26&4294967295U))) {
    llvm_cbe_tmp__30__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe_tmp__70;
  } else {
    goto llvm_cbe_tmp__71;
  }

llvm_cbe_tmp__71:
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 0, i32 0, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_112_count);
  llvm_cbe_tmp__27 = ( char *)(&llvm_cbe_a->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 0, i32 0, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_113_count);
  llvm_cbe_tmp__28 = ( char *)(&llvm_cbe_b->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @aesl_internal_.str5, i32 0, i32 0), i8* %%19, i32 %%14, i8* %%20, i32 %%16) nounwind, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_114_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str5[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 39
#endif
])), ( char *)llvm_cbe_tmp__27, llvm_cbe_tmp__24, ( char *)llvm_cbe_tmp__28, llvm_cbe_tmp__26);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__24);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__26);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__29);
}
  llvm_cbe_tmp__30__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe_tmp__70;

llvm_cbe_tmp__70:
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = phi i32 [ 0, %%12 ], [ 1, %%18  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_118_count);
  llvm_cbe_tmp__30 = (unsigned int )llvm_cbe_tmp__30__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__30);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",1u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 2, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_119_count);
  llvm_cbe_tmp__31 = (signed int *)(&llvm_cbe_a->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load i32* %%24, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_120_count);
  llvm_cbe_tmp__32 = (unsigned int )*llvm_cbe_tmp__31;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 2, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_121_count);
  llvm_cbe_tmp__33 = (signed int *)(&llvm_cbe_b->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = load i32* %%26, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_122_count);
  llvm_cbe_tmp__34 = (unsigned int )*llvm_cbe_tmp__33;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__34);
  if (((llvm_cbe_tmp__32&4294967295U) == (llvm_cbe_tmp__34&4294967295U))) {
    goto llvm_cbe_tmp__72;
  } else {
    goto llvm_cbe__2e_thread;
  }

llvm_cbe__2e_thread:
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 0, i32 0, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_125_count);
  llvm_cbe_tmp__35 = ( char *)(&llvm_cbe_a->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 0, i32 0, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_126_count);
  llvm_cbe_tmp__36 = ( char *)(&llvm_cbe_b->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @aesl_internal_.str6, i32 0, i32 0), i8* %%29, i32 %%25, i8* %%30, i32 %%27) nounwind, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_127_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str6[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 39
#endif
])), ( char *)llvm_cbe_tmp__35, llvm_cbe_tmp__32, ( char *)llvm_cbe_tmp__36, llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__32);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__34);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__37);
}
  goto llvm_cbe__2e_loopexit4;

llvm_cbe_tmp__72:
  if (((llvm_cbe_tmp__30&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe__2e_preheader3;
  } else {
    goto llvm_cbe__2e_loopexit4;
  }

llvm_cbe__2e_preheader3:
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 0, i32 0, !dbg !11 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__38 = ( char *)(&llvm_cbe_a->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 0, i32 0, !dbg !11 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__39 = ( char *)(&llvm_cbe_b->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_tmp__40__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__73;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__73:
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = phi i32 [ %%40, %%65 ], [ 0, %%.preheader3  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_136_count);
  llvm_cbe_tmp__40 = (unsigned int )llvm_cbe_tmp__40__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__40);
printf("\n = 0x%X",llvm_cbe_tmp__42);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge = phi i32 [ %%66, %%65 ], [ 0, %%.preheader3  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_storemerge_count);
  llvm_cbe_storemerge = (unsigned int )llvm_cbe_storemerge__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge = 0x%X",llvm_cbe_storemerge);
printf("\n = 0x%X",llvm_cbe_tmp__61);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = load i32* %%13, align 4, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_144_count);
  llvm_cbe_tmp__41 = (unsigned int )*llvm_cbe_tmp__23;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__41);
  if ((((signed int )llvm_cbe_storemerge) < ((signed int )llvm_cbe_tmp__41))) {
    llvm_cbe_tmp__42__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__40;   /* for PHI node */
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe__2e_loopexit4;
  }

llvm_cbe_tmp__74:
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = add nsw i32 %%storemerge, 1, !dbg !12 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_184_count);
  llvm_cbe_tmp__61 = (unsigned int )((unsigned int )(llvm_cbe_storemerge&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__61&4294967295ull)));
  llvm_cbe_tmp__40__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__42;   /* for PHI node */
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__61;   /* for PHI node */
  goto llvm_cbe_tmp__73;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = phi i32 [ %%62, %%61 ], [ %%37, %%36  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_147_count);
  llvm_cbe_tmp__42 = (unsigned int )llvm_cbe_tmp__42__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__42);
printf("\n = 0x%X",llvm_cbe_tmp__59);
printf("\n = 0x%X",llvm_cbe_tmp__40);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ %%64, %%61 ], [ 0, %%36  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",llvm_cbe_tmp__60);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = load i32* %%24, align 4, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_155_count);
  llvm_cbe_tmp__43 = (unsigned int )*llvm_cbe_tmp__31;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__43);
  if ((((signed int )llvm_cbe_storemerge1) < ((signed int )llvm_cbe_tmp__43))) {
    goto llvm_cbe_tmp__75;
  } else {
    goto llvm_cbe_tmp__74;
  }

llvm_cbe_tmp__76:
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = phi i32 [ %%40, %%43 ], [ %%60, %%56  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_179_count);
  llvm_cbe_tmp__59 = (unsigned int )llvm_cbe_tmp__59__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__59);
printf("\n = 0x%X",llvm_cbe_tmp__42);
printf("\n = 0x%X",llvm_cbe_tmp__58);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = add nsw i32 %%storemerge1, 1, !dbg !13 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_181_count);
  llvm_cbe_tmp__60 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__60&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__59) > ((signed int )10u))) {
    llvm_cbe_tmp__65__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
    goto llvm_cbe__2e_loopexit;
  } else {
    llvm_cbe_tmp__42__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__59;   /* for PHI node */
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__60;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

llvm_cbe_tmp__75:
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = mul nsw i32 %%41, %%storemerge, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_158_count);
  llvm_cbe_tmp__44 = (unsigned int )((unsigned int )(llvm_cbe_tmp__43&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__44&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = add nsw i32 %%44, %%storemerge1, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_159_count);
  llvm_cbe_tmp__45 = (unsigned int )((unsigned int )(llvm_cbe_tmp__44&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge1&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__45&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i8** %%4, align 4, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_160_count);
  llvm_cbe_tmp__46 = ( char *)*llvm_cbe_tmp__19;
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = getelementptr inbounds i8* %%46, i32 %%45, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_161_count);
  llvm_cbe_tmp__47 = ( char *)(&llvm_cbe_tmp__46[(((signed int )llvm_cbe_tmp__45))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__45));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = load i8* %%47, align 1, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_162_count);
  llvm_cbe_tmp__48 = (unsigned char )*llvm_cbe_tmp__47;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__48);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = load i32* %%26, align 4, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_163_count);
  llvm_cbe_tmp__49 = (unsigned int )*llvm_cbe_tmp__33;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__49);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = mul nsw i32 %%49, %%storemerge, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_164_count);
  llvm_cbe_tmp__50 = (unsigned int )((unsigned int )(llvm_cbe_tmp__49&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__50&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = add nsw i32 %%50, %%storemerge1, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_165_count);
  llvm_cbe_tmp__51 = (unsigned int )((unsigned int )(llvm_cbe_tmp__50&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge1&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__51&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = load i8** %%8, align 4, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_166_count);
  llvm_cbe_tmp__52 = ( char *)*llvm_cbe_tmp__21;
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = getelementptr inbounds i8* %%52, i32 %%51, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_167_count);
  llvm_cbe_tmp__53 = ( char *)(&llvm_cbe_tmp__52[(((signed int )llvm_cbe_tmp__51))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__51));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = load i8* %%53, align 1, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__54 = (unsigned char )*llvm_cbe_tmp__53;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__54);
  if (((llvm_cbe_tmp__48&255U) == (llvm_cbe_tmp__54&255U))) {
    llvm_cbe_tmp__59__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__42;   /* for PHI node */
    goto llvm_cbe_tmp__76;
  } else {
    goto llvm_cbe_tmp__77;
  }

llvm_cbe_tmp__77:
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = zext i8 %%48 to i32, !dbg !11 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_171_count);
  llvm_cbe_tmp__55 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__48&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__55);
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = zext i8 %%54 to i32, !dbg !11 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_172_count);
  llvm_cbe_tmp__56 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__54&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__56);
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @aesl_internal_.str7, i32 0, i32 0), i8* %%34, i32 %%storemerge, i32 %%storemerge1, i32 %%57, i8* %%35, i32 %%58) nounwind, !dbg !11 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_173_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str7[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 37
#endif
])), ( char *)llvm_cbe_tmp__38, llvm_cbe_storemerge, llvm_cbe_storemerge1, llvm_cbe_tmp__55, ( char *)llvm_cbe_tmp__39, llvm_cbe_tmp__56);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge = 0x%X",llvm_cbe_storemerge);
printf("\nArgument storemerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__55);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__56);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__57);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = add nsw i32 %%40, 1, !dbg !12 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_174_count);
  llvm_cbe_tmp__58 = (unsigned int )((unsigned int )(llvm_cbe_tmp__42&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__58&4294967295ull)));
  llvm_cbe_tmp__59__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__58;   /* for PHI node */
  goto llvm_cbe_tmp__76;

  } while (1); /* end of syntactic loop '.preheader' */
  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_loopexit4:
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 0, i32 0, !dbg !11 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_187_count);
  llvm_cbe_tmp__62 = ( char *)(&llvm_cbe_a->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 0, i32 0, !dbg !11 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_188_count);
  llvm_cbe_tmp__63 = ( char *)(&llvm_cbe_b->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @aesl_internal_.str8, i32 0, i32 0), i8* %%67, i8* %%68) nounwind, !dbg !11 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_189_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str8[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 25
#endif
])), ( char *)llvm_cbe_tmp__62, ( char *)llvm_cbe_tmp__63);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__64);
}
  llvm_cbe_tmp__65__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_loopexit;

llvm_cbe__2e_loopexit:
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = phi i32 [ 0, %%.loopexit4 ], [ 1, %%11 ], [ 1, %%0 ], [ 1, %%61  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_191_count);
  llvm_cbe_tmp__65 = (unsigned int )llvm_cbe_tmp__65__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__65);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",1u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @matrix_comp}\n");
  return llvm_cbe_tmp__65;
}

