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
typedef struct l_struct_OC_matrixf l_struct_OC_matrixf;
typedef struct l_struct_OC_env l_struct_OC_env;

/* Structure contents */
struct l_struct_OC_matrix {
   char field0[30];
  signed int *field1;
  unsigned int field2;
  unsigned int field3;
};

struct l_struct_OC_matrixf {
   char field0[30];
  double *field1;
  unsigned int field2;
  unsigned int field3;
  unsigned int field4;
};

struct l_struct_OC_env {
  l_struct_OC_matrix field0;
  l_struct_OC_matrix field1;
  l_struct_OC_matrix field2;
  l_struct_OC_matrix field3;
  l_struct_OC_matrix field4;
};


/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
signed int conv_2D(l_struct_OC_matrix *llvm_cbe_input, l_struct_OC_matrix *llvm_cbe_kernel, l_struct_OC_matrix *llvm_cbe_bias, l_struct_OC_matrix *llvm_cbe_output);
void print_error(signed int );
signed int conv_2D_norm(l_struct_OC_matrixf *llvm_cbe_input, l_struct_OC_matrix *llvm_cbe_kernel, l_struct_OC_matrix *llvm_cbe_bias, l_struct_OC_matrixf *llvm_cbe_output);
signed int pool_2D(l_struct_OC_matrix *llvm_cbe_input, signed int llvm_cbe_pool_dim, l_struct_OC_matrix *llvm_cbe_output, signed int llvm_cbe_max_pool);
signed int matrix_init(l_struct_OC_matrix *,  char *, signed int , signed int , signed int , signed int , signed int , signed int );
signed int cnn_sw(l_struct_OC_env *llvm_cbe_cnn_env);
signed int cnn_sw_norm(l_struct_OC_env *llvm_cbe_cnn_env);
signed int matrix_norm(l_struct_OC_matrix *, l_struct_OC_matrixf *, signed int );
signed int matrixf_init_zero(l_struct_OC_matrixf *,  char *, signed int , signed int , signed int , signed int );
signed int matrix_denorm(l_struct_OC_matrixf *, l_struct_OC_matrix *, signed int );
signed int matrixf_free(l_struct_OC_matrixf *);
signed int cnn_hw(l_struct_OC_env *llvm_cbe_cnn_env);
signed int cnn_precision_loss_calc(l_struct_OC_matrix *llvm_cbe_ref, l_struct_OC_matrix *llvm_cbe_test, double *llvm_cbe_prec);
signed int matrix_dim_comp(l_struct_OC_matrix *, l_struct_OC_matrix *);


/* Global Variable Definitions and Initialization */
static  char aesl_internal__OC_str1[15] = "../../../cnn.c";
static  char aesl_internal__OC_str[14] = "[%-14s;%-3d] ";
static  char aesl_internal__OC_str2[8] = "pooling";
static  char aesl_internal__OC_str3[11] = "sw_conv_2D";
static  char aesl_internal__OC_str4[7] = "mf_out";
static  char aesl_internal_str[28] = "cnn_hw not implemented yet!";


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

signed int conv_2D(l_struct_OC_matrix *llvm_cbe_input, l_struct_OC_matrix *llvm_cbe_kernel, l_struct_OC_matrix *llvm_cbe_bias, l_struct_OC_matrix *llvm_cbe_output) {
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
  static  unsigned long long aesl_llvm_cbe_or_2e_cond_count = 0;
  bool llvm_cbe_or_2e_cond;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond5_count = 0;
  bool llvm_cbe_or_2e_cond5;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond6_count = 0;
  bool llvm_cbe_or_2e_cond6;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  signed int *llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  signed int *llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  signed int *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  signed int *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  signed int **llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  signed int **llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  signed int **llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  signed int *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  signed int **llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge18_count = 0;
  unsigned int llvm_cbe_storemerge18;
  unsigned int llvm_cbe_storemerge18__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  unsigned int llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  unsigned int llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  unsigned int llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge214_count = 0;
  unsigned int llvm_cbe_storemerge214;
  unsigned int llvm_cbe_storemerge214__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  unsigned int llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge310_count = 0;
  unsigned int llvm_cbe_storemerge310;
  unsigned int llvm_cbe_storemerge310__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  unsigned int llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  unsigned int llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  unsigned int llvm_cbe_tmp__22;
  unsigned int llvm_cbe_tmp__22__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge48_count = 0;
  unsigned int llvm_cbe_storemerge48;
  unsigned int llvm_cbe_storemerge48__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  unsigned int llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  unsigned int llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  unsigned int llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  signed int *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  signed int *llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  unsigned int llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  unsigned int llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  signed int *llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  signed int *llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  unsigned int llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  signed int *llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  signed int *llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  unsigned int llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  unsigned int llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  unsigned int llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  unsigned int llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  signed int *llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  signed int *llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  unsigned int llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  unsigned int llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  unsigned int llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  unsigned int llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  unsigned int llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  unsigned int llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  unsigned int llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  unsigned int llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  unsigned int llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  unsigned int llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  unsigned int llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  unsigned int llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  unsigned int llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  unsigned int llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  unsigned int llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  unsigned int llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  unsigned int llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @conv_2D\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond = or i1 %%1, %%2, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_or_2e_cond_count);
  llvm_cbe_or_2e_cond = (bool )((((llvm_cbe_input) == (((l_struct_OC_matrix *)/*NULL*/0))) | ((llvm_cbe_kernel) == (((l_struct_OC_matrix *)/*NULL*/0))))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond = 0x%X\n", llvm_cbe_or_2e_cond);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond5 = or i1 %%or.cond, %%3, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_or_2e_cond5_count);
  llvm_cbe_or_2e_cond5 = (bool )((llvm_cbe_or_2e_cond | ((llvm_cbe_bias) == (((l_struct_OC_matrix *)/*NULL*/0))))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond5 = 0x%X\n", llvm_cbe_or_2e_cond5);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond6 = or i1 %%or.cond5, %%4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_or_2e_cond6_count);
  llvm_cbe_or_2e_cond6 = (bool )((llvm_cbe_or_2e_cond5 | ((llvm_cbe_output) == (((l_struct_OC_matrix *)/*NULL*/0))))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond6 = 0x%X\n", llvm_cbe_or_2e_cond6);
  if (llvm_cbe_or_2e_cond6) {
    goto llvm_cbe_tmp__61;
  } else {
    goto llvm_cbe__2e_preheader16;
  }

llvm_cbe__2e_preheader16:
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds %%struct.matrix* %%input, i32 0, i32 3, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_32_count);
  llvm_cbe_tmp__1 = (signed int *)(&llvm_cbe_input->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i32* %%5, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_33_count);
  llvm_cbe_tmp__2 = (unsigned int )*llvm_cbe_tmp__1;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds %%struct.matrix* %%kernel, i32 0, i32 3, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__3 = (signed int *)(&llvm_cbe_kernel->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i32* %%7, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__4 = (unsigned int )*llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = add i32 %%6, 1, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__5 = (unsigned int )((unsigned int )(llvm_cbe_tmp__2&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__5&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = sub i32 %%9, %%8, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__6 = (unsigned int )((unsigned int )(llvm_cbe_tmp__5&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__4&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__6&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__6) > ((signed int )0u))) {
    goto llvm_cbe__2e_preheader12_2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe__2e_preheader12_2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds %%struct.matrix* %%input, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__7 = (signed int *)(&llvm_cbe_input->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds %%struct.matrix* %%kernel, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_41_count);
  llvm_cbe_tmp__8 = (signed int *)(&llvm_cbe_kernel->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds %%struct.matrix* %%input, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__9 = (signed int **)(&llvm_cbe_input->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds %%struct.matrix* %%kernel, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__10 = (signed int **)(&llvm_cbe_kernel->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds %%struct.matrix* %%bias, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__11 = (signed int **)(&llvm_cbe_bias->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds %%struct.matrix* %%output, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__12 = (signed int *)(&llvm_cbe_output->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds %%struct.matrix* %%output, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__13 = (signed int **)(&llvm_cbe_output->field1);
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_storemerge18__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader12;

llvm_cbe_tmp__61:
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @aesl_internal_.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @aesl_internal_.str1, i32 0, i32 0), i32 33) nounwind, !dbg !14 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_48_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 14
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 15
#endif
])), 33u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",33u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__14);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @print_error(i32 1) nounwind, !dbg !14 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_49_count);
   /*tail*/ print_error(1u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",1u);
}
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe_tmp__62;

  do {     /* Syntactic loop '.preheader12' to make GCC happy */
llvm_cbe__2e_preheader12:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge18 = phi i32 [ 0, %%.preheader12.lr.ph ], [ %%69, %%._crit_edge15  for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_storemerge18_count);
  llvm_cbe_storemerge18 = (unsigned int )llvm_cbe_storemerge18__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge18 = 0x%X",llvm_cbe_storemerge18);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__56);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load i32* %%12, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_55_count);
  llvm_cbe_tmp__15 = (unsigned int )*llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = load i32* %%13, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_56_count);
  llvm_cbe_tmp__16 = (unsigned int )*llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = add i32 %%21, 1, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_57_count);
  llvm_cbe_tmp__17 = (unsigned int )((unsigned int )(llvm_cbe_tmp__15&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__17&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = sub i32 %%23, %%22, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__18 = (unsigned int )((unsigned int )(llvm_cbe_tmp__17&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__16&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__18&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__18) > ((signed int )0u))) {
    llvm_cbe_storemerge214__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader9;
  } else {
    goto llvm_cbe__2e__crit_edge15;
  }

llvm_cbe__2e__crit_edge15:
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = add nsw i32 %%storemerge18, 1, !dbg !14 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_137_count);
  llvm_cbe_tmp__56 = (unsigned int )((unsigned int )(llvm_cbe_storemerge18&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__56&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = load i32* %%5, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_143_count);
  llvm_cbe_tmp__57 = (unsigned int )*llvm_cbe_tmp__1;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__57);
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = load i32* %%7, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_144_count);
  llvm_cbe_tmp__58 = (unsigned int )*llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__58);
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = add i32 %%70, 1, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_145_count);
  llvm_cbe_tmp__59 = (unsigned int )((unsigned int )(llvm_cbe_tmp__57&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__59&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = sub i32 %%72, %%71, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_146_count);
  llvm_cbe_tmp__60 = (unsigned int )((unsigned int )(llvm_cbe_tmp__59&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__58&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__60&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__56) < ((signed int )llvm_cbe_tmp__60))) {
    llvm_cbe_storemerge18__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__56;   /* for PHI node */
    goto llvm_cbe__2e_preheader12;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

  do {     /* Syntactic loop '.preheader9' to make GCC happy */
llvm_cbe__2e_preheader9:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge214 = phi i32 [ %%63, %%._crit_edge11 ], [ 0, %%.preheader12  for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_storemerge214_count);
  llvm_cbe_storemerge214 = (unsigned int )llvm_cbe_storemerge214__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge214 = 0x%X",llvm_cbe_storemerge214);
printf("\n = 0x%X",llvm_cbe_tmp__51);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = load i32* %%7, align 4, !dbg !13 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_66_count);
  llvm_cbe_tmp__19 = (unsigned int )*llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__19);
  if ((((signed int )llvm_cbe_tmp__19) > ((signed int )0u))) {
    llvm_cbe_storemerge310__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe__2e__crit_edge11;
  }

llvm_cbe__2e__crit_edge11:
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = add nsw i32 %%storemerge214, 1, !dbg !14 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_125_count);
  llvm_cbe_tmp__51 = (unsigned int )((unsigned int )(llvm_cbe_storemerge214&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__51&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = load i32* %%12, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_131_count);
  llvm_cbe_tmp__52 = (unsigned int )*llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__52);
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = load i32* %%13, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_132_count);
  llvm_cbe_tmp__53 = (unsigned int )*llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__53);
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = add i32 %%64, 1, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__54 = (unsigned int )((unsigned int )(llvm_cbe_tmp__52&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__54&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = sub i32 %%66, %%65, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__55 = (unsigned int )((unsigned int )(llvm_cbe_tmp__54&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__53&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__55&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__51) < ((signed int )llvm_cbe_tmp__55))) {
    llvm_cbe_storemerge214__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__51;   /* for PHI node */
    goto llvm_cbe__2e_preheader9;
  } else {
    goto llvm_cbe__2e__crit_edge15;
  }

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge310 = phi i32 [ %%60, %%._crit_edge ], [ 0, %%.preheader9  for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_storemerge310_count);
  llvm_cbe_storemerge310 = (unsigned int )llvm_cbe_storemerge310__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge310 = 0x%X",llvm_cbe_storemerge310);
printf("\n = 0x%X",llvm_cbe_tmp__49);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = load i32* %%13, align 4, !dbg !13 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_74_count);
  llvm_cbe_tmp__20 = (unsigned int )*llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__20);
  if ((((signed int )llvm_cbe_tmp__20) > ((signed int )0u))) {
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

llvm_cbe__2e__crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = add nsw i32 %%storemerge310, 1, !dbg !15 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_115_count);
  llvm_cbe_tmp__49 = (unsigned int )((unsigned int )(llvm_cbe_storemerge310&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__49&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = load i32* %%7, align 4, !dbg !13 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_122_count);
  llvm_cbe_tmp__50 = (unsigned int )*llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__50);
  if ((((signed int )llvm_cbe_tmp__49) < ((signed int )llvm_cbe_tmp__50))) {
    llvm_cbe_storemerge310__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__49;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe__2e__crit_edge11;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__63:
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = phi i32 [ %%28, %%.lr.ph ], [ %%58, %%31  for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_79_count);
  llvm_cbe_tmp__22 = (unsigned int )llvm_cbe_tmp__22__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__22);
printf("\n = 0x%X",llvm_cbe_tmp__20);
printf("\n = 0x%X",llvm_cbe_tmp__48);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge48 = phi i32 [ 0, %%.lr.ph ], [ %%57, %%31  for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_storemerge48_count);
  llvm_cbe_storemerge48 = (unsigned int )llvm_cbe_storemerge48__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge48 = 0x%X",llvm_cbe_storemerge48);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__47);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = load i32* %%12, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__23 = (unsigned int )*llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = mul nsw i32 %%33, %%30, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__24 = (unsigned int )((unsigned int )(llvm_cbe_tmp__23&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__21&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__24&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = add i32 %%storemerge48, %%storemerge214, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__25 = (unsigned int )((unsigned int )(llvm_cbe_storemerge48&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge214&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__25&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = add i32 %%35, %%34, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_83_count);
  llvm_cbe_tmp__26 = (unsigned int )((unsigned int )(llvm_cbe_tmp__25&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__24&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__26&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = load i32** %%14, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_84_count);
  llvm_cbe_tmp__27 = (signed int *)*llvm_cbe_tmp__9;
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = getelementptr inbounds i32* %%37, i32 %%36, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_85_count);
  llvm_cbe_tmp__28 = (signed int *)(&llvm_cbe_tmp__27[(((signed int )llvm_cbe_tmp__26))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__26));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = load i32* %%38, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_86_count);
  llvm_cbe_tmp__29 = (unsigned int )*llvm_cbe_tmp__28;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = mul nsw i32 %%32, %%storemerge310, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_87_count);
  llvm_cbe_tmp__30 = (unsigned int )((unsigned int )(llvm_cbe_tmp__22&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge310&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__30&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = add nsw i32 %%40, %%storemerge48, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__31 = (unsigned int )((unsigned int )(llvm_cbe_tmp__30&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge48&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__31&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = load i32** %%15, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_89_count);
  llvm_cbe_tmp__32 = (signed int *)*llvm_cbe_tmp__10;
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = getelementptr inbounds i32* %%42, i32 %%41, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_90_count);
  llvm_cbe_tmp__33 = (signed int *)(&llvm_cbe_tmp__32[(((signed int )llvm_cbe_tmp__31))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__31));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = load i32* %%43, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__34 = (unsigned int )*llvm_cbe_tmp__33;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = mul i32 %%44, %%39, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__35 = (unsigned int )((unsigned int )(llvm_cbe_tmp__34&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__29&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__35&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i32** %%16, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_93_count);
  llvm_cbe_tmp__36 = (signed int *)*llvm_cbe_tmp__11;
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = getelementptr inbounds i32* %%46, i32 %%41, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_94_count);
  llvm_cbe_tmp__37 = (signed int *)(&llvm_cbe_tmp__36[(((signed int )llvm_cbe_tmp__31))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__31));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = load i32* %%47, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_95_count);
  llvm_cbe_tmp__38 = (unsigned int )*llvm_cbe_tmp__37;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__38);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = load i32* %%17, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_96_count);
  llvm_cbe_tmp__39 = (unsigned int )*llvm_cbe_tmp__12;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__39);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = mul nsw i32 %%49, %%storemerge18, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_97_count);
  llvm_cbe_tmp__40 = (unsigned int )((unsigned int )(llvm_cbe_tmp__39&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__40&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = add nsw i32 %%50, %%storemerge214, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_98_count);
  llvm_cbe_tmp__41 = (unsigned int )((unsigned int )(llvm_cbe_tmp__40&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge214&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__41&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = load i32** %%18, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__42 = (signed int *)*llvm_cbe_tmp__13;
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = getelementptr inbounds i32* %%52, i32 %%51, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_100_count);
  llvm_cbe_tmp__43 = (signed int *)(&llvm_cbe_tmp__42[(((signed int )llvm_cbe_tmp__41))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__41));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = load i32* %%53, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__44 = (unsigned int )*llvm_cbe_tmp__43;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = add i32 %%48, %%45, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__45 = (unsigned int )((unsigned int )(llvm_cbe_tmp__38&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__35&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__45&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = add i32 %%55, %%54, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_103_count);
  llvm_cbe_tmp__46 = (unsigned int )((unsigned int )(llvm_cbe_tmp__45&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__44&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__46&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%56, i32* %%53, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_104_count);
  *llvm_cbe_tmp__43 = llvm_cbe_tmp__46;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__46);
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = add nsw i32 %%storemerge48, 1, !dbg !15 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_105_count);
  llvm_cbe_tmp__47 = (unsigned int )((unsigned int )(llvm_cbe_storemerge48&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__47&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = load i32* %%13, align 4, !dbg !13 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_112_count);
  llvm_cbe_tmp__48 = (unsigned int )*llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__48);
  if ((((signed int )llvm_cbe_tmp__47) < ((signed int )llvm_cbe_tmp__48))) {
    llvm_cbe_tmp__22__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__48;   /* for PHI node */
    llvm_cbe_storemerge48__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__47;   /* for PHI node */
    goto llvm_cbe_tmp__63;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = add nsw i32 %%storemerge310, %%storemerge18, !dbg !12 for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__21 = (unsigned int )((unsigned int )(llvm_cbe_storemerge310&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__21&4294967295ull)));
  llvm_cbe_tmp__22__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__20;   /* for PHI node */
  llvm_cbe_storemerge48__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__63;

  } while (1); /* end of syntactic loop '.preheader' */
  } while (1); /* end of syntactic loop '.preheader9' */
  } while (1); /* end of syntactic loop '.preheader12' */
llvm_cbe__2e_loopexit:
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__62;

llvm_cbe_tmp__62:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 1, %%19 ], [ 0, %%.loopexit  for 0x%I64xth hint within @conv_2D  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",0u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @conv_2D}\n");
  return llvm_cbe_storemerge1;
}


signed int conv_2D_norm(l_struct_OC_matrixf *llvm_cbe_input, l_struct_OC_matrix *llvm_cbe_kernel, l_struct_OC_matrix *llvm_cbe_bias, l_struct_OC_matrixf *llvm_cbe_output) {
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond_count = 0;
  bool llvm_cbe_or_2e_cond;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond5_count = 0;
  bool llvm_cbe_or_2e_cond5;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond6_count = 0;
  bool llvm_cbe_or_2e_cond6;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  signed int *llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  unsigned int llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  signed int *llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  unsigned int llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  unsigned int llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  unsigned int llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  signed int *llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  signed int *llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  double **llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  signed int **llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  signed int **llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  signed int *llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  double **llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  unsigned int llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge18_count = 0;
  unsigned int llvm_cbe_storemerge18;
  unsigned int llvm_cbe_storemerge18__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  unsigned int llvm_cbe_tmp__78;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  unsigned int llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  unsigned int llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  unsigned int llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge214_count = 0;
  unsigned int llvm_cbe_storemerge214;
  unsigned int llvm_cbe_storemerge214__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  unsigned int llvm_cbe_tmp__82;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge310_count = 0;
  unsigned int llvm_cbe_storemerge310;
  unsigned int llvm_cbe_storemerge310__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  unsigned int llvm_cbe_tmp__83;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  unsigned int llvm_cbe_tmp__84;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  unsigned int llvm_cbe_tmp__85;
  unsigned int llvm_cbe_tmp__85__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge48_count = 0;
  unsigned int llvm_cbe_storemerge48;
  unsigned int llvm_cbe_storemerge48__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
  unsigned int llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  unsigned int llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  unsigned int llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  unsigned int llvm_cbe_tmp__89;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  double *llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  double *llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  double llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  unsigned int llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  unsigned int llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  signed int *llvm_cbe_tmp__95;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  signed int *llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  unsigned int llvm_cbe_tmp__97;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  double llvm_cbe_tmp__98;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  double llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  signed int *llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  signed int *llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  unsigned int llvm_cbe_tmp__102;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  double llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  double llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
  unsigned int llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  unsigned int llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  unsigned int llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  double *llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  double *llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
  double llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  double llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  unsigned int llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  unsigned int llvm_cbe_tmp__113;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  unsigned int llvm_cbe_tmp__114;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  unsigned int llvm_cbe_tmp__115;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  unsigned int llvm_cbe_tmp__116;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  unsigned int llvm_cbe_tmp__117;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  unsigned int llvm_cbe_tmp__118;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  unsigned int llvm_cbe_tmp__119;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  unsigned int llvm_cbe_tmp__120;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  unsigned int llvm_cbe_tmp__121;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  unsigned int llvm_cbe_tmp__122;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  unsigned int llvm_cbe_tmp__123;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  unsigned int llvm_cbe_tmp__124;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  unsigned int llvm_cbe_tmp__125;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @conv_2D_norm\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond = or i1 %%1, %%2, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_or_2e_cond_count);
  llvm_cbe_or_2e_cond = (bool )((((llvm_cbe_input) == (((l_struct_OC_matrixf *)/*NULL*/0))) | ((llvm_cbe_kernel) == (((l_struct_OC_matrix *)/*NULL*/0))))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond = 0x%X\n", llvm_cbe_or_2e_cond);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond5 = or i1 %%or.cond, %%3, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_or_2e_cond5_count);
  llvm_cbe_or_2e_cond5 = (bool )((llvm_cbe_or_2e_cond | ((llvm_cbe_bias) == (((l_struct_OC_matrix *)/*NULL*/0))))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond5 = 0x%X\n", llvm_cbe_or_2e_cond5);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond6 = or i1 %%or.cond5, %%4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_or_2e_cond6_count);
  llvm_cbe_or_2e_cond6 = (bool )((llvm_cbe_or_2e_cond5 | ((llvm_cbe_output) == (((l_struct_OC_matrixf *)/*NULL*/0))))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond6 = 0x%X\n", llvm_cbe_or_2e_cond6);
  if (llvm_cbe_or_2e_cond6) {
    goto llvm_cbe_tmp__126;
  } else {
    goto llvm_cbe__2e_preheader16;
  }

llvm_cbe__2e_preheader16:
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds %%struct.matrixf* %%input, i32 0, i32 3, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_182_count);
  llvm_cbe_tmp__64 = (signed int *)(&llvm_cbe_input->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i32* %%5, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_183_count);
  llvm_cbe_tmp__65 = (unsigned int )*llvm_cbe_tmp__64;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds %%struct.matrix* %%kernel, i32 0, i32 3, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_184_count);
  llvm_cbe_tmp__66 = (signed int *)(&llvm_cbe_kernel->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i32* %%7, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_185_count);
  llvm_cbe_tmp__67 = (unsigned int )*llvm_cbe_tmp__66;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__67);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = add i32 %%6, 1, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_186_count);
  llvm_cbe_tmp__68 = (unsigned int )((unsigned int )(llvm_cbe_tmp__65&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__68&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = sub i32 %%9, %%8, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_187_count);
  llvm_cbe_tmp__69 = (unsigned int )((unsigned int )(llvm_cbe_tmp__68&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__67&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__69&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__69) > ((signed int )0u))) {
    goto llvm_cbe__2e_preheader12_2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe__2e_preheader12_2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds %%struct.matrixf* %%input, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_190_count);
  llvm_cbe_tmp__70 = (signed int *)(&llvm_cbe_input->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds %%struct.matrix* %%kernel, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_191_count);
  llvm_cbe_tmp__71 = (signed int *)(&llvm_cbe_kernel->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds %%struct.matrixf* %%input, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_192_count);
  llvm_cbe_tmp__72 = (double **)(&llvm_cbe_input->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds %%struct.matrix* %%kernel, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_193_count);
  llvm_cbe_tmp__73 = (signed int **)(&llvm_cbe_kernel->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds %%struct.matrix* %%bias, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_194_count);
  llvm_cbe_tmp__74 = (signed int **)(&llvm_cbe_bias->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds %%struct.matrixf* %%output, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_195_count);
  llvm_cbe_tmp__75 = (signed int *)(&llvm_cbe_output->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds %%struct.matrixf* %%output, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_196_count);
  llvm_cbe_tmp__76 = (double **)(&llvm_cbe_output->field1);
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_storemerge18__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader12;

llvm_cbe_tmp__126:
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @aesl_internal_.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @aesl_internal_.str1, i32 0, i32 0), i32 55) nounwind, !dbg !14 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_198_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 14
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 15
#endif
])), 55u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",55u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__77);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @print_error(i32 1) nounwind, !dbg !14 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_199_count);
   /*tail*/ print_error(1u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",1u);
}
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe_tmp__127;

  do {     /* Syntactic loop '.preheader12' to make GCC happy */
llvm_cbe__2e_preheader12:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge18 = phi i32 [ 0, %%.preheader12.lr.ph ], [ %%71, %%._crit_edge15  for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_storemerge18_count);
  llvm_cbe_storemerge18 = (unsigned int )llvm_cbe_storemerge18__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge18 = 0x%X",llvm_cbe_storemerge18);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__121);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load i32* %%12, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_205_count);
  llvm_cbe_tmp__78 = (unsigned int )*llvm_cbe_tmp__70;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__78);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = load i32* %%13, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_206_count);
  llvm_cbe_tmp__79 = (unsigned int )*llvm_cbe_tmp__71;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = add i32 %%21, 1, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_207_count);
  llvm_cbe_tmp__80 = (unsigned int )((unsigned int )(llvm_cbe_tmp__78&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__80&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = sub i32 %%23, %%22, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_208_count);
  llvm_cbe_tmp__81 = (unsigned int )((unsigned int )(llvm_cbe_tmp__80&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__79&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__81&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__81) > ((signed int )0u))) {
    llvm_cbe_storemerge214__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader9;
  } else {
    goto llvm_cbe__2e__crit_edge15;
  }

llvm_cbe__2e__crit_edge15:
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = add nsw i32 %%storemerge18, 1, !dbg !14 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_289_count);
  llvm_cbe_tmp__121 = (unsigned int )((unsigned int )(llvm_cbe_storemerge18&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__121&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = load i32* %%5, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_295_count);
  llvm_cbe_tmp__122 = (unsigned int )*llvm_cbe_tmp__64;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__122);
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = load i32* %%7, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_296_count);
  llvm_cbe_tmp__123 = (unsigned int )*llvm_cbe_tmp__66;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__123);
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = add i32 %%72, 1, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_297_count);
  llvm_cbe_tmp__124 = (unsigned int )((unsigned int )(llvm_cbe_tmp__122&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__124&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = sub i32 %%74, %%73, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_298_count);
  llvm_cbe_tmp__125 = (unsigned int )((unsigned int )(llvm_cbe_tmp__124&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__123&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__125&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__121) < ((signed int )llvm_cbe_tmp__125))) {
    llvm_cbe_storemerge18__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__121;   /* for PHI node */
    goto llvm_cbe__2e_preheader12;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

  do {     /* Syntactic loop '.preheader9' to make GCC happy */
llvm_cbe__2e_preheader9:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge214 = phi i32 [ %%65, %%._crit_edge11 ], [ 0, %%.preheader12  for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_storemerge214_count);
  llvm_cbe_storemerge214 = (unsigned int )llvm_cbe_storemerge214__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge214 = 0x%X",llvm_cbe_storemerge214);
printf("\n = 0x%X",llvm_cbe_tmp__116);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = load i32* %%7, align 4, !dbg !13 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_216_count);
  llvm_cbe_tmp__82 = (unsigned int )*llvm_cbe_tmp__66;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__82);
  if ((((signed int )llvm_cbe_tmp__82) > ((signed int )0u))) {
    llvm_cbe_storemerge310__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe__2e__crit_edge11;
  }

llvm_cbe__2e__crit_edge11:
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = add nsw i32 %%storemerge214, 1, !dbg !14 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_277_count);
  llvm_cbe_tmp__116 = (unsigned int )((unsigned int )(llvm_cbe_storemerge214&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__116&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = load i32* %%12, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_283_count);
  llvm_cbe_tmp__117 = (unsigned int )*llvm_cbe_tmp__70;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__117);
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = load i32* %%13, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_284_count);
  llvm_cbe_tmp__118 = (unsigned int )*llvm_cbe_tmp__71;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__118);
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = add i32 %%66, 1, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_285_count);
  llvm_cbe_tmp__119 = (unsigned int )((unsigned int )(llvm_cbe_tmp__117&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__119&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = sub i32 %%68, %%67, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_286_count);
  llvm_cbe_tmp__120 = (unsigned int )((unsigned int )(llvm_cbe_tmp__119&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__118&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__120&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__116) < ((signed int )llvm_cbe_tmp__120))) {
    llvm_cbe_storemerge214__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__116;   /* for PHI node */
    goto llvm_cbe__2e_preheader9;
  } else {
    goto llvm_cbe__2e__crit_edge15;
  }

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge310 = phi i32 [ %%62, %%._crit_edge ], [ 0, %%.preheader9  for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_storemerge310_count);
  llvm_cbe_storemerge310 = (unsigned int )llvm_cbe_storemerge310__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge310 = 0x%X",llvm_cbe_storemerge310);
printf("\n = 0x%X",llvm_cbe_tmp__114);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = load i32* %%13, align 4, !dbg !13 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_224_count);
  llvm_cbe_tmp__83 = (unsigned int )*llvm_cbe_tmp__71;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__83);
  if ((((signed int )llvm_cbe_tmp__83) > ((signed int )0u))) {
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

llvm_cbe__2e__crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = add nsw i32 %%storemerge310, 1, !dbg !15 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_267_count);
  llvm_cbe_tmp__114 = (unsigned int )((unsigned int )(llvm_cbe_storemerge310&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__114&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = load i32* %%7, align 4, !dbg !13 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_274_count);
  llvm_cbe_tmp__115 = (unsigned int )*llvm_cbe_tmp__66;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__115);
  if ((((signed int )llvm_cbe_tmp__114) < ((signed int )llvm_cbe_tmp__115))) {
    llvm_cbe_storemerge310__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__114;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe__2e__crit_edge11;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__128:
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = phi i32 [ %%28, %%.lr.ph ], [ %%60, %%31  for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_229_count);
  llvm_cbe_tmp__85 = (unsigned int )llvm_cbe_tmp__85__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__85);
printf("\n = 0x%X",llvm_cbe_tmp__83);
printf("\n = 0x%X",llvm_cbe_tmp__113);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge48 = phi i32 [ 0, %%.lr.ph ], [ %%59, %%31  for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_storemerge48_count);
  llvm_cbe_storemerge48 = (unsigned int )llvm_cbe_storemerge48__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge48 = 0x%X",llvm_cbe_storemerge48);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__112);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = load i32* %%12, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_230_count);
  llvm_cbe_tmp__86 = (unsigned int )*llvm_cbe_tmp__70;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__86);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = mul nsw i32 %%33, %%30, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_231_count);
  llvm_cbe_tmp__87 = (unsigned int )((unsigned int )(llvm_cbe_tmp__86&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__84&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__87&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = add i32 %%storemerge48, %%storemerge214, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_232_count);
  llvm_cbe_tmp__88 = (unsigned int )((unsigned int )(llvm_cbe_storemerge48&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge214&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__88&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = add i32 %%35, %%34, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_233_count);
  llvm_cbe_tmp__89 = (unsigned int )((unsigned int )(llvm_cbe_tmp__88&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__87&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__89&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = load double** %%14, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_234_count);
  llvm_cbe_tmp__90 = (double *)*llvm_cbe_tmp__72;
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = getelementptr inbounds double* %%37, i32 %%36, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_235_count);
  llvm_cbe_tmp__91 = (double *)(&llvm_cbe_tmp__90[(((signed int )llvm_cbe_tmp__89))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__89));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = load double* %%38, align 8, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_236_count);
  llvm_cbe_tmp__92 = (double )*llvm_cbe_tmp__91;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__92, *(long long*)(&llvm_cbe_tmp__92));
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = mul nsw i32 %%32, %%storemerge310, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_237_count);
  llvm_cbe_tmp__93 = (unsigned int )((unsigned int )(llvm_cbe_tmp__85&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge310&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__93&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = add nsw i32 %%40, %%storemerge48, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_238_count);
  llvm_cbe_tmp__94 = (unsigned int )((unsigned int )(llvm_cbe_tmp__93&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge48&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__94&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = load i32** %%15, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_239_count);
  llvm_cbe_tmp__95 = (signed int *)*llvm_cbe_tmp__73;
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = getelementptr inbounds i32* %%42, i32 %%41, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_240_count);
  llvm_cbe_tmp__96 = (signed int *)(&llvm_cbe_tmp__95[(((signed int )llvm_cbe_tmp__94))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__94));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = load i32* %%43, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_241_count);
  llvm_cbe_tmp__97 = (unsigned int )*llvm_cbe_tmp__96;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__97);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = uitofp i32 %%44 to double, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_242_count);
  llvm_cbe_tmp__98 = (double )((double )(unsigned int )llvm_cbe_tmp__97);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__98, *(long long*)(&llvm_cbe_tmp__98));
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = fmul double %%39, %%45, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_243_count);
  llvm_cbe_tmp__99 = (double )llvm_cbe_tmp__92 * llvm_cbe_tmp__98;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__99, *(long long*)(&llvm_cbe_tmp__99));
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = load i32** %%16, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_244_count);
  llvm_cbe_tmp__100 = (signed int *)*llvm_cbe_tmp__74;
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = getelementptr inbounds i32* %%47, i32 %%41, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_245_count);
  llvm_cbe_tmp__101 = (signed int *)(&llvm_cbe_tmp__100[(((signed int )llvm_cbe_tmp__94))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__94));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = load i32* %%48, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_246_count);
  llvm_cbe_tmp__102 = (unsigned int )*llvm_cbe_tmp__101;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__102);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = uitofp i32 %%49 to double, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_247_count);
  llvm_cbe_tmp__103 = (double )((double )(unsigned int )llvm_cbe_tmp__102);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__103, *(long long*)(&llvm_cbe_tmp__103));
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = fadd double %%46, %%50, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_248_count);
  llvm_cbe_tmp__104 = (double )llvm_cbe_tmp__99 + llvm_cbe_tmp__103;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__104, *(long long*)(&llvm_cbe_tmp__104));
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = load i32* %%17, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_249_count);
  llvm_cbe_tmp__105 = (unsigned int )*llvm_cbe_tmp__75;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__105);
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = mul nsw i32 %%52, %%storemerge18, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_250_count);
  llvm_cbe_tmp__106 = (unsigned int )((unsigned int )(llvm_cbe_tmp__105&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__106&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = add nsw i32 %%53, %%storemerge214, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_251_count);
  llvm_cbe_tmp__107 = (unsigned int )((unsigned int )(llvm_cbe_tmp__106&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge214&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__107&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = load double** %%18, align 4, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_252_count);
  llvm_cbe_tmp__108 = (double *)*llvm_cbe_tmp__76;
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = getelementptr inbounds double* %%55, i32 %%54, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_253_count);
  llvm_cbe_tmp__109 = (double *)(&llvm_cbe_tmp__108[(((signed int )llvm_cbe_tmp__107))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__107));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = load double* %%56, align 8, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_254_count);
  llvm_cbe_tmp__110 = (double )*llvm_cbe_tmp__109;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__110, *(long long*)(&llvm_cbe_tmp__110));
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = fadd double %%57, %%51, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_255_count);
  llvm_cbe_tmp__111 = (double )llvm_cbe_tmp__110 + llvm_cbe_tmp__104;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__111, *(long long*)(&llvm_cbe_tmp__111));
if (AESL_DEBUG_TRACE)
printf("\n  store double %%58, double* %%56, align 8, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_256_count);
  *llvm_cbe_tmp__109 = llvm_cbe_tmp__111;
if (AESL_DEBUG_TRACE)
printf("\n = %lf\n", llvm_cbe_tmp__111);
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = add nsw i32 %%storemerge48, 1, !dbg !15 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_257_count);
  llvm_cbe_tmp__112 = (unsigned int )((unsigned int )(llvm_cbe_storemerge48&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__112&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = load i32* %%13, align 4, !dbg !13 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_264_count);
  llvm_cbe_tmp__113 = (unsigned int )*llvm_cbe_tmp__71;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__113);
  if ((((signed int )llvm_cbe_tmp__112) < ((signed int )llvm_cbe_tmp__113))) {
    llvm_cbe_tmp__85__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__113;   /* for PHI node */
    llvm_cbe_storemerge48__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__112;   /* for PHI node */
    goto llvm_cbe_tmp__128;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = add nsw i32 %%storemerge310, %%storemerge18, !dbg !12 for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_227_count);
  llvm_cbe_tmp__84 = (unsigned int )((unsigned int )(llvm_cbe_storemerge310&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge18&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__84&4294967295ull)));
  llvm_cbe_tmp__85__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__83;   /* for PHI node */
  llvm_cbe_storemerge48__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__128;

  } while (1); /* end of syntactic loop '.preheader' */
  } while (1); /* end of syntactic loop '.preheader9' */
  } while (1); /* end of syntactic loop '.preheader12' */
llvm_cbe__2e_loopexit:
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__127;

llvm_cbe_tmp__127:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 1, %%19 ], [ 0, %%.loopexit  for 0x%I64xth hint within @conv_2D_norm  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",0u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @conv_2D_norm}\n");
  return llvm_cbe_storemerge1;
}


signed int pool_2D(l_struct_OC_matrix *llvm_cbe_input, signed int llvm_cbe_pool_dim, l_struct_OC_matrix *llvm_cbe_output, signed int llvm_cbe_max_pool) {
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond_count = 0;
  bool llvm_cbe_or_2e_cond;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  unsigned int llvm_cbe_tmp__129;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  signed int *llvm_cbe_tmp__130;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  unsigned int llvm_cbe_tmp__131;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  unsigned int llvm_cbe_tmp__132;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  signed int *llvm_cbe_tmp__133;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;
  unsigned int llvm_cbe_tmp__134;
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  unsigned int llvm_cbe_tmp__135;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  static  unsigned long long aesl_llvm_cbe_358_count = 0;
  unsigned int llvm_cbe_tmp__136;
  static  unsigned long long aesl_llvm_cbe_359_count = 0;
  static  unsigned long long aesl_llvm_cbe_360_count = 0;
  static  unsigned long long aesl_llvm_cbe_361_count = 0;
  unsigned int llvm_cbe_tmp__137;
  static  unsigned long long aesl_llvm_cbe_362_count = 0;
  unsigned int llvm_cbe_tmp__138;
  static  unsigned long long aesl_llvm_cbe_363_count = 0;
  unsigned int llvm_cbe_tmp__139;
  static  unsigned long long aesl_llvm_cbe_364_count = 0;
  static  unsigned long long aesl_llvm_cbe_365_count = 0;
  static  unsigned long long aesl_llvm_cbe_366_count = 0;
  static  unsigned long long aesl_llvm_cbe_367_count = 0;
  static  unsigned long long aesl_llvm_cbe_368_count = 0;
  static  unsigned long long aesl_llvm_cbe_369_count = 0;
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  unsigned int llvm_cbe_tmp__140;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  unsigned int llvm_cbe_tmp__141;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  signed int *llvm_cbe_tmp__142;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  signed int **llvm_cbe_tmp__143;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  signed int **llvm_cbe_tmp__144;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge14_count = 0;
  unsigned int llvm_cbe_storemerge14;
  unsigned int llvm_cbe_storemerge14__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  unsigned int llvm_cbe_tmp__145;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  unsigned int llvm_cbe_tmp__146;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  unsigned int llvm_cbe_tmp__147;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge19_count = 0;
  unsigned int llvm_cbe_storemerge19;
  unsigned int llvm_cbe_storemerge19__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  unsigned int llvm_cbe_tmp__148;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
  unsigned int llvm_cbe_tmp__149;
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;
  static  unsigned long long aesl_llvm_cbe_408_count = 0;
  static  unsigned long long aesl_llvm_cbe_409_count = 0;
  static  unsigned long long aesl_llvm_cbe_410_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond16_count = 0;
  static  unsigned long long aesl_llvm_cbe_411_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge34_2e_us_count = 0;
  unsigned int llvm_cbe_storemerge34_2e_us;
  unsigned int llvm_cbe_storemerge34_2e_us__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_412_count = 0;
  unsigned int llvm_cbe_tmp__150;
  static  unsigned long long aesl_llvm_cbe_413_count = 0;
  unsigned int llvm_cbe_tmp__151;
  static  unsigned long long aesl_llvm_cbe_414_count = 0;
  unsigned int llvm_cbe_tmp__152;
  static  unsigned long long aesl_llvm_cbe_415_count = 0;
  signed int *llvm_cbe_tmp__153;
  static  unsigned long long aesl_llvm_cbe_416_count = 0;
  signed int *llvm_cbe_tmp__154;
  static  unsigned long long aesl_llvm_cbe_417_count = 0;
  unsigned int llvm_cbe_tmp__155;
  static  unsigned long long aesl_llvm_cbe_418_count = 0;
  unsigned int llvm_cbe_tmp__156;
  static  unsigned long long aesl_llvm_cbe_419_count = 0;
  unsigned int llvm_cbe_tmp__157;
  static  unsigned long long aesl_llvm_cbe_420_count = 0;
  unsigned int llvm_cbe_tmp__158;
  static  unsigned long long aesl_llvm_cbe_421_count = 0;
  unsigned int llvm_cbe_tmp__159;
  static  unsigned long long aesl_llvm_cbe_422_count = 0;
  signed int *llvm_cbe_tmp__160;
  static  unsigned long long aesl_llvm_cbe_423_count = 0;
  signed int *llvm_cbe_tmp__161;
  static  unsigned long long aesl_llvm_cbe_424_count = 0;
  unsigned int llvm_cbe_tmp__162;
  static  unsigned long long aesl_llvm_cbe_425_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e__2e_us_count = 0;
  unsigned int llvm_cbe__2e__2e_us;
  static  unsigned long long aesl_llvm_cbe_426_count = 0;
  static  unsigned long long aesl_llvm_cbe_427_count = 0;
  unsigned int llvm_cbe_tmp__163;
  static  unsigned long long aesl_llvm_cbe_428_count = 0;
  static  unsigned long long aesl_llvm_cbe_429_count = 0;
  static  unsigned long long aesl_llvm_cbe_430_count = 0;
  static  unsigned long long aesl_llvm_cbe_431_count = 0;
  static  unsigned long long aesl_llvm_cbe_432_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_433_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge26_2e_us_count = 0;
  unsigned int llvm_cbe_storemerge26_2e_us;
  unsigned int llvm_cbe_storemerge26_2e_us__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_434_count = 0;
  static  unsigned long long aesl_llvm_cbe_435_count = 0;
  static  unsigned long long aesl_llvm_cbe_436_count = 0;
  static  unsigned long long aesl_llvm_cbe_437_count = 0;
  static  unsigned long long aesl_llvm_cbe_438_count = 0;
  unsigned int llvm_cbe_tmp__164;
  static  unsigned long long aesl_llvm_cbe_439_count = 0;
  static  unsigned long long aesl_llvm_cbe_440_count = 0;
  unsigned int llvm_cbe_tmp__165;
  static  unsigned long long aesl_llvm_cbe_441_count = 0;
  static  unsigned long long aesl_llvm_cbe_442_count = 0;
  static  unsigned long long aesl_llvm_cbe_443_count = 0;
  static  unsigned long long aesl_llvm_cbe_444_count = 0;
  static  unsigned long long aesl_llvm_cbe_445_count = 0;
  static  unsigned long long aesl_llvm_cbe_446_count = 0;
  static  unsigned long long aesl_llvm_cbe_447_count = 0;
  static  unsigned long long aesl_llvm_cbe_448_count = 0;
  static  unsigned long long aesl_llvm_cbe_449_count = 0;
  unsigned int llvm_cbe_tmp__166;
  static  unsigned long long aesl_llvm_cbe_450_count = 0;
  unsigned int llvm_cbe_tmp__167;
  static  unsigned long long aesl_llvm_cbe_451_count = 0;
  static  unsigned long long aesl_llvm_cbe_452_count = 0;
  static  unsigned long long aesl_llvm_cbe_453_count = 0;
  unsigned int llvm_cbe_tmp__168;
  static  unsigned long long aesl_llvm_cbe_454_count = 0;
  static  unsigned long long aesl_llvm_cbe_455_count = 0;
  static  unsigned long long aesl_llvm_cbe_456_count = 0;
  static  unsigned long long aesl_llvm_cbe_457_count = 0;
  static  unsigned long long aesl_llvm_cbe_458_count = 0;
  static  unsigned long long aesl_llvm_cbe_459_count = 0;
  static  unsigned long long aesl_llvm_cbe_460_count = 0;
  static  unsigned long long aesl_llvm_cbe_461_count = 0;
  static  unsigned long long aesl_llvm_cbe_462_count = 0;
  unsigned int llvm_cbe_tmp__169;
  static  unsigned long long aesl_llvm_cbe_463_count = 0;
  unsigned int llvm_cbe_tmp__170;
  static  unsigned long long aesl_llvm_cbe_464_count = 0;
  static  unsigned long long aesl_llvm_cbe_465_count = 0;
  static  unsigned long long aesl_llvm_cbe_466_count = 0;
  static  unsigned long long aesl_llvm_cbe_467_count = 0;
  unsigned int llvm_cbe_tmp__171;
  unsigned int llvm_cbe_tmp__171__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_468_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @pool_2D\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond = or i1 %%1, %%2, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_or_2e_cond_count);
  llvm_cbe_or_2e_cond = (bool )((((llvm_cbe_input) == (((l_struct_OC_matrix *)/*NULL*/0))) | ((llvm_cbe_output) == (((l_struct_OC_matrix *)/*NULL*/0))))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond = 0x%X\n", llvm_cbe_or_2e_cond);
  if (llvm_cbe_or_2e_cond) {
    goto llvm_cbe_tmp__172;
  } else {
    goto llvm_cbe_tmp__173;
  }

llvm_cbe_tmp__172:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @aesl_internal_.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @aesl_internal_.str1, i32 0, i32 0), i32 80) nounwind, !dbg !14 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_345_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 14
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 15
#endif
])), 80u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",80u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__129);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @print_error(i32 1) nounwind, !dbg !14 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_346_count);
   /*tail*/ print_error(1u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",1u);
}
  llvm_cbe_tmp__171__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe_tmp__174;

llvm_cbe_tmp__173:
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds %%struct.matrix* %%input, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_348_count);
  llvm_cbe_tmp__130 = (signed int *)(&llvm_cbe_input->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load i32* %%6, align 4, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_349_count);
  llvm_cbe_tmp__131 = (unsigned int )*llvm_cbe_tmp__130;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__131);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = srem i32 %%7, %%pool_dim, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_350_count);
  llvm_cbe_tmp__132 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__131) % ((signed int )llvm_cbe_pool_dim)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__132));
  if (((llvm_cbe_tmp__132&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__175;
  } else {
    goto llvm_cbe_tmp__176;
  }

llvm_cbe_tmp__175:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds %%struct.matrix* %%input, i32 0, i32 3, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_353_count);
  llvm_cbe_tmp__133 = (signed int *)(&llvm_cbe_input->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i32* %%11, align 4, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_354_count);
  llvm_cbe_tmp__134 = (unsigned int )*llvm_cbe_tmp__133;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__134);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = srem i32 %%12, %%pool_dim, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_355_count);
  llvm_cbe_tmp__135 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__134) % ((signed int )llvm_cbe_pool_dim)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__135));
  if (((llvm_cbe_tmp__135&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__177;
  } else {
    goto llvm_cbe_tmp__176;
  }

llvm_cbe_tmp__176:
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @aesl_internal_.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @aesl_internal_.str1, i32 0, i32 0), i32 86) nounwind, !dbg !14 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_358_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 14
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 15
#endif
])), 86u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",86u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__136);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @print_error(i32 2) nounwind, !dbg !14 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_359_count);
   /*tail*/ print_error(2u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",2u);
}
  llvm_cbe_tmp__171__PHI_TEMPORARY = (unsigned int )2u;   /* for PHI node */
  goto llvm_cbe_tmp__174;

llvm_cbe_tmp__177:
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = sdiv i32 %%12, %%pool_dim, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_361_count);
  llvm_cbe_tmp__137 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__134) / ((signed int )llvm_cbe_pool_dim)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__137));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = sdiv i32 %%7, %%pool_dim, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_362_count);
  llvm_cbe_tmp__138 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__131) / ((signed int )llvm_cbe_pool_dim)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__138));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = tail call i32 @matrix_init(%%struct.matrix* %%output, i8* getelementptr inbounds ([8 x i8]* @aesl_internal_.str2, i32 0, i32 0), i32 %%18, i32 %%18, i32 %%19, i32 %%19, i32 0, i32 0) nounwind, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_363_count);
  llvm_cbe_tmp__139 = (unsigned int ) /*tail*/ matrix_init((l_struct_OC_matrix *)llvm_cbe_output, ( char *)((&aesl_internal__OC_str2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 8
#endif
])), llvm_cbe_tmp__137, llvm_cbe_tmp__137, llvm_cbe_tmp__138, llvm_cbe_tmp__138, 0u, 0u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__137);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__137);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__138);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__138);
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%X",0u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__139);
}
  if (((llvm_cbe_tmp__139&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe__2e_preheader13;
  } else {
    llvm_cbe_tmp__171__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__139;   /* for PHI node */
    goto llvm_cbe_tmp__174;
  }

llvm_cbe__2e_preheader13:
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = load i32* %%11, align 4, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_376_count);
  llvm_cbe_tmp__140 = (unsigned int )*llvm_cbe_tmp__133;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__140);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = sdiv i32 %%22, %%pool_dim, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_377_count);
  llvm_cbe_tmp__141 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__140) / ((signed int )llvm_cbe_pool_dim)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__141));
  if ((((signed int )llvm_cbe_tmp__141) > ((signed int )0u))) {
    goto llvm_cbe__2e_preheader8_2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe__2e_preheader8_2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds %%struct.matrix* %%output, i32 0, i32 2, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_381_count);
  llvm_cbe_tmp__142 = (signed int *)(&llvm_cbe_output->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds %%struct.matrix* %%output, i32 0, i32 1, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_382_count);
  llvm_cbe_tmp__143 = (signed int **)(&llvm_cbe_output->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = getelementptr inbounds %%struct.matrix* %%input, i32 0, i32 1, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_383_count);
  llvm_cbe_tmp__144 = (signed int **)(&llvm_cbe_input->field1);
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_storemerge14__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader8;

  do {     /* Syntactic loop '.preheader8' to make GCC happy */
llvm_cbe__2e_preheader8:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge14 = phi i32 [ 0, %%.preheader8.lr.ph ], [ %%57, %%._crit_edge12  for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_storemerge14_count);
  llvm_cbe_storemerge14 = (unsigned int )llvm_cbe_storemerge14__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge14 = 0x%X",llvm_cbe_storemerge14);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__168);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = load i32* %%6, align 4, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_392_count);
  llvm_cbe_tmp__145 = (unsigned int )*llvm_cbe_tmp__130;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__145);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = sdiv i32 %%29, %%pool_dim, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_393_count);
  llvm_cbe_tmp__146 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__145) / ((signed int )llvm_cbe_pool_dim)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__146));
  if ((((signed int )llvm_cbe_tmp__146) > ((signed int )0u))) {
    goto llvm_cbe__2e_preheader5_2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge12;
  }

llvm_cbe__2e__crit_edge12:
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = add nsw i32 %%storemerge14, 1, !dbg !15 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_453_count);
  llvm_cbe_tmp__168 = (unsigned int )((unsigned int )(llvm_cbe_storemerge14&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__168&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = load i32* %%11, align 4, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_462_count);
  llvm_cbe_tmp__169 = (unsigned int )*llvm_cbe_tmp__133;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__169);
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = sdiv i32 %%58, %%pool_dim, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_463_count);
  llvm_cbe_tmp__170 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__169) / ((signed int )llvm_cbe_pool_dim)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__170));
  if ((((signed int )llvm_cbe_tmp__168) < ((signed int )llvm_cbe_tmp__170))) {
    llvm_cbe_storemerge14__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__168;   /* for PHI node */
    goto llvm_cbe__2e_preheader8;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

  do {     /* Syntactic loop '.preheader5' to make GCC happy */
llvm_cbe__2e_preheader5:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge19 = phi i32 [ 0, %%.preheader5.lr.ph ], [ %%53, %%._crit_edge7  for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_storemerge19_count);
  llvm_cbe_storemerge19 = (unsigned int )llvm_cbe_storemerge19__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge19 = 0x%X",llvm_cbe_storemerge19);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__165);
}
  if ((((signed int )llvm_cbe_pool_dim) > ((signed int )0u))) {
    goto llvm_cbe__2e_preheader_2e_lr_2e_ph_2e_split_2e_us;
  } else {
    goto llvm_cbe__2e__crit_edge7;
  }

llvm_cbe__2e__crit_edge7:
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = add nsw i32 %%storemerge19, 1, !dbg !15 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_440_count);
  llvm_cbe_tmp__165 = (unsigned int )((unsigned int )(llvm_cbe_storemerge19&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__165&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = load i32* %%6, align 4, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_449_count);
  llvm_cbe_tmp__166 = (unsigned int )*llvm_cbe_tmp__130;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__166);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = sdiv i32 %%54, %%pool_dim, !dbg !12 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_450_count);
  llvm_cbe_tmp__167 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__166) / ((signed int )llvm_cbe_pool_dim)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__167));
  if ((((signed int )llvm_cbe_tmp__165) < ((signed int )llvm_cbe_tmp__167))) {
    llvm_cbe_storemerge19__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__165;   /* for PHI node */
    goto llvm_cbe__2e_preheader5;
  } else {
    goto llvm_cbe__2e__crit_edge12;
  }

  do {     /* Syntactic loop '.lr.ph.us' to make GCC happy */
llvm_cbe__2e_lr_2e_ph_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge26.us = phi i32 [ 0, %%.preheader.lr.ph.split.us ], [ %%35, %%34  for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_storemerge26_2e_us_count);
  llvm_cbe_storemerge26_2e_us = (unsigned int )llvm_cbe_storemerge26_2e_us__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge26.us = 0x%X",llvm_cbe_storemerge26_2e_us);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__149);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = add nsw i32 %%storemerge26.us, %%32, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_438_count);
  llvm_cbe_tmp__164 = (unsigned int )((unsigned int )(llvm_cbe_storemerge26_2e_us&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__147&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__164&4294967295ull)));
  llvm_cbe_storemerge34_2e_us__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__178;

llvm_cbe_tmp__179:
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = add nsw i32 %%storemerge26.us, 1, !dbg !16 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_405_count);
  llvm_cbe_tmp__149 = (unsigned int )((unsigned int )(llvm_cbe_storemerge26_2e_us&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__149&4294967295ull)));
  if (((llvm_cbe_tmp__149&4294967295U) == (llvm_cbe_pool_dim&4294967295U))) {
    goto llvm_cbe__2e__crit_edge7;
  } else {
    llvm_cbe_storemerge26_2e_us__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__149;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph_2e_us;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__178:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge34.us = phi i32 [ 0, %%.lr.ph.us ], [ %%51, %%36  for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_storemerge34_2e_us_count);
  llvm_cbe_storemerge34_2e_us = (unsigned int )llvm_cbe_storemerge34_2e_us__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge34.us = 0x%X",llvm_cbe_storemerge34_2e_us);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__163);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = load i32* %%26, align 4, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_412_count);
  llvm_cbe_tmp__150 = (unsigned int )*llvm_cbe_tmp__142;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__150);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = mul nsw i32 %%37, %%storemerge14, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_413_count);
  llvm_cbe_tmp__151 = (unsigned int )((unsigned int )(llvm_cbe_tmp__150&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge14&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__151&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = add nsw i32 %%38, %%storemerge19, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_414_count);
  llvm_cbe_tmp__152 = (unsigned int )((unsigned int )(llvm_cbe_tmp__151&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge19&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__152&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = load i32** %%27, align 4, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_415_count);
  llvm_cbe_tmp__153 = (signed int *)*llvm_cbe_tmp__143;
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = getelementptr inbounds i32* %%40, i32 %%39, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_416_count);
  llvm_cbe_tmp__154 = (signed int *)(&llvm_cbe_tmp__153[(((signed int )llvm_cbe_tmp__152))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__152));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = load i32* %%41, align 4, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_417_count);
  llvm_cbe_tmp__155 = (unsigned int )*llvm_cbe_tmp__154;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__155);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = load i32* %%6, align 4, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_418_count);
  llvm_cbe_tmp__156 = (unsigned int )*llvm_cbe_tmp__130;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__156);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = mul nsw i32 %%43, %%52, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_419_count);
  llvm_cbe_tmp__157 = (unsigned int )((unsigned int )(llvm_cbe_tmp__156&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__164&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__157&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = add i32 %%storemerge34.us, %%33, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_420_count);
  llvm_cbe_tmp__158 = (unsigned int )((unsigned int )(llvm_cbe_storemerge34_2e_us&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__148&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__158&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = add i32 %%45, %%44, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_421_count);
  llvm_cbe_tmp__159 = (unsigned int )((unsigned int )(llvm_cbe_tmp__158&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__157&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__159&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = load i32** %%28, align 4, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_422_count);
  llvm_cbe_tmp__160 = (signed int *)*llvm_cbe_tmp__144;
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = getelementptr inbounds i32* %%47, i32 %%46, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_423_count);
  llvm_cbe_tmp__161 = (signed int *)(&llvm_cbe_tmp__160[(((signed int )llvm_cbe_tmp__159))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__159));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = load i32* %%48, align 4, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_424_count);
  llvm_cbe_tmp__162 = (unsigned int )*llvm_cbe_tmp__161;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__162);
if (AESL_DEBUG_TRACE)
printf("\n  %%..us = select i1 %%50, i32 %%42, i32 %%49, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe__2e__2e_us_count);
  llvm_cbe__2e__2e_us = (unsigned int )(((((unsigned int )llvm_cbe_tmp__155&4294967295U) > ((unsigned int )llvm_cbe_tmp__162&4294967295U))) ? ((unsigned int )llvm_cbe_tmp__155) : ((unsigned int )llvm_cbe_tmp__162));
if (AESL_DEBUG_TRACE)
printf("\n..us = 0x%X\n", llvm_cbe__2e__2e_us);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%..us, i32* %%41, align 4, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_426_count);
  *llvm_cbe_tmp__154 = llvm_cbe__2e__2e_us;
if (AESL_DEBUG_TRACE)
printf("\n..us = 0x%X\n", llvm_cbe__2e__2e_us);
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = add nsw i32 %%storemerge34.us, 1, !dbg !16 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_427_count);
  llvm_cbe_tmp__163 = (unsigned int )((unsigned int )(llvm_cbe_storemerge34_2e_us&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__163&4294967295ull)));
  if (((llvm_cbe_tmp__163&4294967295U) == (llvm_cbe_pool_dim&4294967295U))) {
    goto llvm_cbe_tmp__179;
  } else {
    llvm_cbe_storemerge34_2e_us__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__163;   /* for PHI node */
    goto llvm_cbe_tmp__178;
  }

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.lr.ph.us' */
llvm_cbe__2e_preheader_2e_lr_2e_ph_2e_split_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = mul nsw i32 %%storemerge19, %%pool_dim, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_403_count);
  llvm_cbe_tmp__148 = (unsigned int )((unsigned int )(llvm_cbe_storemerge19&4294967295ull)) * ((unsigned int )(llvm_cbe_pool_dim&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__148&4294967295ull)));
  llvm_cbe_storemerge26_2e_us__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_lr_2e_ph_2e_us;

  } while (1); /* end of syntactic loop '.preheader5' */
llvm_cbe__2e_preheader5_2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = mul nsw i32 %%storemerge14, %%pool_dim, !dbg !13 for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_396_count);
  llvm_cbe_tmp__147 = (unsigned int )((unsigned int )(llvm_cbe_storemerge14&4294967295ull)) * ((unsigned int )(llvm_cbe_pool_dim&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__147&4294967295ull)));
  llvm_cbe_storemerge19__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader5;

  } while (1); /* end of syntactic loop '.preheader8' */
llvm_cbe__2e_loopexit:
  llvm_cbe_tmp__171__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__174;

llvm_cbe_tmp__174:
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = phi i32 [ 2, %%15 ], [ 1, %%3 ], [ %%20, %%17 ], [ 0, %%.loopexit  for 0x%I64xth hint within @pool_2D  --> \n", ++aesl_llvm_cbe_467_count);
  llvm_cbe_tmp__171 = (unsigned int )llvm_cbe_tmp__171__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__171);
printf("\n = 0x%X",2u);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",llvm_cbe_tmp__139);
printf("\n = 0x%X",0u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @pool_2D}\n");
  return llvm_cbe_tmp__171;
}


signed int cnn_sw(l_struct_OC_env *llvm_cbe_cnn_env) {
  static  unsigned long long aesl_llvm_cbe_469_count = 0;
  static  unsigned long long aesl_llvm_cbe_470_count = 0;
  static  unsigned long long aesl_llvm_cbe_471_count = 0;
  static  unsigned long long aesl_llvm_cbe_472_count = 0;
  static  unsigned long long aesl_llvm_cbe_473_count = 0;
  static  unsigned long long aesl_llvm_cbe_474_count = 0;
  static  unsigned long long aesl_llvm_cbe_475_count = 0;
  static  unsigned long long aesl_llvm_cbe_476_count = 0;
  static  unsigned long long aesl_llvm_cbe_477_count = 0;
  static  unsigned long long aesl_llvm_cbe_478_count = 0;
  static  unsigned long long aesl_llvm_cbe_479_count = 0;
  static  unsigned long long aesl_llvm_cbe_480_count = 0;
  static  unsigned long long aesl_llvm_cbe_481_count = 0;
  static  unsigned long long aesl_llvm_cbe_482_count = 0;
  static  unsigned long long aesl_llvm_cbe_483_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__180;
  static  unsigned long long aesl_llvm_cbe_484_count = 0;
  signed int *llvm_cbe_tmp__181;
  static  unsigned long long aesl_llvm_cbe_485_count = 0;
  unsigned int llvm_cbe_tmp__182;
  static  unsigned long long aesl_llvm_cbe_486_count = 0;
  signed int *llvm_cbe_tmp__183;
  static  unsigned long long aesl_llvm_cbe_487_count = 0;
  unsigned int llvm_cbe_tmp__184;
  static  unsigned long long aesl_llvm_cbe_488_count = 0;
  unsigned int llvm_cbe_tmp__185;
  static  unsigned long long aesl_llvm_cbe_489_count = 0;
  unsigned int llvm_cbe_tmp__186;
  static  unsigned long long aesl_llvm_cbe_490_count = 0;
  signed int *llvm_cbe_tmp__187;
  static  unsigned long long aesl_llvm_cbe_491_count = 0;
  unsigned int llvm_cbe_tmp__188;
  static  unsigned long long aesl_llvm_cbe_492_count = 0;
  signed int *llvm_cbe_tmp__189;
  static  unsigned long long aesl_llvm_cbe_493_count = 0;
  unsigned int llvm_cbe_tmp__190;
  static  unsigned long long aesl_llvm_cbe_494_count = 0;
  unsigned int llvm_cbe_tmp__191;
  static  unsigned long long aesl_llvm_cbe_495_count = 0;
  unsigned int llvm_cbe_tmp__192;
  static  unsigned long long aesl_llvm_cbe_496_count = 0;
  unsigned int llvm_cbe_tmp__193;
  static  unsigned long long aesl_llvm_cbe_497_count = 0;
  static  unsigned long long aesl_llvm_cbe_498_count = 0;
  static  unsigned long long aesl_llvm_cbe_499_count = 0;
  static  unsigned long long aesl_llvm_cbe_500_count = 0;
  static  unsigned long long aesl_llvm_cbe_501_count = 0;
  static  unsigned long long aesl_llvm_cbe_502_count = 0;
  static  unsigned long long aesl_llvm_cbe_503_count = 0;
  static  unsigned long long aesl_llvm_cbe_504_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__194;
  static  unsigned long long aesl_llvm_cbe_505_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__195;
  static  unsigned long long aesl_llvm_cbe_506_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__196;
  static  unsigned long long aesl_llvm_cbe_507_count = 0;
  unsigned int llvm_cbe_tmp__197;
  static  unsigned long long aesl_llvm_cbe_508_count = 0;
  static  unsigned long long aesl_llvm_cbe_509_count = 0;
  static  unsigned long long aesl_llvm_cbe_510_count = 0;
  static  unsigned long long aesl_llvm_cbe_511_count = 0;
  static  unsigned long long aesl_llvm_cbe_512_count = 0;
  static  unsigned long long aesl_llvm_cbe_513_count = 0;
  static  unsigned long long aesl_llvm_cbe_514_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @cnn_sw\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 3, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_483_count);
  llvm_cbe_tmp__180 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 0, i32 3, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_484_count);
  llvm_cbe_tmp__181 = (signed int *)(&llvm_cbe_cnn_env->field0.field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = load i32* %%2, align 4, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_485_count);
  llvm_cbe_tmp__182 = (unsigned int )*llvm_cbe_tmp__181;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__182);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 1, i32 3, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_486_count);
  llvm_cbe_tmp__183 = (signed int *)(&llvm_cbe_cnn_env->field1.field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = load i32* %%4, align 4, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_487_count);
  llvm_cbe_tmp__184 = (unsigned int )*llvm_cbe_tmp__183;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__184);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = sub nsw i32 %%3, %%5, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_488_count);
  llvm_cbe_tmp__185 = (unsigned int )((unsigned int )(llvm_cbe_tmp__182&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__184&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__185&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = add nsw i32 %%6, 1, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_489_count);
  llvm_cbe_tmp__186 = (unsigned int )((unsigned int )(llvm_cbe_tmp__185&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__186&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_490_count);
  llvm_cbe_tmp__187 = (signed int *)(&llvm_cbe_cnn_env->field0.field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i32* %%8, align 4, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_491_count);
  llvm_cbe_tmp__188 = (unsigned int )*llvm_cbe_tmp__187;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__188);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 1, i32 2, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_492_count);
  llvm_cbe_tmp__189 = (signed int *)(&llvm_cbe_cnn_env->field1.field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = load i32* %%10, align 4, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_493_count);
  llvm_cbe_tmp__190 = (unsigned int )*llvm_cbe_tmp__189;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__190);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = sub nsw i32 %%9, %%11, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_494_count);
  llvm_cbe_tmp__191 = (unsigned int )((unsigned int )(llvm_cbe_tmp__188&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__190&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__191&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add nsw i32 %%12, 1, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_495_count);
  llvm_cbe_tmp__192 = (unsigned int )((unsigned int )(llvm_cbe_tmp__191&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__192&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = tail call i32 @matrix_init(%%struct.matrix* %%1, i8* getelementptr inbounds ([11 x i8]* @aesl_internal_.str3, i32 0, i32 0), i32 %%7, i32 %%7, i32 %%13, i32 %%13, i32 0, i32 0) nounwind, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_496_count);
  llvm_cbe_tmp__193 = (unsigned int ) /*tail*/ matrix_init((l_struct_OC_matrix *)llvm_cbe_tmp__180, ( char *)((&aesl_internal__OC_str3[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 11
#endif
])), llvm_cbe_tmp__186, llvm_cbe_tmp__186, llvm_cbe_tmp__192, llvm_cbe_tmp__192, 0u, 0u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__186);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__186);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__192);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__192);
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%X",0u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__193);
}
  if (((llvm_cbe_tmp__193&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__198;
  } else {
    goto llvm_cbe_tmp__199;
  }

llvm_cbe_tmp__198:
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 0, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_504_count);
  llvm_cbe_tmp__194 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field0);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_505_count);
  llvm_cbe_tmp__195 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_506_count);
  llvm_cbe_tmp__196 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = tail call i32 @conv_2D(%%struct.matrix* %%17, %%struct.matrix* %%18, %%struct.matrix* %%19, %%struct.matrix* %%1), !dbg !12 for 0x%I64xth hint within @cnn_sw  --> \n", ++aesl_llvm_cbe_507_count);
  llvm_cbe_tmp__197 = (unsigned int ) /*tail*/ conv_2D((l_struct_OC_matrix *)llvm_cbe_tmp__194, (l_struct_OC_matrix *)llvm_cbe_tmp__195, (l_struct_OC_matrix *)llvm_cbe_tmp__196, (l_struct_OC_matrix *)llvm_cbe_tmp__180);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__197);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @cnn_sw}\n");
  return llvm_cbe_tmp__197;
llvm_cbe_tmp__199:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @cnn_sw}\n");
  return llvm_cbe_tmp__193;
}


signed int cnn_sw_norm(l_struct_OC_env *llvm_cbe_cnn_env) {
  static  unsigned long long aesl_llvm_cbe_mf_in_count = 0;
  l_struct_OC_matrixf llvm_cbe_mf_in;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_mf_out_count = 0;
  l_struct_OC_matrixf llvm_cbe_mf_out;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_515_count = 0;
  static  unsigned long long aesl_llvm_cbe_516_count = 0;
  static  unsigned long long aesl_llvm_cbe_517_count = 0;
  static  unsigned long long aesl_llvm_cbe_518_count = 0;
  static  unsigned long long aesl_llvm_cbe_519_count = 0;
  static  unsigned long long aesl_llvm_cbe_520_count = 0;
  static  unsigned long long aesl_llvm_cbe_521_count = 0;
  static  unsigned long long aesl_llvm_cbe_522_count = 0;
  static  unsigned long long aesl_llvm_cbe_523_count = 0;
  static  unsigned long long aesl_llvm_cbe_524_count = 0;
  static  unsigned long long aesl_llvm_cbe_525_count = 0;
  static  unsigned long long aesl_llvm_cbe_526_count = 0;
  static  unsigned long long aesl_llvm_cbe_527_count = 0;
  static  unsigned long long aesl_llvm_cbe_528_count = 0;
  static  unsigned long long aesl_llvm_cbe_529_count = 0;
  static  unsigned long long aesl_llvm_cbe_530_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__200;
  static  unsigned long long aesl_llvm_cbe_531_count = 0;
  unsigned int llvm_cbe_tmp__201;
  static  unsigned long long aesl_llvm_cbe_532_count = 0;
  static  unsigned long long aesl_llvm_cbe_533_count = 0;
  static  unsigned long long aesl_llvm_cbe_534_count = 0;
  static  unsigned long long aesl_llvm_cbe_535_count = 0;
  static  unsigned long long aesl_llvm_cbe_536_count = 0;
  static  unsigned long long aesl_llvm_cbe_537_count = 0;
  static  unsigned long long aesl_llvm_cbe_538_count = 0;
  static  unsigned long long aesl_llvm_cbe_539_count = 0;
  static  unsigned long long aesl_llvm_cbe_540_count = 0;
  static  unsigned long long aesl_llvm_cbe_541_count = 0;
  static  unsigned long long aesl_llvm_cbe_542_count = 0;
  static  unsigned long long aesl_llvm_cbe_543_count = 0;
  signed int *llvm_cbe_tmp__202;
  static  unsigned long long aesl_llvm_cbe_544_count = 0;
  unsigned int llvm_cbe_tmp__203;
  static  unsigned long long aesl_llvm_cbe_545_count = 0;
  signed int *llvm_cbe_tmp__204;
  static  unsigned long long aesl_llvm_cbe_546_count = 0;
  unsigned int llvm_cbe_tmp__205;
  static  unsigned long long aesl_llvm_cbe_547_count = 0;
  unsigned int llvm_cbe_tmp__206;
  static  unsigned long long aesl_llvm_cbe_548_count = 0;
  unsigned int llvm_cbe_tmp__207;
  static  unsigned long long aesl_llvm_cbe_549_count = 0;
  signed int *llvm_cbe_tmp__208;
  static  unsigned long long aesl_llvm_cbe_550_count = 0;
  unsigned int llvm_cbe_tmp__209;
  static  unsigned long long aesl_llvm_cbe_551_count = 0;
  signed int *llvm_cbe_tmp__210;
  static  unsigned long long aesl_llvm_cbe_552_count = 0;
  unsigned int llvm_cbe_tmp__211;
  static  unsigned long long aesl_llvm_cbe_553_count = 0;
  unsigned int llvm_cbe_tmp__212;
  static  unsigned long long aesl_llvm_cbe_554_count = 0;
  unsigned int llvm_cbe_tmp__213;
  static  unsigned long long aesl_llvm_cbe_555_count = 0;
  unsigned int llvm_cbe_tmp__214;
  static  unsigned long long aesl_llvm_cbe_556_count = 0;
  static  unsigned long long aesl_llvm_cbe_557_count = 0;
  static  unsigned long long aesl_llvm_cbe_558_count = 0;
  static  unsigned long long aesl_llvm_cbe_559_count = 0;
  static  unsigned long long aesl_llvm_cbe_560_count = 0;
  static  unsigned long long aesl_llvm_cbe_561_count = 0;
  static  unsigned long long aesl_llvm_cbe_562_count = 0;
  static  unsigned long long aesl_llvm_cbe_563_count = 0;
  static  unsigned long long aesl_llvm_cbe_564_count = 0;
  static  unsigned long long aesl_llvm_cbe_565_count = 0;
  static  unsigned long long aesl_llvm_cbe_566_count = 0;
  static  unsigned long long aesl_llvm_cbe_567_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__215;
  static  unsigned long long aesl_llvm_cbe_568_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__216;
  static  unsigned long long aesl_llvm_cbe_569_count = 0;
  unsigned int llvm_cbe_tmp__217;
  static  unsigned long long aesl_llvm_cbe_570_count = 0;
  static  unsigned long long aesl_llvm_cbe_571_count = 0;
  static  unsigned long long aesl_llvm_cbe_572_count = 0;
  static  unsigned long long aesl_llvm_cbe_573_count = 0;
  static  unsigned long long aesl_llvm_cbe_574_count = 0;
  static  unsigned long long aesl_llvm_cbe_575_count = 0;
  static  unsigned long long aesl_llvm_cbe_576_count = 0;
  static  unsigned long long aesl_llvm_cbe_577_count = 0;
  static  unsigned long long aesl_llvm_cbe_578_count = 0;
  static  unsigned long long aesl_llvm_cbe_579_count = 0;
  static  unsigned long long aesl_llvm_cbe_580_count = 0;
  static  unsigned long long aesl_llvm_cbe_581_count = 0;
  l_struct_OC_matrix *llvm_cbe_tmp__218;
  static  unsigned long long aesl_llvm_cbe_582_count = 0;
  unsigned int llvm_cbe_tmp__219;
  static  unsigned long long aesl_llvm_cbe_583_count = 0;
  static  unsigned long long aesl_llvm_cbe_584_count = 0;
  static  unsigned long long aesl_llvm_cbe_585_count = 0;
  static  unsigned long long aesl_llvm_cbe_586_count = 0;
  static  unsigned long long aesl_llvm_cbe_587_count = 0;
  static  unsigned long long aesl_llvm_cbe_588_count = 0;
  static  unsigned long long aesl_llvm_cbe_589_count = 0;
  static  unsigned long long aesl_llvm_cbe_590_count = 0;
  static  unsigned long long aesl_llvm_cbe_591_count = 0;
  static  unsigned long long aesl_llvm_cbe_592_count = 0;
  static  unsigned long long aesl_llvm_cbe_593_count = 0;
  static  unsigned long long aesl_llvm_cbe_594_count = 0;
  unsigned int llvm_cbe_tmp__220;
  static  unsigned long long aesl_llvm_cbe_595_count = 0;
  unsigned int llvm_cbe_tmp__221;
  static  unsigned long long aesl_llvm_cbe_596_count = 0;
  static  unsigned long long aesl_llvm_cbe_597_count = 0;
  unsigned int llvm_cbe_tmp__222;
  unsigned int llvm_cbe_tmp__222__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_598_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @cnn_sw_norm\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 0, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_530_count);
  llvm_cbe_tmp__200 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field0);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = call i32 @matrix_norm(%%struct.matrix* %%1, %%struct.matrixf* %%mf_in, i32 255) nounwind, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_531_count);
  llvm_cbe_tmp__201 = (unsigned int )matrix_norm((l_struct_OC_matrix *)llvm_cbe_tmp__200, (l_struct_OC_matrixf *)(&llvm_cbe_mf_in), 255u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",255u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__201);
}
  if (((llvm_cbe_tmp__201&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__223;
  } else {
    llvm_cbe_tmp__222__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__201;   /* for PHI node */
    goto llvm_cbe_tmp__224;
  }

llvm_cbe_tmp__223:
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 0, i32 3, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_543_count);
  llvm_cbe_tmp__202 = (signed int *)(&llvm_cbe_cnn_env->field0.field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i32* %%5, align 4, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_544_count);
  llvm_cbe_tmp__203 = (unsigned int )*llvm_cbe_tmp__202;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__203);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 1, i32 3, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_545_count);
  llvm_cbe_tmp__204 = (signed int *)(&llvm_cbe_cnn_env->field1.field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i32* %%7, align 4, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_546_count);
  llvm_cbe_tmp__205 = (unsigned int )*llvm_cbe_tmp__204;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__205);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = sub nsw i32 %%6, %%8, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_547_count);
  llvm_cbe_tmp__206 = (unsigned int )((unsigned int )(llvm_cbe_tmp__203&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__205&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__206&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = add nsw i32 %%9, 1, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_548_count);
  llvm_cbe_tmp__207 = (unsigned int )((unsigned int )(llvm_cbe_tmp__206&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__207&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_549_count);
  llvm_cbe_tmp__208 = (signed int *)(&llvm_cbe_cnn_env->field0.field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i32* %%11, align 4, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_550_count);
  llvm_cbe_tmp__209 = (unsigned int )*llvm_cbe_tmp__208;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__209);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 1, i32 2, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_551_count);
  llvm_cbe_tmp__210 = (signed int *)(&llvm_cbe_cnn_env->field1.field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i32* %%13, align 4, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_552_count);
  llvm_cbe_tmp__211 = (unsigned int )*llvm_cbe_tmp__210;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__211);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = sub nsw i32 %%12, %%14, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_553_count);
  llvm_cbe_tmp__212 = (unsigned int )((unsigned int )(llvm_cbe_tmp__209&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__211&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__212&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = add nsw i32 %%15, 1, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_554_count);
  llvm_cbe_tmp__213 = (unsigned int )((unsigned int )(llvm_cbe_tmp__212&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__213&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = call i32 @matrixf_init_zero(%%struct.matrixf* %%mf_out, i8* getelementptr inbounds ([7 x i8]* @aesl_internal_.str4, i32 0, i32 0), i32 %%10, i32 %%10, i32 %%16, i32 %%16) nounwind, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_555_count);
  llvm_cbe_tmp__214 = (unsigned int )matrixf_init_zero((l_struct_OC_matrixf *)(&llvm_cbe_mf_out), ( char *)((&aesl_internal__OC_str4[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 7
#endif
])), llvm_cbe_tmp__207, llvm_cbe_tmp__207, llvm_cbe_tmp__213, llvm_cbe_tmp__213);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__207);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__207);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__213);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__213);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__214);
}
  if (((llvm_cbe_tmp__214&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__225;
  } else {
    llvm_cbe_tmp__222__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__214;   /* for PHI node */
    goto llvm_cbe_tmp__224;
  }

llvm_cbe_tmp__225:
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_567_count);
  llvm_cbe_tmp__215 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_568_count);
  llvm_cbe_tmp__216 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = call i32 @conv_2D_norm(%%struct.matrixf* %%mf_in, %%struct.matrix* %%20, %%struct.matrix* %%21, %%struct.matrixf* %%mf_out), !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_569_count);
  llvm_cbe_tmp__217 = (unsigned int )conv_2D_norm((l_struct_OC_matrixf *)(&llvm_cbe_mf_in), (l_struct_OC_matrix *)llvm_cbe_tmp__215, (l_struct_OC_matrix *)llvm_cbe_tmp__216, (l_struct_OC_matrixf *)(&llvm_cbe_mf_out));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__217);
}
  if (((llvm_cbe_tmp__217&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__226;
  } else {
    llvm_cbe_tmp__222__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__217;   /* for PHI node */
    goto llvm_cbe_tmp__224;
  }

llvm_cbe_tmp__226:
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds %%struct.env* %%cnn_env, i32 0, i32 3, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_581_count);
  llvm_cbe_tmp__218 = (l_struct_OC_matrix *)(&llvm_cbe_cnn_env->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = call i32 @matrix_denorm(%%struct.matrixf* %%mf_out, %%struct.matrix* %%25, i32 255) nounwind, !dbg !12 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_582_count);
  llvm_cbe_tmp__219 = (unsigned int )matrix_denorm((l_struct_OC_matrixf *)(&llvm_cbe_mf_out), (l_struct_OC_matrix *)llvm_cbe_tmp__218, 255u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",255u);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__219);
}
  if (((llvm_cbe_tmp__219&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__227;
  } else {
    llvm_cbe_tmp__222__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__219;   /* for PHI node */
    goto llvm_cbe_tmp__224;
  }

llvm_cbe_tmp__227:
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = call i32 @matrixf_free(%%struct.matrixf* %%mf_in) nounwind, !dbg !13 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_594_count);
  matrixf_free((l_struct_OC_matrixf *)(&llvm_cbe_mf_in));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__220);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = call i32 @matrixf_free(%%struct.matrixf* %%mf_out) nounwind, !dbg !14 for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_595_count);
  matrixf_free((l_struct_OC_matrixf *)(&llvm_cbe_mf_out));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__221);
}
  llvm_cbe_tmp__222__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__224;

llvm_cbe_tmp__224:
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = phi i32 [ 0, %%28 ], [ %%2, %%0 ], [ %%17, %%4 ], [ %%22, %%19 ], [ %%26, %%24  for 0x%I64xth hint within @cnn_sw_norm  --> \n", ++aesl_llvm_cbe_597_count);
  llvm_cbe_tmp__222 = (unsigned int )llvm_cbe_tmp__222__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__222);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__201);
printf("\n = 0x%X",llvm_cbe_tmp__214);
printf("\n = 0x%X",llvm_cbe_tmp__217);
printf("\n = 0x%X",llvm_cbe_tmp__219);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @cnn_sw_norm}\n");
  return llvm_cbe_tmp__222;
}


signed int cnn_hw(l_struct_OC_env *llvm_cbe_cnn_env) {
  static  unsigned long long aesl_llvm_cbe_599_count = 0;
  static  unsigned long long aesl_llvm_cbe_puts_count = 0;
  unsigned int llvm_cbe_puts;
  static  unsigned long long aesl_llvm_cbe_600_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @cnn_hw\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%puts = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @aesl_internal_str, i32 0, i32 0)), !dbg !12 for 0x%I64xth hint within @cnn_hw  --> \n", ++aesl_llvm_cbe_puts_count);
   /*tail*/ puts(( char *)((&aesl_internal_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 28
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts = 0x%X",llvm_cbe_puts);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @cnn_hw}\n");
  return 0u;
}


signed int cnn_precision_loss_calc(l_struct_OC_matrix *llvm_cbe_ref, l_struct_OC_matrix *llvm_cbe_test, double *llvm_cbe_prec) {
  static  unsigned long long aesl_llvm_cbe_601_count = 0;
  static  unsigned long long aesl_llvm_cbe_602_count = 0;
  static  unsigned long long aesl_llvm_cbe_603_count = 0;
  static  unsigned long long aesl_llvm_cbe_604_count = 0;
  static  unsigned long long aesl_llvm_cbe_605_count = 0;
  static  unsigned long long aesl_llvm_cbe_606_count = 0;
  static  unsigned long long aesl_llvm_cbe_607_count = 0;
  static  unsigned long long aesl_llvm_cbe_608_count = 0;
  static  unsigned long long aesl_llvm_cbe_609_count = 0;
  static  unsigned long long aesl_llvm_cbe_610_count = 0;
  static  unsigned long long aesl_llvm_cbe_611_count = 0;
  static  unsigned long long aesl_llvm_cbe_612_count = 0;
  static  unsigned long long aesl_llvm_cbe_613_count = 0;
  static  unsigned long long aesl_llvm_cbe_614_count = 0;
  static  unsigned long long aesl_llvm_cbe_615_count = 0;
  unsigned int llvm_cbe_tmp__228;
  static  unsigned long long aesl_llvm_cbe_616_count = 0;
  static  unsigned long long aesl_llvm_cbe_617_count = 0;
  static  unsigned long long aesl_llvm_cbe_618_count = 0;
  signed int *llvm_cbe_tmp__229;
  static  unsigned long long aesl_llvm_cbe_619_count = 0;
  unsigned int llvm_cbe_tmp__230;
  static  unsigned long long aesl_llvm_cbe_620_count = 0;
  signed int *llvm_cbe_tmp__231;
  static  unsigned long long aesl_llvm_cbe_621_count = 0;
  unsigned int llvm_cbe_tmp__232;
  static  unsigned long long aesl_llvm_cbe_622_count = 0;
  unsigned int llvm_cbe_tmp__233;
  static  unsigned long long aesl_llvm_cbe_623_count = 0;
  static  unsigned long long aesl_llvm_cbe_624_count = 0;
  static  unsigned long long aesl_llvm_cbe_625_count = 0;
  static  unsigned long long aesl_llvm_cbe_626_count = 0;
  static  unsigned long long aesl_llvm_cbe_627_count = 0;
  static  unsigned long long aesl_llvm_cbe_628_count = 0;
  static  unsigned long long aesl_llvm_cbe_629_count = 0;
  static  unsigned long long aesl_llvm_cbe_630_count = 0;
  static  unsigned long long aesl_llvm_cbe_631_count = 0;
  static  unsigned long long aesl_llvm_cbe_632_count = 0;
  static  unsigned long long aesl_llvm_cbe_633_count = 0;
  static  unsigned long long aesl_llvm_cbe_634_count = 0;
  static  unsigned long long aesl_llvm_cbe_635_count = 0;
  static  unsigned long long aesl_llvm_cbe_636_count = 0;
  signed int **llvm_cbe_tmp__234;
  static  unsigned long long aesl_llvm_cbe_637_count = 0;
  signed int **llvm_cbe_tmp__235;
  static  unsigned long long aesl_llvm_cbe_638_count = 0;
  static  unsigned long long aesl_llvm_cbe_639_count = 0;
  unsigned int llvm_cbe_tmp__236;
  static  unsigned long long aesl_llvm_cbe_640_count = 0;
  static  unsigned long long aesl_llvm_cbe_641_count = 0;
  static  unsigned long long aesl_llvm_cbe_642_count = 0;
  static  unsigned long long aesl_llvm_cbe_643_count = 0;
  static  unsigned long long aesl_llvm_cbe_644_count = 0;
  static  unsigned long long aesl_llvm_cbe_645_count = 0;
  static  unsigned long long aesl_llvm_cbe_646_count = 0;
  static  unsigned long long aesl_llvm_cbe_647_count = 0;
  unsigned int llvm_cbe_tmp__237;
  unsigned int llvm_cbe_tmp__237__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge13_2e_us_count = 0;
  unsigned int llvm_cbe_storemerge13_2e_us;
  unsigned int llvm_cbe_storemerge13_2e_us__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_648_count = 0;
  double llvm_cbe_tmp__238;
  double llvm_cbe_tmp__238__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_649_count = 0;
  unsigned int llvm_cbe_tmp__239;
  static  unsigned long long aesl_llvm_cbe_650_count = 0;
  unsigned int llvm_cbe_tmp__240;
  static  unsigned long long aesl_llvm_cbe_651_count = 0;
  signed int *llvm_cbe_tmp__241;
  static  unsigned long long aesl_llvm_cbe_652_count = 0;
  unsigned int llvm_cbe_tmp__242;
  static  unsigned long long aesl_llvm_cbe_653_count = 0;
  double llvm_cbe_tmp__243;
  static  unsigned long long aesl_llvm_cbe_654_count = 0;
  signed int *llvm_cbe_tmp__244;
  static  unsigned long long aesl_llvm_cbe_655_count = 0;
  unsigned int llvm_cbe_tmp__245;
  static  unsigned long long aesl_llvm_cbe_656_count = 0;
  double llvm_cbe_tmp__246;
  static  unsigned long long aesl_llvm_cbe_657_count = 0;
  double llvm_cbe_tmp__247;
  static  unsigned long long aesl_llvm_cbe_658_count = 0;
  double llvm_cbe_tmp__248;
  static  unsigned long long aesl_llvm_cbe_659_count = 0;
  static  unsigned long long aesl_llvm_cbe_660_count = 0;
  static  unsigned long long aesl_llvm_cbe_661_count = 0;
  static  unsigned long long aesl_llvm_cbe_662_count = 0;
  unsigned int llvm_cbe_tmp__249;
  static  unsigned long long aesl_llvm_cbe_663_count = 0;
  static  unsigned long long aesl_llvm_cbe_664_count = 0;
  static  unsigned long long aesl_llvm_cbe_665_count = 0;
  static  unsigned long long aesl_llvm_cbe_666_count = 0;
  static  unsigned long long aesl_llvm_cbe_667_count = 0;
  static  unsigned long long aesl_llvm_cbe_668_count = 0;
  static  unsigned long long aesl_llvm_cbe_669_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge5_2e_us_count = 0;
  unsigned int llvm_cbe_storemerge5_2e_us;
  unsigned int llvm_cbe_storemerge5_2e_us__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_670_count = 0;
  double llvm_cbe_tmp__250;
  double llvm_cbe_tmp__250__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_671_count = 0;
  static  unsigned long long aesl_llvm_cbe_672_count = 0;
  static  unsigned long long aesl_llvm_cbe_673_count = 0;
  static  unsigned long long aesl_llvm_cbe_674_count = 0;
  static  unsigned long long aesl_llvm_cbe_675_count = 0;
  signed int *llvm_cbe_tmp__251;
  static  unsigned long long aesl_llvm_cbe_676_count = 0;
  signed int *llvm_cbe_tmp__252;
  static  unsigned long long aesl_llvm_cbe_677_count = 0;
  unsigned int llvm_cbe_tmp__253;
  static  unsigned long long aesl_llvm_cbe_678_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge5_count = 0;
  unsigned int llvm_cbe_storemerge5;
  unsigned int llvm_cbe_storemerge5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_679_count = 0;
  static  unsigned long long aesl_llvm_cbe_680_count = 0;
  static  unsigned long long aesl_llvm_cbe_681_count = 0;
  static  unsigned long long aesl_llvm_cbe_682_count = 0;
  static  unsigned long long aesl_llvm_cbe_683_count = 0;
  unsigned int llvm_cbe_tmp__254;
  static  unsigned long long aesl_llvm_cbe_684_count = 0;
  static  unsigned long long aesl_llvm_cbe_685_count = 0;
  static  unsigned long long aesl_llvm_cbe_686_count = 0;
  static  unsigned long long aesl_llvm_cbe_687_count = 0;
  static  unsigned long long aesl_llvm_cbe_688_count = 0;
  static  unsigned long long aesl_llvm_cbe_689_count = 0;
  static  unsigned long long aesl_llvm_cbe_690_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa4_count = 0;
  double llvm_cbe__2e_lcssa4;
  double llvm_cbe__2e_lcssa4__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_691_count = 0;
  double llvm_cbe_tmp__255;
  static  unsigned long long aesl_llvm_cbe_692_count = 0;
  double llvm_cbe_tmp__256;
  static  unsigned long long aesl_llvm_cbe_693_count = 0;
  static  unsigned long long aesl_llvm_cbe_694_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_count = 0;
  unsigned int llvm_cbe_storemerge2;
  unsigned int llvm_cbe_storemerge2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_695_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @cnn_precision_loss_calc\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = tail call i32 @matrix_dim_comp(%%struct.matrix* %%ref, %%struct.matrix* %%test) nounwind, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_615_count);
  llvm_cbe_tmp__228 = (unsigned int ) /*tail*/ matrix_dim_comp((l_struct_OC_matrix *)llvm_cbe_ref, (l_struct_OC_matrix *)llvm_cbe_test);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__228);
}
  if (((llvm_cbe_tmp__228&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__257;
  } else {
    llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
    goto llvm_cbe_tmp__258;
  }

llvm_cbe_tmp__257:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds %%struct.matrix* %%ref, i32 0, i32 2, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_618_count);
  llvm_cbe_tmp__229 = (signed int *)(&llvm_cbe_ref->field2);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = load i32* %%4, align 4, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_619_count);
  llvm_cbe_tmp__230 = (unsigned int )*llvm_cbe_tmp__229;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__230);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds %%struct.matrix* %%ref, i32 0, i32 3, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_620_count);
  llvm_cbe_tmp__231 = (signed int *)(&llvm_cbe_ref->field3);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load i32* %%6, align 4, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_621_count);
  llvm_cbe_tmp__232 = (unsigned int )*llvm_cbe_tmp__231;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__232);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = mul nsw i32 %%7, %%5, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_622_count);
  llvm_cbe_tmp__233 = (unsigned int )((unsigned int )(llvm_cbe_tmp__232&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__230&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__233&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__232) > ((signed int )0u))) {
    goto llvm_cbe__2e_preheader_2e_lr_2e_ph;
  } else {
    llvm_cbe__2e_lcssa4__PHI_TEMPORARY = (double )0x0p0;   /* for PHI node */
    goto llvm_cbe__2e__crit_edge6;
  }

llvm_cbe__2e_preheader_2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds %%struct.matrix* %%test, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_636_count);
  llvm_cbe_tmp__234 = (signed int **)(&llvm_cbe_test->field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds %%struct.matrix* %%ref, i32 0, i32 1, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_637_count);
  llvm_cbe_tmp__235 = (signed int **)(&llvm_cbe_ref->field1);
if (AESL_DEBUG_TRACE) {
}
  if ((((signed int )llvm_cbe_tmp__230) > ((signed int )0u))) {
    llvm_cbe_storemerge5_2e_us__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    llvm_cbe_tmp__250__PHI_TEMPORARY = (double )0x0p0;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph_2e_us;
  } else {
    llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe_tmp__259;
  }

  do {     /* Syntactic loop '.lr.ph.us' to make GCC happy */
llvm_cbe__2e_lr_2e_ph_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge5.us = phi i32 [ %%14, %%13 ], [ 0, %%.preheader.lr.ph  for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_storemerge5_2e_us_count);
  llvm_cbe_storemerge5_2e_us = (unsigned int )llvm_cbe_storemerge5_2e_us__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge5.us = 0x%X",llvm_cbe_storemerge5_2e_us);
printf("\n = 0x%X",llvm_cbe_tmp__236);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = phi double [ %%28, %%13 ], [ 0.000000e+00, %%.preheader.lr.ph  for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_670_count);
  llvm_cbe_tmp__250 = (double )llvm_cbe_tmp__250__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %lf",llvm_cbe_tmp__250);
printf("\n = %lf",llvm_cbe_tmp__248);
printf("\n = %lf",0x0p0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = load i32** %%11, align 4, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_675_count);
  llvm_cbe_tmp__251 = (signed int *)*llvm_cbe_tmp__234;
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = load i32** %%12, align 4, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_676_count);
  llvm_cbe_tmp__252 = (signed int *)*llvm_cbe_tmp__235;
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = load i32* %%4, align 4, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_677_count);
  llvm_cbe_tmp__253 = (unsigned int )*llvm_cbe_tmp__229;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__253);
  llvm_cbe_tmp__237__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__230;   /* for PHI node */
  llvm_cbe_storemerge13_2e_us__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__238__PHI_TEMPORARY = (double )llvm_cbe_tmp__250;   /* for PHI node */
  goto llvm_cbe_tmp__260;

llvm_cbe_tmp__261:
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = add nsw i32 %%storemerge5.us, 1, !dbg !14 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_639_count);
  llvm_cbe_tmp__236 = (unsigned int )((unsigned int )(llvm_cbe_storemerge5_2e_us&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__236&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__236) < ((signed int )llvm_cbe_tmp__232))) {
    llvm_cbe_storemerge5_2e_us__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__236;   /* for PHI node */
    llvm_cbe_tmp__250__PHI_TEMPORARY = (double )llvm_cbe_tmp__248;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph_2e_us;
  } else {
    llvm_cbe__2e_lcssa4__PHI_TEMPORARY = (double )llvm_cbe_tmp__248;   /* for PHI node */
    goto llvm_cbe__2e__crit_edge6;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__260:
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = phi i32 [ %%5, %%.lr.ph.us ], [ %%34, %%16  for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_647_count);
  llvm_cbe_tmp__237 = (unsigned int )llvm_cbe_tmp__237__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__237);
printf("\n = 0x%X",llvm_cbe_tmp__230);
printf("\n = 0x%X",llvm_cbe_tmp__253);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge13.us = phi i32 [ 0, %%.lr.ph.us ], [ %%29, %%16  for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_storemerge13_2e_us_count);
  llvm_cbe_storemerge13_2e_us = (unsigned int )llvm_cbe_storemerge13_2e_us__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge13.us = 0x%X",llvm_cbe_storemerge13_2e_us);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__249);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = phi double [ %%31, %%.lr.ph.us ], [ %%28, %%16  for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_648_count);
  llvm_cbe_tmp__238 = (double )llvm_cbe_tmp__238__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %lf",llvm_cbe_tmp__238);
printf("\n = %lf",llvm_cbe_tmp__250);
printf("\n = %lf",llvm_cbe_tmp__248);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = mul nsw i32 %%17, %%storemerge5.us, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_649_count);
  llvm_cbe_tmp__239 = (unsigned int )((unsigned int )(llvm_cbe_tmp__237&4294967295ull)) * ((unsigned int )(llvm_cbe_storemerge5_2e_us&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__239&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = add nsw i32 %%19, %%storemerge13.us, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_650_count);
  llvm_cbe_tmp__240 = (unsigned int )((unsigned int )(llvm_cbe_tmp__239&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge13_2e_us&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__240&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds i32* %%32, i32 %%20, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_651_count);
  llvm_cbe_tmp__241 = (signed int *)(&llvm_cbe_tmp__251[(((signed int )llvm_cbe_tmp__240))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__240));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = load i32* %%21, align 4, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_652_count);
  llvm_cbe_tmp__242 = (unsigned int )*llvm_cbe_tmp__241;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__242);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = uitofp i32 %%22 to double, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_653_count);
  llvm_cbe_tmp__243 = (double )((double )(unsigned int )llvm_cbe_tmp__242);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__243, *(long long*)(&llvm_cbe_tmp__243));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds i32* %%33, i32 %%20, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_654_count);
  llvm_cbe_tmp__244 = (signed int *)(&llvm_cbe_tmp__252[(((signed int )llvm_cbe_tmp__240))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",((signed int )llvm_cbe_tmp__240));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load i32* %%24, align 4, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_655_count);
  llvm_cbe_tmp__245 = (unsigned int )*llvm_cbe_tmp__244;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__245);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = uitofp i32 %%25 to double, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_656_count);
  llvm_cbe_tmp__246 = (double )((double )(unsigned int )llvm_cbe_tmp__245);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__246, *(long long*)(&llvm_cbe_tmp__246));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = fdiv double %%23, %%26, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_657_count);
  llvm_cbe_tmp__247 = (double )llvm_cbe_tmp__243 / llvm_cbe_tmp__246;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__247, *(long long*)(&llvm_cbe_tmp__247));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = fadd double %%18, %%27, !dbg !12 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_658_count);
  llvm_cbe_tmp__248 = (double )llvm_cbe_tmp__238 + llvm_cbe_tmp__247;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__248, *(long long*)(&llvm_cbe_tmp__248));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = add nsw i32 %%storemerge13.us, 1, !dbg !14 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_662_count);
  llvm_cbe_tmp__249 = (unsigned int )((unsigned int )(llvm_cbe_storemerge13_2e_us&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__249&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__249) < ((signed int )llvm_cbe_tmp__253))) {
    llvm_cbe_tmp__237__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__253;   /* for PHI node */
    llvm_cbe_storemerge13_2e_us__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__249;   /* for PHI node */
    llvm_cbe_tmp__238__PHI_TEMPORARY = (double )llvm_cbe_tmp__248;   /* for PHI node */
    goto llvm_cbe_tmp__260;
  } else {
    goto llvm_cbe_tmp__261;
  }

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.lr.ph.us' */
  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__259:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge5 = phi i32 [ %%36, %%35 ], [ 0, %%.preheader.lr.ph  for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_storemerge5_count);
  llvm_cbe_storemerge5 = (unsigned int )llvm_cbe_storemerge5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge5 = 0x%X",llvm_cbe_storemerge5);
printf("\n = 0x%X",llvm_cbe_tmp__254);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = add nsw i32 %%storemerge5, 1, !dbg !14 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_683_count);
  llvm_cbe_tmp__254 = (unsigned int )((unsigned int )(llvm_cbe_storemerge5&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__254&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__254) < ((signed int )llvm_cbe_tmp__232))) {
    llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__254;   /* for PHI node */
    goto llvm_cbe_tmp__259;
  } else {
    llvm_cbe__2e_lcssa4__PHI_TEMPORARY = (double )0x0p0;   /* for PHI node */
    goto llvm_cbe__2e__crit_edge6;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e__crit_edge6:
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa4 = phi double [ 0.000000e+00, %%3 ], [ %%28, %%13 ], [ 0.000000e+00, %%35  for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe__2e_lcssa4_count);
  llvm_cbe__2e_lcssa4 = (double )llvm_cbe__2e_lcssa4__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa4 = %lf",llvm_cbe__2e_lcssa4);
printf("\n = %lf",0x0p0);
printf("\n = %lf",llvm_cbe_tmp__248);
printf("\n = %lf",0x0p0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = sitofp i32 %%8 to double, !dbg !13 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_691_count);
  llvm_cbe_tmp__255 = (double )((double )(signed int )llvm_cbe_tmp__233);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__255, *(long long*)(&llvm_cbe_tmp__255));
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = fdiv double %%.lcssa4, %%38, !dbg !13 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_692_count);
  llvm_cbe_tmp__256 = (double )llvm_cbe__2e_lcssa4 / llvm_cbe_tmp__255;
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__256, *(long long*)(&llvm_cbe_tmp__256));
if (AESL_DEBUG_TRACE)
printf("\n  store double %%39, double* %%prec, align 8, !dbg !13 for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_693_count);
  *llvm_cbe_prec = llvm_cbe_tmp__256;
if (AESL_DEBUG_TRACE)
printf("\n = %lf\n", llvm_cbe_tmp__256);
  llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__258;

llvm_cbe_tmp__258:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2 = phi i32 [ 0, %%._crit_edge6 ], [ 1, %%0  for 0x%I64xth hint within @cnn_precision_loss_calc  --> \n", ++aesl_llvm_cbe_storemerge2_count);
  llvm_cbe_storemerge2 = (unsigned int )llvm_cbe_storemerge2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2 = 0x%X",llvm_cbe_storemerge2);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",1u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @cnn_precision_loss_calc}\n");
  return llvm_cbe_storemerge2;
}

