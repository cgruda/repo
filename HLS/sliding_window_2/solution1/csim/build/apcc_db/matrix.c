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
typedef struct l_struct_OC_matrix l_struct_OC_matrix;

/* Structure contents */
struct l_struct_OC_matrix {
   char field0[30];
   char *field1;
  unsigned int field2;
  unsigned int field3;
};


/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
signed int matrix_init(l_struct_OC_matrix *llvm_cbe_m,  char *llvm_cbe_name, signed int llvm_cbe_rows_max, signed int llvm_cbe_rows_min, signed int llvm_cbe_cols_max, signed int llvm_cbe_cols_min, signed int llvm_cbe_data_val_max, signed int llvm_cbe_data_val_min);
void print_error(signed int );
signed int matrix_init_demo(l_struct_OC_matrix *llvm_cbe_m,  char *llvm_cbe_name, signed int llvm_cbe_rows_max, signed int llvm_cbe_rows_min, signed int llvm_cbe_cols_max, signed int llvm_cbe_cols_min);
signed int matrix_comp(l_struct_OC_matrix *llvm_cbe_a, l_struct_OC_matrix *llvm_cbe_b);
signed int matrix_print(l_struct_OC_matrix *llvm_cbe_m);
signed int matrix_free(l_struct_OC_matrix *llvm_cbe_m);


/* Global Variable Definitions and Initialization */
static  char aesl_internal__OC_str[14] = "[%-14s;%-3d] ";
static  char aesl_internal__OC_str1[18] = "../../../matrix.c";
static  char aesl_internal__OC_str2[39] = "rows mismatch: %s.rows=%d, %s.rows=%d\n";
static  char aesl_internal__OC_str3[39] = "cols mismatch: %s.cols=%d, %s.cols=%d\n";
static  char aesl_internal__OC_str4[37] = "data mismatch: %s[%d][%d]=%d, %s=%d\n";
static  char aesl_internal__OC_str5[25] = "matrix match!! (%s==%s)\n";
static  char aesl_internal__OC_str7[5] = "%s:\n";
static  char aesl_internal__OC_str8[5] = "%3d ";


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

signed int matrix_init(l_struct_OC_matrix *llvm_cbe_m,  char *llvm_cbe_name, signed int llvm_cbe_rows_max, signed int llvm_cbe_rows_min, signed int llvm_cbe_cols_max, signed int llvm_cbe_cols_min, signed int llvm_cbe_data_val_max, signed int llvm_cbe_data_val_min) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
   char *llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
   char *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  unsigned int llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  unsigned int llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  signed int *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  unsigned int llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  unsigned int llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  signed int *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  unsigned int llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
   char *llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
   char **llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  unsigned int llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  unsigned int llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  unsigned int llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  unsigned int llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge5_count = 0;
  unsigned int llvm_cbe_storemerge5;
  unsigned int llvm_cbe_storemerge5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge23_count = 0;
  unsigned int llvm_cbe_storemerge23;
  unsigned int llvm_cbe_storemerge23__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  unsigned int llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  unsigned int llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  unsigned int llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  unsigned char llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  unsigned int llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  unsigned int llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
   char *llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
   char *llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  unsigned int llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  unsigned int llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  unsigned int llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @matrix_init\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 0, i32 0, !dbg !8 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_30_count);
  llvm_cbe_tmp__1 = ( char *)(&llvm_cbe_m->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = tail call i8* @strcpy(i8* %%1, i8* %%name) nounwind, !dbg !8 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_31_count);
   /*tail*/ ( char *)strcpy(( char *)llvm_cbe_tmp__1, ( char *)llvm_cbe_name);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__2);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = tail call i32 bitcast (i32 (...)* @time to i32 (i32)*)(i32 0) nounwind, !dbg !11 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_32_count);
  llvm_cbe_tmp__3 = (unsigned int ) /*tail*/ time(0u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__3);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @srand(i32 %%3) nounwind, !dbg !11 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_33_count);
   /*tail*/ srand(llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__3);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = tail call i32 @rand() nounwind, !dbg !8 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__4 = (unsigned int ) /*tail*/ rand();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__4);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = add i32 %%rows_max, 1, !dbg !8 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__5 = (unsigned int )((unsigned int )(llvm_cbe_rows_max&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__5&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = sub i32 %%5, %%rows_min, !dbg !8 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__6 = (unsigned int )((unsigned int )(llvm_cbe_tmp__5&4294967295ull)) - ((unsigned int )(llvm_cbe_rows_min&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__6&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = srem i32 %%4, %%6, !dbg !8 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__7 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__4) % ((signed int )llvm_cbe_tmp__6)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__7));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = add nsw i32 %%7, %%rows_min, !dbg !8 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__8 = (unsigned int )((unsigned int )(llvm_cbe_tmp__7&4294967295ull)) + ((unsigned int )(llvm_cbe_rows_min&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__8&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 3, !dbg !8 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__9 = (signed int *)(&llvm_cbe_m->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%8, i32* %%9, align 4, !dbg !8 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_40_count);
  *llvm_cbe_tmp__9 = llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = tail call i32 @rand() nounwind, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_41_count);
  llvm_cbe_tmp__10 = (unsigned int ) /*tail*/ rand();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__10);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add i32 %%cols_max, 1, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(llvm_cbe_cols_max&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__11&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = sub i32 %%11, %%cols_min, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__12 = (unsigned int )((unsigned int )(llvm_cbe_tmp__11&4294967295ull)) - ((unsigned int )(llvm_cbe_cols_min&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__12&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = srem i32 %%10, %%12, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__13 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__10) % ((signed int )llvm_cbe_tmp__12)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__13));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = add nsw i32 %%13, %%cols_min, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__14 = (unsigned int )((unsigned int )(llvm_cbe_tmp__13&4294967295ull)) + ((unsigned int )(llvm_cbe_cols_min&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__14&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 2, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__15 = (signed int *)(&llvm_cbe_m->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%14, i32* %%15, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_47_count);
  *llvm_cbe_tmp__15 = llvm_cbe_tmp__14;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load i32* %%9, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_48_count);
  llvm_cbe_tmp__16 = (unsigned int )*llvm_cbe_tmp__9;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = mul nsw i32 %%16, %%14, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__17 = (unsigned int )((unsigned int )(llvm_cbe_tmp__16&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__14&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__17&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = tail call i8* @calloc(i32 %%17, i32 1) nounwind, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_50_count);
  llvm_cbe_tmp__18 = ( char *) /*tail*/ ( char *)calloc(llvm_cbe_tmp__17, 1u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__17);
printf("\nArgument  = 0x%X",1u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__18);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 1, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_51_count);
  llvm_cbe_tmp__19 = ( char **)(&llvm_cbe_m->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8* %%18, i8** %%19, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_52_count);
  *llvm_cbe_tmp__19 = ( char *)llvm_cbe_tmp__18;
  if (((llvm_cbe_tmp__18) == ((( char *)/*NULL*/0)))) {
    goto llvm_cbe_tmp__38;
  } else {
    goto llvm_cbe__2e_preheader4;
  }

llvm_cbe__2e_preheader4:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load i32* %%9, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__20 = (unsigned int )*llvm_cbe_tmp__9;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__20);
  if ((((signed int )llvm_cbe_tmp__20) > ((signed int )0u))) {
    goto llvm_cbe__2e_preheader_2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe__2e_preheader_2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = add i32 %%data_val_max, 1, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__21 = (unsigned int )((unsigned int )(llvm_cbe_data_val_max&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__21&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = sub i32 %%23, %%data_val_min, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__22 = (unsigned int )((unsigned int )(llvm_cbe_tmp__21&4294967295ull)) - ((unsigned int )(llvm_cbe_data_val_min&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__22&4294967295ull)));
  llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

llvm_cbe_tmp__38:
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @aesl_internal_.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @aesl_internal_.str1, i32 0, i32 0), i32 42) nounwind, !dbg !11 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_64_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 14
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 18
#endif
])), 42u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",42u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__23);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @print_error(i32 5) nounwind, !dbg !11 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_65_count);
   /*tail*/ print_error(5u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",5u);
}
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )5u;   /* for PHI node */
  goto llvm_cbe_tmp__39;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge5 = phi i32 [ 0, %%.preheader.lr.ph ], [ %%41, %%._crit_edge  for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_storemerge5_count);
  llvm_cbe_storemerge5 = (unsigned int )llvm_cbe_storemerge5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge5 = 0x%X",llvm_cbe_storemerge5);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__36);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = load i32* %%15, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_70_count);
  llvm_cbe_tmp__24 = (unsigned int )*llvm_cbe_tmp__15;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__24);
  if ((((signed int )llvm_cbe_tmp__24) > ((signed int )0u))) {
    llvm_cbe_storemerge23__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

llvm_cbe__2e__crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = add nsw i32 %%storemerge5, 1, !dbg !11 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__36 = (unsigned int )((unsigned int )(llvm_cbe_storemerge5&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__36&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = load i32* %%9, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_96_count);
  llvm_cbe_tmp__37 = (unsigned int )*llvm_cbe_tmp__9;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__37);
  if ((((signed int )llvm_cbe_tmp__36) < ((signed int )llvm_cbe_tmp__37))) {
    llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__36;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge23 = phi i32 [ %%38, %%.lr.ph ], [ 0, %%.preheader  for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_storemerge23_count);
  llvm_cbe_storemerge23 = (unsigned int )llvm_cbe_storemerge23__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge23 = 0x%X",llvm_cbe_storemerge23);
printf("\n = 0x%X",llvm_cbe_tmp__34);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = tail call i32 @rand() nounwind, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__25 = (unsigned int ) /*tail*/ rand();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__25);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = srem i32 %%29, %%24, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_74_count);
  llvm_cbe_tmp__26 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__25) % ((signed int )llvm_cbe_tmp__22)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__26));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = add nsw i32 %%30, %%data_val_min, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__27 = (unsigned int )((unsigned int )(llvm_cbe_tmp__26&4294967295ull)) + ((unsigned int )(llvm_cbe_data_val_min&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__27&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = trunc i32 %%31 to i8, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_76_count);
  llvm_cbe_tmp__28 = (unsigned char )((unsigned char )llvm_cbe_tmp__27&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = load i32* %%15, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__29 = (unsigned int )*llvm_cbe_tmp__15;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = mul nsw i32 %%33, %%storemerge5, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_78_count);
  llvm_cbe_tmp__30 = (unsigned int )((unsigned int )(llvm_cbe_tmp__29&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge5&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__30&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = add nsw i32 %%34, %%storemerge23, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_79_count);
  llvm_cbe_tmp__31 = (unsigned int )((unsigned int )(llvm_cbe_tmp__30&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge23&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__31&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = load i8** %%19, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__32 = ( char *)*llvm_cbe_tmp__19;
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = getelementptr inbounds i8* %%36, i32 %%35, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__33 = ( char *)(&llvm_cbe_tmp__32[(((signed int )llvm_cbe_tmp__31))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__31));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%32, i8* %%37, align 1, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_82_count);
  *llvm_cbe_tmp__33 = llvm_cbe_tmp__28;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = add nsw i32 %%storemerge23, 1, !dbg !12 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_83_count);
  llvm_cbe_tmp__34 = (unsigned int )((unsigned int )(llvm_cbe_storemerge23&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__34&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = load i32* %%15, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__35 = (unsigned int )*llvm_cbe_tmp__15;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__35);
  if ((((signed int )llvm_cbe_tmp__34) < ((signed int )llvm_cbe_tmp__35))) {
    llvm_cbe_storemerge23__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__34;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe__2e_loopexit:
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__39;

llvm_cbe_tmp__39:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 5, %%25 ], [ 0, %%.loopexit  for 0x%I64xth hint within @matrix_init  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",5u);
printf("\n = 0x%X",0u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @matrix_init}\n");
  return llvm_cbe_storemerge1;
}


signed int matrix_init_demo(l_struct_OC_matrix *llvm_cbe_m,  char *llvm_cbe_name, signed int llvm_cbe_rows_max, signed int llvm_cbe_rows_min, signed int llvm_cbe_cols_max, signed int llvm_cbe_cols_min) {
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
   char *llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
   char *llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  unsigned int llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  unsigned int llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  unsigned int llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  unsigned int llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  unsigned int llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  unsigned int llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  signed int *llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  unsigned int llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  unsigned int llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  unsigned int llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  unsigned int llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  unsigned int llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  signed int *llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  unsigned int llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  unsigned int llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
   char *llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
   char **llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  unsigned int llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  unsigned int llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge5_count = 0;
  unsigned int llvm_cbe_storemerge5;
  unsigned int llvm_cbe_storemerge5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  unsigned int llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  unsigned int llvm_cbe_tmp__62;
  unsigned int llvm_cbe_tmp__62__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge23_count = 0;
  unsigned int llvm_cbe_storemerge23;
  unsigned int llvm_cbe_storemerge23__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  unsigned int llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  unsigned int llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  unsigned char llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
   char *llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
   char *llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  unsigned int llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  unsigned int llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  unsigned int llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  unsigned int llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @matrix_init_demo\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 0, i32 0, !dbg !8 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_125_count);
  llvm_cbe_tmp__40 = ( char *)(&llvm_cbe_m->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = tail call i8* @strcpy(i8* %%1, i8* %%name) nounwind, !dbg !8 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_127_count);
   /*tail*/ ( char *)strcpy(( char *)llvm_cbe_tmp__40, ( char *)llvm_cbe_name);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__41);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = tail call i32 bitcast (i32 (...)* @time to i32 (i32)*)(i32 0) nounwind, !dbg !11 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_128_count);
  llvm_cbe_tmp__42 = (unsigned int ) /*tail*/ time(0u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__42);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @srand(i32 %%3) nounwind, !dbg !11 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_129_count);
   /*tail*/ srand(llvm_cbe_tmp__42);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__42);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = tail call i32 @rand() nounwind, !dbg !8 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_130_count);
  llvm_cbe_tmp__43 = (unsigned int ) /*tail*/ rand();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__43);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = add i32 %%rows_max, 1, !dbg !8 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_131_count);
  llvm_cbe_tmp__44 = (unsigned int )((unsigned int )(llvm_cbe_rows_max&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__44&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = sub i32 %%5, %%rows_min, !dbg !8 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_132_count);
  llvm_cbe_tmp__45 = (unsigned int )((unsigned int )(llvm_cbe_tmp__44&4294967295ull)) - ((unsigned int )(llvm_cbe_rows_min&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__45&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = srem i32 %%4, %%6, !dbg !8 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__46 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__43) % ((signed int )llvm_cbe_tmp__45)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__46));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = add nsw i32 %%7, %%rows_min, !dbg !8 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__47 = (unsigned int )((unsigned int )(llvm_cbe_tmp__46&4294967295ull)) + ((unsigned int )(llvm_cbe_rows_min&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__47&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 3, !dbg !8 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_135_count);
  llvm_cbe_tmp__48 = (signed int *)(&llvm_cbe_m->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%8, i32* %%9, align 4, !dbg !8 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_136_count);
  *llvm_cbe_tmp__48 = llvm_cbe_tmp__47;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__47);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = tail call i32 @rand() nounwind, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_137_count);
  llvm_cbe_tmp__49 = (unsigned int ) /*tail*/ rand();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__49);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add i32 %%cols_max, 1, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_138_count);
  llvm_cbe_tmp__50 = (unsigned int )((unsigned int )(llvm_cbe_cols_max&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__50&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = sub i32 %%11, %%cols_min, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_139_count);
  llvm_cbe_tmp__51 = (unsigned int )((unsigned int )(llvm_cbe_tmp__50&4294967295ull)) - ((unsigned int )(llvm_cbe_cols_min&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__51&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = srem i32 %%10, %%12, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_140_count);
  llvm_cbe_tmp__52 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__49) % ((signed int )llvm_cbe_tmp__51)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__52));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = add nsw i32 %%13, %%cols_min, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_141_count);
  llvm_cbe_tmp__53 = (unsigned int )((unsigned int )(llvm_cbe_tmp__52&4294967295ull)) + ((unsigned int )(llvm_cbe_cols_min&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__53&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 2, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_142_count);
  llvm_cbe_tmp__54 = (signed int *)(&llvm_cbe_m->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%14, i32* %%15, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_143_count);
  *llvm_cbe_tmp__54 = llvm_cbe_tmp__53;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__53);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load i32* %%9, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_144_count);
  llvm_cbe_tmp__55 = (unsigned int )*llvm_cbe_tmp__48;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__55);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = mul nsw i32 %%16, %%14, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_145_count);
  llvm_cbe_tmp__56 = (unsigned int )((unsigned int )(llvm_cbe_tmp__55&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__53&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__56&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = tail call i8* @calloc(i32 %%17, i32 1) nounwind, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_146_count);
  llvm_cbe_tmp__57 = ( char *) /*tail*/ ( char *)calloc(llvm_cbe_tmp__56, 1u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__56);
printf("\nArgument  = 0x%X",1u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__57);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 1, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_147_count);
  llvm_cbe_tmp__58 = ( char **)(&llvm_cbe_m->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8* %%18, i8** %%19, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_148_count);
  *llvm_cbe_tmp__58 = ( char *)llvm_cbe_tmp__57;
  if (((llvm_cbe_tmp__57) == ((( char *)/*NULL*/0)))) {
    goto llvm_cbe_tmp__72;
  } else {
    goto llvm_cbe__2e_preheader4;
  }

llvm_cbe__2e_preheader4:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load i32* %%9, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_155_count);
  llvm_cbe_tmp__59 = (unsigned int )*llvm_cbe_tmp__48;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__59);
  if ((((signed int )llvm_cbe_tmp__59) > ((signed int )0u))) {
    llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe_tmp__72:
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @aesl_internal_.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @aesl_internal_.str1, i32 0, i32 0), i32 98) nounwind, !dbg !11 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_158_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 14
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 18
#endif
])), 98u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",98u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__60);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @print_error(i32 5) nounwind, !dbg !11 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_159_count);
   /*tail*/ print_error(5u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",5u);
}
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )5u;   /* for PHI node */
  goto llvm_cbe_tmp__73;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge5 = phi i32 [ %%36, %%._crit_edge ], [ 0, %%.preheader4  for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_storemerge5_count);
  llvm_cbe_storemerge5 = (unsigned int )llvm_cbe_storemerge5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge5 = 0x%X",llvm_cbe_storemerge5);
printf("\n = 0x%X",llvm_cbe_tmp__70);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load i32* %%15, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_165_count);
  llvm_cbe_tmp__61 = (unsigned int )*llvm_cbe_tmp__54;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__61);
  if ((((signed int )llvm_cbe_tmp__61) > ((signed int )0u))) {
    llvm_cbe_tmp__62__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__61;   /* for PHI node */
    llvm_cbe_storemerge23__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

llvm_cbe__2e__crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = add nsw i32 %%storemerge5, 1, !dbg !11 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_184_count);
  llvm_cbe_tmp__70 = (unsigned int )((unsigned int )(llvm_cbe_storemerge5&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__70&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = load i32* %%9, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_190_count);
  llvm_cbe_tmp__71 = (unsigned int )*llvm_cbe_tmp__48;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__71);
  if ((((signed int )llvm_cbe_tmp__70) < ((signed int )llvm_cbe_tmp__71))) {
    llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__70;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = phi i32 [ %%34, %%.lr.ph ], [ %%25, %%.preheader  for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__62 = (unsigned int )llvm_cbe_tmp__62__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__62);
printf("\n = 0x%X",llvm_cbe_tmp__69);
printf("\n = 0x%X",llvm_cbe_tmp__61);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge23 = phi i32 [ %%33, %%.lr.ph ], [ 0, %%.preheader  for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_storemerge23_count);
  llvm_cbe_storemerge23 = (unsigned int )llvm_cbe_storemerge23__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge23 = 0x%X",llvm_cbe_storemerge23);
printf("\n = 0x%X",llvm_cbe_tmp__68);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = mul nsw i32 %%27, %%storemerge5, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_169_count);
  llvm_cbe_tmp__63 = (unsigned int )((unsigned int )(llvm_cbe_tmp__62&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge5&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__63&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = add nsw i32 %%28, %%storemerge23, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_170_count);
  llvm_cbe_tmp__64 = (unsigned int )((unsigned int )(llvm_cbe_tmp__63&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge23&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__64&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = trunc i32 %%29 to i8, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_171_count);
  llvm_cbe_tmp__65 = (unsigned char )((unsigned char )llvm_cbe_tmp__64&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = load i8** %%19, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_172_count);
  llvm_cbe_tmp__66 = ( char *)*llvm_cbe_tmp__58;
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = getelementptr inbounds i8* %%31, i32 %%29, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_173_count);
  llvm_cbe_tmp__67 = ( char *)(&llvm_cbe_tmp__66[(((signed int )llvm_cbe_tmp__64))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__64));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%30, i8* %%32, align 1, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_174_count);
  *llvm_cbe_tmp__67 = llvm_cbe_tmp__65;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = add nsw i32 %%storemerge23, 1, !dbg !11 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_175_count);
  llvm_cbe_tmp__68 = (unsigned int )((unsigned int )(llvm_cbe_storemerge23&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__68&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = load i32* %%15, align 4, !dbg !9 for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_181_count);
  llvm_cbe_tmp__69 = (unsigned int )*llvm_cbe_tmp__54;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__69);
  if ((((signed int )llvm_cbe_tmp__68) < ((signed int )llvm_cbe_tmp__69))) {
    llvm_cbe_tmp__62__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__69;   /* for PHI node */
    llvm_cbe_storemerge23__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__68;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe__2e_loopexit:
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__73;

llvm_cbe_tmp__73:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 5, %%23 ], [ 0, %%.loopexit  for 0x%I64xth hint within @matrix_init_demo  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",5u);
printf("\n = 0x%X",0u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @matrix_init_demo}\n");
  return llvm_cbe_storemerge1;
}


signed int matrix_comp(l_struct_OC_matrix *llvm_cbe_a, l_struct_OC_matrix *llvm_cbe_b) {
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond_count = 0;
  bool llvm_cbe_or_2e_cond;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
   char **llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
   char *llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
   char **llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
   char *llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  signed int *llvm_cbe_tmp__78;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  unsigned int llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
  signed int *llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  unsigned int llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
   char *llvm_cbe_tmp__82;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
   char *llvm_cbe_tmp__83;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  unsigned int llvm_cbe_tmp__84;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  bool llvm_cbe_tmp__85;
  bool llvm_cbe_tmp__85__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  signed int *llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  unsigned int llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  signed int *llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  unsigned int llvm_cbe_tmp__89;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
   char *llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
   char *llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  unsigned int llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  unsigned int llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  bool llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond312_count = 0;
  bool llvm_cbe_or_2e_cond312;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
   char *llvm_cbe_tmp__95;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
   char *llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge13_count = 0;
  unsigned int llvm_cbe_storemerge13;
  unsigned int llvm_cbe_storemerge13__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  bool llvm_cbe_tmp__97;
  bool llvm_cbe_tmp__97__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  unsigned int llvm_cbe_tmp__98;
  unsigned int llvm_cbe_tmp__98__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  unsigned int llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  bool llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond46_count = 0;
  bool llvm_cbe_or_2e_cond46;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  unsigned int llvm_cbe_tmp__101;
  unsigned int llvm_cbe_tmp__101__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge17_count = 0;
  unsigned int llvm_cbe_storemerge17;
  unsigned int llvm_cbe_storemerge17__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  bool llvm_cbe_tmp__102;
  bool llvm_cbe_tmp__102__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  unsigned int llvm_cbe_tmp__103;
  unsigned int llvm_cbe_tmp__103__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  unsigned int llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  unsigned int llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
   char *llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
   char *llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  unsigned char llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  unsigned int llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  unsigned int llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  unsigned int llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
   char *llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
   char *llvm_cbe_tmp__113;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  unsigned char llvm_cbe_tmp__114;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  unsigned int llvm_cbe_tmp__115;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  unsigned int llvm_cbe_tmp__116;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  unsigned int llvm_cbe_tmp__117;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  unsigned int llvm_cbe_tmp__118;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  unsigned int llvm_cbe_tmp__119;
  unsigned int llvm_cbe_tmp__119__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e__count = 0;
  bool llvm_cbe__2e_;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  unsigned int llvm_cbe_tmp__120;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  unsigned int llvm_cbe_tmp__121;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  bool llvm_cbe_tmp__122;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond4_count = 0;
  bool llvm_cbe_or_2e_cond4;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa5_count = 0;
  bool llvm_cbe__2e_lcssa5;
  bool llvm_cbe__2e_lcssa5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa_count = 0;
  unsigned int llvm_cbe__2e_lcssa;
  unsigned int llvm_cbe__2e_lcssa__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  unsigned int llvm_cbe_tmp__123;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  static  unsigned long long aesl_llvm_cbe_358_count = 0;
  static  unsigned long long aesl_llvm_cbe_359_count = 0;
  unsigned int llvm_cbe_tmp__124;
  static  unsigned long long aesl_llvm_cbe_360_count = 0;
  static  unsigned long long aesl_llvm_cbe_361_count = 0;
  bool llvm_cbe_tmp__125;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond3_count = 0;
  bool llvm_cbe_or_2e_cond3;
  static  unsigned long long aesl_llvm_cbe_362_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa11_count = 0;
  bool llvm_cbe__2e_lcssa11;
  bool llvm_cbe__2e_lcssa11__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa10_count = 0;
  unsigned int llvm_cbe__2e_lcssa10;
  unsigned int llvm_cbe__2e_lcssa10__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe__2e_not_count = 0;
  static  unsigned long long aesl_llvm_cbe_brmerge_count = 0;
  bool llvm_cbe_brmerge;
  static  unsigned long long aesl_llvm_cbe_363_count = 0;
  static  unsigned long long aesl_llvm_cbe_364_count = 0;
   char *llvm_cbe_tmp__126;
  static  unsigned long long aesl_llvm_cbe_365_count = 0;
   char *llvm_cbe_tmp__127;
  static  unsigned long long aesl_llvm_cbe_366_count = 0;
  unsigned int llvm_cbe_tmp__128;
  static  unsigned long long aesl_llvm_cbe_367_count = 0;
  static  unsigned long long aesl_llvm_cbe_368_count = 0;
  unsigned int llvm_cbe_tmp__129;
  unsigned int llvm_cbe_tmp__129__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_369_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @matrix_comp\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond = or i1 %%1, %%2, !dbg !8 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_or_2e_cond_count);
  llvm_cbe_or_2e_cond = (bool )((((llvm_cbe_a) == (((l_struct_OC_matrix *)/*NULL*/0))) | ((llvm_cbe_b) == (((l_struct_OC_matrix *)/*NULL*/0))))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond = 0x%X\n", llvm_cbe_or_2e_cond);
  if (llvm_cbe_or_2e_cond) {
    llvm_cbe_tmp__129__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
    goto llvm_cbe_tmp__130;
  } else {
    goto llvm_cbe_tmp__131;
  }

llvm_cbe_tmp__131:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 1, !dbg !8 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_230_count);
  llvm_cbe_tmp__74 = ( char **)(&llvm_cbe_a->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = load i8** %%4, align 4, !dbg !8 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_231_count);
  llvm_cbe_tmp__75 = ( char *)*llvm_cbe_tmp__74;
  if (((llvm_cbe_tmp__75) == ((( char *)/*NULL*/0)))) {
    goto llvm_cbe_tmp__132;
  } else {
    goto llvm_cbe_tmp__133;
  }

llvm_cbe_tmp__133:
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 1, !dbg !8 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_234_count);
  llvm_cbe_tmp__76 = ( char **)(&llvm_cbe_b->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i8** %%8, align 4, !dbg !8 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_235_count);
  llvm_cbe_tmp__77 = ( char *)*llvm_cbe_tmp__76;
  if (((llvm_cbe_tmp__77) == ((( char *)/*NULL*/0)))) {
    goto llvm_cbe_tmp__132;
  } else {
    goto llvm_cbe_tmp__134;
  }

llvm_cbe_tmp__132:
  llvm_cbe_tmp__129__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe_tmp__130;

llvm_cbe_tmp__134:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 3, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_247_count);
  llvm_cbe_tmp__78 = (signed int *)(&llvm_cbe_a->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i32* %%13, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_248_count);
  llvm_cbe_tmp__79 = (unsigned int )*llvm_cbe_tmp__78;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 3, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_249_count);
  llvm_cbe_tmp__80 = (signed int *)(&llvm_cbe_b->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load i32* %%15, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_250_count);
  llvm_cbe_tmp__81 = (unsigned int )*llvm_cbe_tmp__80;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__81);
  if (((llvm_cbe_tmp__79&4294967295U) == (llvm_cbe_tmp__81&4294967295U))) {
    llvm_cbe_tmp__85__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    goto llvm_cbe_tmp__135;
  } else {
    goto llvm_cbe_tmp__136;
  }

llvm_cbe_tmp__136:
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 0, i32 0, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_253_count);
  llvm_cbe_tmp__82 = ( char *)(&llvm_cbe_a->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 0, i32 0, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_254_count);
  llvm_cbe_tmp__83 = ( char *)(&llvm_cbe_b->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @aesl_internal_.str2, i32 0, i32 0), i8* %%19, i32 %%14, i8* %%20, i32 %%16) nounwind, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_255_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 39
#endif
])), ( char *)llvm_cbe_tmp__82, llvm_cbe_tmp__79, ( char *)llvm_cbe_tmp__83, llvm_cbe_tmp__81);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__79);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__81);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__84);
}
  llvm_cbe_tmp__85__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  goto llvm_cbe_tmp__135;

llvm_cbe_tmp__135:
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = phi i1 [ false, %%12 ], [ true, %%18  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_261_count);
  llvm_cbe_tmp__85 = (bool )((llvm_cbe_tmp__85__PHI_TEMPORARY)&1);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__85);
printf("\n = 0x%X",0);
printf("\n = 0x%X",1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 2, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_262_count);
  llvm_cbe_tmp__86 = (signed int *)(&llvm_cbe_a->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load i32* %%24, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_263_count);
  llvm_cbe_tmp__87 = (unsigned int )*llvm_cbe_tmp__86;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__87);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 2, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_264_count);
  llvm_cbe_tmp__88 = (signed int *)(&llvm_cbe_b->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = load i32* %%26, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_265_count);
  llvm_cbe_tmp__89 = (unsigned int )*llvm_cbe_tmp__88;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__89);
  if (((llvm_cbe_tmp__87&4294967295U) == (llvm_cbe_tmp__89&4294967295U))) {
    goto llvm_cbe__2e_preheader9;
  } else {
    goto llvm_cbe__2e_critedge_2e_thread;
  }

llvm_cbe__2e_critedge_2e_thread:
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 0, i32 0, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_268_count);
  llvm_cbe_tmp__90 = ( char *)(&llvm_cbe_a->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 0, i32 0, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_269_count);
  llvm_cbe_tmp__91 = ( char *)(&llvm_cbe_b->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @aesl_internal_.str3, i32 0, i32 0), i8* %%29, i32 %%25, i8* %%30, i32 %%27) nounwind, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_270_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str3[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 39
#endif
])), ( char *)llvm_cbe_tmp__90, llvm_cbe_tmp__87, ( char *)llvm_cbe_tmp__91, llvm_cbe_tmp__89);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__87);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__89);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__92);
}
  llvm_cbe_tmp__129__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe_tmp__130;

llvm_cbe__2e_preheader9:
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = load i32* %%13, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_290_count);
  llvm_cbe_tmp__93 = (unsigned int )*llvm_cbe_tmp__78;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__93);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = xor i1 %%23, true, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_292_count);
  llvm_cbe_tmp__94 = (bool )((llvm_cbe_tmp__85 ^ 1)&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__94);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond312 = and i1 %%33, %%3 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_or_2e_cond312_count);
  llvm_cbe_or_2e_cond312 = (bool )(((((signed int )llvm_cbe_tmp__93) > ((signed int )0u)) & llvm_cbe_tmp__94)&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond312 = 0x%X\n", llvm_cbe_or_2e_cond312);
  if (llvm_cbe_or_2e_cond312) {
    goto llvm_cbe__2e_preheader_2e_lr_2e_ph;
  } else {
    llvm_cbe__2e_lcssa11__PHI_TEMPORARY = (bool )llvm_cbe_tmp__85;   /* for PHI node */
    llvm_cbe__2e_lcssa10__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_critedge;
  }

llvm_cbe__2e_preheader_2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 0, i32 0, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_294_count);
  llvm_cbe_tmp__95 = ( char *)(&llvm_cbe_a->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 0, i32 0, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_295_count);
  llvm_cbe_tmp__96 = ( char *)(&llvm_cbe_b->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_storemerge13__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__97__PHI_TEMPORARY = (bool )llvm_cbe_tmp__85;   /* for PHI node */
  llvm_cbe_tmp__98__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge13 = phi i32 [ 0, %%.preheader.lr.ph ], [ %%69, %%.critedge2  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_storemerge13_count);
  llvm_cbe_storemerge13 = (unsigned int )llvm_cbe_storemerge13__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge13 = 0x%X",llvm_cbe_storemerge13);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__123);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = phi i1 [ %%23, %%.preheader.lr.ph ], [ %%.lcssa5, %%.critedge2  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_297_count);
  llvm_cbe_tmp__97 = (bool )((llvm_cbe_tmp__97__PHI_TEMPORARY)&1);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__97);
printf("\n = 0x%X",llvm_cbe_tmp__85);
printf("\n.lcssa5 = 0x%X",llvm_cbe__2e_lcssa5);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = phi i32 [ 0, %%.preheader.lr.ph ], [ %%.lcssa, %%.critedge2  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_298_count);
  llvm_cbe_tmp__98 = (unsigned int )llvm_cbe_tmp__98__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__98);
printf("\n = 0x%X",0u);
printf("\n.lcssa = 0x%X",llvm_cbe__2e_lcssa);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = load i32* %%24, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_306_count);
  llvm_cbe_tmp__99 = (unsigned int )*llvm_cbe_tmp__86;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__99);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = xor i1 %%37, true, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_308_count);
  llvm_cbe_tmp__100 = (bool )((llvm_cbe_tmp__97 ^ 1)&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__100);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond46 = and i1 %%40, %%4 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_or_2e_cond46_count);
  llvm_cbe_or_2e_cond46 = (bool )(((((signed int )llvm_cbe_tmp__99) > ((signed int )0u)) & llvm_cbe_tmp__100)&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond46 = 0x%X\n", llvm_cbe_or_2e_cond46);
  if (llvm_cbe_or_2e_cond46) {
    llvm_cbe_tmp__101__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__99;   /* for PHI node */
    llvm_cbe_storemerge17__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    llvm_cbe_tmp__102__PHI_TEMPORARY = (bool )llvm_cbe_tmp__97;   /* for PHI node */
    llvm_cbe_tmp__103__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__98;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    llvm_cbe__2e_lcssa5__PHI_TEMPORARY = (bool )llvm_cbe_tmp__97;   /* for PHI node */
    llvm_cbe__2e_lcssa__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__98;   /* for PHI node */
    goto llvm_cbe__2e_critedge2;
  }

llvm_cbe__2e_critedge2:
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa5 = phi i1 [ %%37, %%.preheader ], [ %%., %%62  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe__2e_lcssa5_count);
  llvm_cbe__2e_lcssa5 = (bool )((llvm_cbe__2e_lcssa5__PHI_TEMPORARY)&1);
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa5 = 0x%X",llvm_cbe__2e_lcssa5);
printf("\n = 0x%X",llvm_cbe_tmp__97);
printf("\n. = 0x%X",llvm_cbe__2e_);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa = phi i32 [ %%38, %%.preheader ], [ %%63, %%62  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe__2e_lcssa_count);
  llvm_cbe__2e_lcssa = (unsigned int )llvm_cbe__2e_lcssa__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa = 0x%X",llvm_cbe__2e_lcssa);
printf("\n = 0x%X",llvm_cbe_tmp__98);
printf("\n = 0x%X",llvm_cbe_tmp__119);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = add nsw i32 %%storemerge13, 1, !dbg !12 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_350_count);
  llvm_cbe_tmp__123 = (unsigned int )((unsigned int )(llvm_cbe_storemerge13&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__123&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = load i32* %%13, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_359_count);
  llvm_cbe_tmp__124 = (unsigned int )*llvm_cbe_tmp__78;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__124);
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = xor i1 %%.lcssa5, true, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_361_count);
  llvm_cbe_tmp__125 = (bool )((llvm_cbe__2e_lcssa5 ^ 1)&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__125);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond3 = and i1 %%71, %%7 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_or_2e_cond3_count);
  llvm_cbe_or_2e_cond3 = (bool )(((((signed int )llvm_cbe_tmp__123) < ((signed int )llvm_cbe_tmp__124)) & llvm_cbe_tmp__125)&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond3 = 0x%X\n", llvm_cbe_or_2e_cond3);
  if (llvm_cbe_or_2e_cond3) {
    llvm_cbe_storemerge13__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__123;   /* for PHI node */
    llvm_cbe_tmp__97__PHI_TEMPORARY = (bool )llvm_cbe__2e_lcssa5;   /* for PHI node */
    llvm_cbe_tmp__98__PHI_TEMPORARY = (unsigned int )llvm_cbe__2e_lcssa;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    llvm_cbe__2e_lcssa11__PHI_TEMPORARY = (bool )llvm_cbe__2e_lcssa5;   /* for PHI node */
    llvm_cbe__2e_lcssa10__PHI_TEMPORARY = (unsigned int )llvm_cbe__2e_lcssa;   /* for PHI node */
    goto llvm_cbe__2e_critedge;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = phi i32 [ %%66, %%62 ], [ %%39, %%.preheader  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_310_count);
  llvm_cbe_tmp__101 = (unsigned int )llvm_cbe_tmp__101__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__101);
printf("\n = 0x%X",llvm_cbe_tmp__121);
printf("\n = 0x%X",llvm_cbe_tmp__99);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge17 = phi i32 [ %%65, %%62 ], [ 0, %%.preheader  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_storemerge17_count);
  llvm_cbe_storemerge17 = (unsigned int )llvm_cbe_storemerge17__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge17 = 0x%X",llvm_cbe_storemerge17);
printf("\n = 0x%X",llvm_cbe_tmp__120);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = phi i1 [ %%., %%62 ], [ %%37, %%.preheader  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_311_count);
  llvm_cbe_tmp__102 = (bool )((llvm_cbe_tmp__102__PHI_TEMPORARY)&1);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__102);
printf("\n. = 0x%X",llvm_cbe__2e_);
printf("\n = 0x%X",llvm_cbe_tmp__97);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = phi i32 [ %%63, %%62 ], [ %%38, %%.preheader  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_312_count);
  llvm_cbe_tmp__103 = (unsigned int )llvm_cbe_tmp__103__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__103);
printf("\n = 0x%X",llvm_cbe_tmp__119);
printf("\n = 0x%X",llvm_cbe_tmp__98);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = mul nsw i32 %%42, %%storemerge13, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_313_count);
  llvm_cbe_tmp__104 = (unsigned int )((unsigned int )(llvm_cbe_tmp__101&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge13&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__104&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = add nsw i32 %%45, %%storemerge17, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_314_count);
  llvm_cbe_tmp__105 = (unsigned int )((unsigned int )(llvm_cbe_tmp__104&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge17&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__105&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = load i8** %%4, align 4, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_315_count);
  llvm_cbe_tmp__106 = ( char *)*llvm_cbe_tmp__74;
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = getelementptr inbounds i8* %%47, i32 %%46, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_316_count);
  llvm_cbe_tmp__107 = ( char *)(&llvm_cbe_tmp__106[(((signed int )llvm_cbe_tmp__105))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__105));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = load i8* %%48, align 1, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_317_count);
  llvm_cbe_tmp__108 = (unsigned char )*llvm_cbe_tmp__107;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__108);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = load i32* %%26, align 4, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_318_count);
  llvm_cbe_tmp__109 = (unsigned int )*llvm_cbe_tmp__88;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__109);
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = mul nsw i32 %%50, %%storemerge13, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_319_count);
  llvm_cbe_tmp__110 = (unsigned int )((unsigned int )(llvm_cbe_tmp__109&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge13&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__110&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = add nsw i32 %%51, %%storemerge17, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_320_count);
  llvm_cbe_tmp__111 = (unsigned int )((unsigned int )(llvm_cbe_tmp__110&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge17&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__111&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = load i8** %%8, align 4, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_321_count);
  llvm_cbe_tmp__112 = ( char *)*llvm_cbe_tmp__76;
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = getelementptr inbounds i8* %%53, i32 %%52, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_322_count);
  llvm_cbe_tmp__113 = ( char *)(&llvm_cbe_tmp__112[(((signed int )llvm_cbe_tmp__111))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__111));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = load i8* %%54, align 1, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_323_count);
  llvm_cbe_tmp__114 = (unsigned char )*llvm_cbe_tmp__113;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__114);
  if (((llvm_cbe_tmp__108&255U) == (llvm_cbe_tmp__114&255U))) {
    llvm_cbe_tmp__119__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__103;   /* for PHI node */
    goto llvm_cbe_tmp__137;
  } else {
    goto llvm_cbe_tmp__138;
  }

llvm_cbe_tmp__137:
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = phi i32 [ %%44, %%.lr.ph ], [ %%61, %%57  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_335_count);
  llvm_cbe_tmp__119 = (unsigned int )llvm_cbe_tmp__119__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__119);
printf("\n = 0x%X",llvm_cbe_tmp__103);
printf("\n = 0x%X",llvm_cbe_tmp__118);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%. = or i1 %%64, %%43, !dbg !11 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe__2e__count);
  llvm_cbe__2e_ = (bool )(((((signed int )llvm_cbe_tmp__119) > ((signed int )600u)) | llvm_cbe_tmp__102)&1);
if (AESL_DEBUG_TRACE)
printf("\n. = 0x%X\n", llvm_cbe__2e_);
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = add nsw i32 %%storemerge17, 1, !dbg !12 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_337_count);
  llvm_cbe_tmp__120 = (unsigned int )((unsigned int )(llvm_cbe_storemerge17&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__120&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = load i32* %%24, align 4, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_346_count);
  llvm_cbe_tmp__121 = (unsigned int )*llvm_cbe_tmp__86;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__121);
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = xor i1 %%., true, !dbg !9 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_348_count);
  llvm_cbe_tmp__122 = (bool )((llvm_cbe__2e_ ^ 1)&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__122);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond4 = and i1 %%67, %%6 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_or_2e_cond4_count);
  llvm_cbe_or_2e_cond4 = (bool )(((((signed int )llvm_cbe_tmp__120) < ((signed int )llvm_cbe_tmp__121)) & llvm_cbe_tmp__122)&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond4 = 0x%X\n", llvm_cbe_or_2e_cond4);
  if (llvm_cbe_or_2e_cond4) {
    llvm_cbe_tmp__101__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__121;   /* for PHI node */
    llvm_cbe_storemerge17__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__120;   /* for PHI node */
    llvm_cbe_tmp__102__PHI_TEMPORARY = (bool )llvm_cbe__2e_;   /* for PHI node */
    llvm_cbe_tmp__103__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__119;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    llvm_cbe__2e_lcssa5__PHI_TEMPORARY = (bool )llvm_cbe__2e_;   /* for PHI node */
    llvm_cbe__2e_lcssa__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__119;   /* for PHI node */
    goto llvm_cbe__2e_critedge2;
  }

llvm_cbe_tmp__138:
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = zext i8 %%49 to i32, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_326_count);
  llvm_cbe_tmp__115 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__108&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__115);
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = zext i8 %%55 to i32, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_327_count);
  llvm_cbe_tmp__116 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__114&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__116);
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @aesl_internal_.str4, i32 0, i32 0), i8* %%35, i32 %%storemerge13, i32 %%storemerge17, i32 %%58, i8* %%36, i32 %%59) nounwind, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_328_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str4[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 37
#endif
])), ( char *)llvm_cbe_tmp__95, llvm_cbe_storemerge13, llvm_cbe_storemerge17, llvm_cbe_tmp__115, ( char *)llvm_cbe_tmp__96, llvm_cbe_tmp__116);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge13 = 0x%X",llvm_cbe_storemerge13);
printf("\nArgument storemerge17 = 0x%X",llvm_cbe_storemerge17);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__115);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__116);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__117);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = add nsw i32 %%44, 1, !dbg !11 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_329_count);
  llvm_cbe_tmp__118 = (unsigned int )((unsigned int )(llvm_cbe_tmp__103&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__118&4294967295ull)));
  llvm_cbe_tmp__119__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__118;   /* for PHI node */
  goto llvm_cbe_tmp__137;

  } while (1); /* end of syntactic loop '.lr.ph' */
  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe__2e_critedge:
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa11 = phi i1 [ %%23, %%.preheader9 ], [ %%.lcssa5, %%.critedge2  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe__2e_lcssa11_count);
  llvm_cbe__2e_lcssa11 = (bool )((llvm_cbe__2e_lcssa11__PHI_TEMPORARY)&1);
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa11 = 0x%X",llvm_cbe__2e_lcssa11);
printf("\n = 0x%X",llvm_cbe_tmp__85);
printf("\n.lcssa5 = 0x%X",llvm_cbe__2e_lcssa5);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa10 = phi i32 [ 0, %%.preheader9 ], [ %%.lcssa, %%.critedge2  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe__2e_lcssa10_count);
  llvm_cbe__2e_lcssa10 = (unsigned int )llvm_cbe__2e_lcssa10__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa10 = 0x%X",llvm_cbe__2e_lcssa10);
printf("\n = 0x%X",0u);
printf("\n.lcssa = 0x%X",llvm_cbe__2e_lcssa);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%brmerge = or i1 %%.not, %%.lcssa11, !dbg !11 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_brmerge_count);
  llvm_cbe_brmerge = (bool )((((llvm_cbe__2e_lcssa10&4294967295U) != (0u&4294967295U)) | llvm_cbe__2e_lcssa11)&1);
if (AESL_DEBUG_TRACE)
printf("\nbrmerge = 0x%X\n", llvm_cbe_brmerge);
  if (llvm_cbe_brmerge) {
    llvm_cbe_tmp__129__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
    goto llvm_cbe_tmp__130;
  } else {
    goto llvm_cbe_tmp__139;
  }

llvm_cbe_tmp__139:
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = getelementptr inbounds %%struct.matrix* %%a, i32 0, i32 0, i32 0, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_364_count);
  llvm_cbe_tmp__126 = ( char *)(&llvm_cbe_a->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = getelementptr inbounds %%struct.matrix* %%b, i32 0, i32 0, i32 0, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_365_count);
  llvm_cbe_tmp__127 = ( char *)(&llvm_cbe_b->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @aesl_internal_.str5, i32 0, i32 0), i8* %%74, i8* %%75) nounwind, !dbg !10 for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_366_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str5[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 25
#endif
])), ( char *)llvm_cbe_tmp__126, ( char *)llvm_cbe_tmp__127);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__128);
}
  llvm_cbe_tmp__129__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__130;

llvm_cbe_tmp__130:
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = phi i32 [ 0, %%73 ], [ 1, %%11 ], [ 1, %%0 ], [ 1, %%.critedge ], [ 1, %%.critedge.thread  for 0x%I64xth hint within @matrix_comp  --> \n", ++aesl_llvm_cbe_368_count);
  llvm_cbe_tmp__129 = (unsigned int )llvm_cbe_tmp__129__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__129);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",1u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @matrix_comp}\n");
  return llvm_cbe_tmp__129;
}


signed int matrix_print(l_struct_OC_matrix *llvm_cbe_m) {
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
   char **llvm_cbe_tmp__140;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
   char *llvm_cbe_tmp__141;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  static  unsigned long long aesl_llvm_cbe_putchar_count = 0;
  unsigned int llvm_cbe_putchar;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
   char *llvm_cbe_tmp__142;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  unsigned int llvm_cbe_tmp__143;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  signed int *llvm_cbe_tmp__144;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  unsigned int llvm_cbe_tmp__145;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  signed int *llvm_cbe_tmp__146;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge5_count = 0;
  unsigned int llvm_cbe_storemerge5;
  unsigned int llvm_cbe_storemerge5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  unsigned int llvm_cbe_tmp__147;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  unsigned int llvm_cbe_tmp__148;
  unsigned int llvm_cbe_tmp__148__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge14_count = 0;
  unsigned int llvm_cbe_storemerge14;
  unsigned int llvm_cbe_storemerge14__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  unsigned int llvm_cbe_tmp__149;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  unsigned int llvm_cbe_tmp__150;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
   char *llvm_cbe_tmp__151;
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
   char *llvm_cbe_tmp__152;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;
  unsigned char llvm_cbe_tmp__153;
  static  unsigned long long aesl_llvm_cbe_408_count = 0;
  unsigned int llvm_cbe_tmp__154;
  static  unsigned long long aesl_llvm_cbe_409_count = 0;
  unsigned int llvm_cbe_tmp__155;
  static  unsigned long long aesl_llvm_cbe_410_count = 0;
  unsigned int llvm_cbe_tmp__156;
  static  unsigned long long aesl_llvm_cbe_411_count = 0;
  static  unsigned long long aesl_llvm_cbe_412_count = 0;
  static  unsigned long long aesl_llvm_cbe_413_count = 0;
  static  unsigned long long aesl_llvm_cbe_414_count = 0;
  static  unsigned long long aesl_llvm_cbe_415_count = 0;
  unsigned int llvm_cbe_tmp__157;
  static  unsigned long long aesl_llvm_cbe_416_count = 0;
  static  unsigned long long aesl_llvm_cbe_417_count = 0;
  static  unsigned long long aesl_llvm_cbe_putchar2_count = 0;
  unsigned int llvm_cbe_putchar2;
  static  unsigned long long aesl_llvm_cbe_418_count = 0;
  unsigned int llvm_cbe_tmp__158;
  static  unsigned long long aesl_llvm_cbe_419_count = 0;
  static  unsigned long long aesl_llvm_cbe_420_count = 0;
  static  unsigned long long aesl_llvm_cbe_421_count = 0;
  static  unsigned long long aesl_llvm_cbe_422_count = 0;
  static  unsigned long long aesl_llvm_cbe_423_count = 0;
  unsigned int llvm_cbe_tmp__159;
  static  unsigned long long aesl_llvm_cbe_424_count = 0;
  static  unsigned long long aesl_llvm_cbe_425_count = 0;
  static  unsigned long long aesl_llvm_cbe_putchar3_count = 0;
  unsigned int llvm_cbe_putchar3;
  static  unsigned long long aesl_llvm_cbe_426_count = 0;
  static  unsigned long long aesl_llvm_cbe_427_count = 0;
  unsigned int llvm_cbe_tmp__160;
  unsigned int llvm_cbe_tmp__160__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_428_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @matrix_print\n");
  if (((llvm_cbe_m) == (((l_struct_OC_matrix *)/*NULL*/0)))) {
    llvm_cbe_tmp__160__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
    goto llvm_cbe_tmp__161;
  } else {
    goto llvm_cbe_tmp__162;
  }

llvm_cbe_tmp__162:
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 1, !dbg !8 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_380_count);
  llvm_cbe_tmp__140 = ( char **)(&llvm_cbe_m->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i8** %%3, align 4, !dbg !8 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_381_count);
  llvm_cbe_tmp__141 = ( char *)*llvm_cbe_tmp__140;
  if (((llvm_cbe_tmp__141) == ((( char *)/*NULL*/0)))) {
    llvm_cbe_tmp__160__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
    goto llvm_cbe_tmp__161;
  } else {
    goto llvm_cbe_tmp__163;
  }

llvm_cbe_tmp__163:
if (AESL_DEBUG_TRACE)
printf("\n  %%putchar = tail call i32 @putchar(i32 10) nounwind, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_putchar_count);
   /*tail*/ putchar(10u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",10u);
printf("\nReturn putchar = 0x%X",llvm_cbe_putchar);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 0, i32 0, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_384_count);
  llvm_cbe_tmp__142 = ( char *)(&llvm_cbe_m->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str7, i32 0, i32 0), i8* %%7) nounwind, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_385_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str7[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 5
#endif
])), ( char *)llvm_cbe_tmp__142);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__143);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 3, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_390_count);
  llvm_cbe_tmp__144 = (signed int *)(&llvm_cbe_m->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = load i32* %%9, align 4, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_391_count);
  llvm_cbe_tmp__145 = (unsigned int )*llvm_cbe_tmp__144;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__145);
  if ((((signed int )llvm_cbe_tmp__145) > ((signed int )0u))) {
    goto llvm_cbe__2e_preheader_2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge6;
  }

llvm_cbe__2e_preheader_2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 2, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_394_count);
  llvm_cbe_tmp__146 = (signed int *)(&llvm_cbe_m->field2);
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge5 = phi i32 [ 0, %%.preheader.lr.ph ], [ %%26, %%._crit_edge  for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_storemerge5_count);
  llvm_cbe_storemerge5 = (unsigned int )llvm_cbe_storemerge5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge5 = 0x%X",llvm_cbe_storemerge5);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__158);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = load i32* %%12, align 4, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_399_count);
  llvm_cbe_tmp__147 = (unsigned int )*llvm_cbe_tmp__146;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__147);
  if ((((signed int )llvm_cbe_tmp__147) > ((signed int )0u))) {
    llvm_cbe_tmp__148__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__147;   /* for PHI node */
    llvm_cbe_storemerge14__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

llvm_cbe__2e__crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%putchar2 = tail call i32 @putchar(i32 10) nounwind, !dbg !10 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_putchar2_count);
   /*tail*/ putchar(10u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",10u);
printf("\nReturn putchar2 = 0x%X",llvm_cbe_putchar2);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = add nsw i32 %%storemerge5, 1, !dbg !10 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_418_count);
  llvm_cbe_tmp__158 = (unsigned int )((unsigned int )(llvm_cbe_storemerge5&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__158&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = load i32* %%9, align 4, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_423_count);
  llvm_cbe_tmp__159 = (unsigned int )*llvm_cbe_tmp__144;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__159);
  if ((((signed int )llvm_cbe_tmp__158) < ((signed int )llvm_cbe_tmp__159))) {
    llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__158;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe__2e__crit_edge6;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = phi i32 [ %%24, %%.lr.ph ], [ %%13, %%.preheader  for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_402_count);
  llvm_cbe_tmp__148 = (unsigned int )llvm_cbe_tmp__148__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__148);
printf("\n = 0x%X",llvm_cbe_tmp__157);
printf("\n = 0x%X",llvm_cbe_tmp__147);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge14 = phi i32 [ %%23, %%.lr.ph ], [ 0, %%.preheader  for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_storemerge14_count);
  llvm_cbe_storemerge14 = (unsigned int )llvm_cbe_storemerge14__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge14 = 0x%X",llvm_cbe_storemerge14);
printf("\n = 0x%X",llvm_cbe_tmp__156);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = mul nsw i32 %%15, %%storemerge5, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_403_count);
  llvm_cbe_tmp__149 = (unsigned int )((unsigned int )(llvm_cbe_tmp__148&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge5&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__149&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = add nsw i32 %%16, %%storemerge14, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_404_count);
  llvm_cbe_tmp__150 = (unsigned int )((unsigned int )(llvm_cbe_tmp__149&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge14&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__150&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i8** %%3, align 4, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_405_count);
  llvm_cbe_tmp__151 = ( char *)*llvm_cbe_tmp__140;
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds i8* %%18, i32 %%17, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_406_count);
  llvm_cbe_tmp__152 = ( char *)(&llvm_cbe_tmp__151[(((signed int )llvm_cbe_tmp__150))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__150));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = load i8* %%19, align 1, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_407_count);
  llvm_cbe_tmp__153 = (unsigned char )*llvm_cbe_tmp__152;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__153);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = zext i8 %%20 to i32, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_408_count);
  llvm_cbe_tmp__154 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__153&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__154);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str8, i32 0, i32 0), i32 %%21) nounwind, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_409_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str8[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__154);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__154);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__155);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = add nsw i32 %%storemerge14, 1, !dbg !10 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_410_count);
  llvm_cbe_tmp__156 = (unsigned int )((unsigned int )(llvm_cbe_storemerge14&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__156&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = load i32* %%12, align 4, !dbg !9 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_415_count);
  llvm_cbe_tmp__157 = (unsigned int )*llvm_cbe_tmp__146;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__157);
  if ((((signed int )llvm_cbe_tmp__156) < ((signed int )llvm_cbe_tmp__157))) {
    llvm_cbe_tmp__148__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__157;   /* for PHI node */
    llvm_cbe_storemerge14__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__156;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe__2e__crit_edge6:
if (AESL_DEBUG_TRACE)
printf("\n  %%putchar3 = tail call i32 @putchar(i32 10) nounwind, !dbg !10 for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_putchar3_count);
   /*tail*/ putchar(10u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",10u);
printf("\nReturn putchar3 = 0x%X",llvm_cbe_putchar3);
}
  llvm_cbe_tmp__160__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__161;

llvm_cbe_tmp__161:
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = phi i32 [ 0, %%._crit_edge6 ], [ 1, %%0 ], [ 1, %%2  for 0x%I64xth hint within @matrix_print  --> \n", ++aesl_llvm_cbe_427_count);
  llvm_cbe_tmp__160 = (unsigned int )llvm_cbe_tmp__160__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__160);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",1u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @matrix_print}\n");
  return llvm_cbe_tmp__160;
}


signed int matrix_free(l_struct_OC_matrix *llvm_cbe_m) {
  static  unsigned long long aesl_llvm_cbe_429_count = 0;
  static  unsigned long long aesl_llvm_cbe_430_count = 0;
  static  unsigned long long aesl_llvm_cbe_431_count = 0;
  static  unsigned long long aesl_llvm_cbe_432_count = 0;
   char **llvm_cbe_tmp__164;
  static  unsigned long long aesl_llvm_cbe_433_count = 0;
   char *llvm_cbe_tmp__165;
  static  unsigned long long aesl_llvm_cbe_434_count = 0;
  static  unsigned long long aesl_llvm_cbe_435_count = 0;
   char *llvm_cbe_tmp__166;
  static  unsigned long long aesl_llvm_cbe_436_count = 0;
   char *llvm_cbe_tmp__167;
  static  unsigned long long aesl_llvm_cbe_437_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @matrix_free\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 1, !dbg !8 for 0x%I64xth hint within @matrix_free  --> \n", ++aesl_llvm_cbe_432_count);
  llvm_cbe_tmp__164 = ( char **)(&llvm_cbe_m->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = load i8** %%1, align 4, !dbg !8 for 0x%I64xth hint within @matrix_free  --> \n", ++aesl_llvm_cbe_433_count);
  llvm_cbe_tmp__165 = ( char *)*llvm_cbe_tmp__164;
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @free(i8* %%2), !dbg !8 for 0x%I64xth hint within @matrix_free  --> \n", ++aesl_llvm_cbe_434_count);
   /*tail*/ free(( char *)llvm_cbe_tmp__165);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds %%struct.matrix* %%m, i32 0, i32 0, i32 0, !dbg !8 for 0x%I64xth hint within @matrix_free  --> \n", ++aesl_llvm_cbe_435_count);
  llvm_cbe_tmp__166 = ( char *)(&llvm_cbe_m->field0[(((signed int )0u))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = call i8* @memset(i8* %%3, i32 0, i32 44 for 0x%I64xth hint within @matrix_free  --> \n", ++aesl_llvm_cbe_436_count);
  ( char *)memset(( char *)llvm_cbe_tmp__166, 0u, 44u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%X",44u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__167);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @matrix_free}\n");
  return 0u;
}

