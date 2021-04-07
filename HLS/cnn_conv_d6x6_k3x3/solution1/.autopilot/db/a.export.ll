; ModuleID = 'D:/School/Project/new_repo/HLS/cnn_conv_d6x6_k3x3/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@cnn_conv_d6x6_k3x3_s = internal unnamed_addr constant [19 x i8] c"cnn_conv_d6x6_k3x3\00"
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc i23 @fixed_point_mul(i32 %a, i32 %b) readnone {
  %b_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %b)
  %a_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %a)
  %tmp = xor i32 %b_read, %a_read
  %tmp_2 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_read, i32 31)
  %tmp_3 = sub i32 0, %a_read
  %a_assign = select i1 %tmp_2, i32 %tmp_3, i32 %a_read
  %tmp_4 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %b_read, i32 31)
  %tmp_5 = sub i32 0, %b_read
  %b_assign = select i1 %tmp_4, i32 %tmp_5, i32 %b_read
  %tmp_6 = mul i32 %b_assign, %a_assign
  %tmp_1 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %tmp_6, i32 10, i32 31)
  %result_cast = zext i22 %tmp_1 to i23
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp, i32 31)
  %tmp_8 = sub i23 0, %result_cast
  %result = select i1 %tmp_7, i23 %tmp_8, i23 %result_cast
  ret i23 %result
}

define void @cnn_conv_d6x6_k3x3(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i32 %ctrl, i32* %kernel_0, i32* %kernel_1, i32* %kernel_2, i32* %kernel_3, i32* %kernel_4, i32* %kernel_5, i32* %kernel_6, i32* %kernel_7, i32* %kernel_8) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernel_8), !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernel_7), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernel_6), !map !77
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernel_5), !map !83
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernel_4), !map !89
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernel_3), !map !95
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernel_2), !map !101
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernel_1), !map !107
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernel_0), !map !113
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %inStream_V_data_V), !map !119
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_keep_V), !map !123
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_strb_V), !map !127
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inStream_V_user_V), !map !131
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_last_V), !map !135
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %inStream_V_id_V), !map !139
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %inStream_V_dest_V), !map !143
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %outStream_V_data_V), !map !147
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_keep_V), !map !151
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_strb_V), !map !155
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %outStream_V_user_V), !map !159
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_last_V), !map !163
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %outStream_V_id_V), !map !167
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %outStream_V_dest_V), !map !171
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ctrl), !map !175
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @cnn_conv_d6x6_k3x3_s) nounwind
  %ctrl_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ctrl)
  %lineBuffer_0 = alloca [6 x i32], align 4
  %lineBuffer_1 = alloca [6 x i32], align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ctrl, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %kernel_0, i32* %kernel_1, i32* %kernel_2, i32* %kernel_3, i32* %kernel_4, i32* %kernel_5, i32* %kernel_6, i32* %kernel_7, i32* %kernel_8, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %x = phi i3 [ -4, %0 ], [ %x_1, %2 ]
  %exitcond1 = icmp eq i3 %x, -2
  br i1 %exitcond1, label %.preheader86.0.preheader, label %2

.preheader86.0.preheader:                         ; preds = %1
  br label %.preheader86.0

; <label>:2                                       ; preds = %1
  %x_cast = zext i3 %x to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_5 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_5, 0
  %lineBuffer_0_addr = getelementptr [6 x i32]* %lineBuffer_0, i32 0, i32 %x_cast
  store i32 %tmp_data_V, i32* %lineBuffer_0_addr, align 4
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp)
  %x_1 = add i3 %x, 1
  br label %1

.preheader86.0:                                   ; preds = %.preheader86.0.preheader, %3
  %x1 = phi i3 [ %x_2, %3 ], [ 0, %.preheader86.0.preheader ]
  %exitcond4 = icmp eq i3 %x1, -2
  %x_2 = add i3 %x1, 1
  br i1 %exitcond4, label %.preheader84.preheader, label %3

.preheader84.preheader:                           ; preds = %.preheader86.0
  %window_2_2 = alloca i32
  br label %.preheader84

; <label>:3                                       ; preds = %.preheader86.0
  %x1_cast = zext i3 %x1 to i32
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_8 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_1 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_8, 0
  %lineBuffer_1_addr = getelementptr [6 x i32]* %lineBuffer_1, i32 0, i32 %x1_cast
  store i32 %tmp_data_V_1, i32* %lineBuffer_1_addr, align 4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_1)
  br label %.preheader86.0

.preheader83.preheader:                           ; preds = %.preheader84
  %window_0_0_read_as = alloca i32
  %window_0_0 = alloca i32
  %window_0_1 = alloca i32
  %window_1_0_read_as = alloca i32
  %window_2_0_read_as = alloca i32
  %window_2_2_load = load i32* %window_2_2
  %window_2_1 = alloca i32
  %writeCount_1 = alloca i32
  %readCount_1 = alloca i32
  %tmp_8 = trunc i32 %ctrl_read to i1
  store i32 8, i32* %readCount_1
  store i32 0, i32* %writeCount_1
  store i32 %window_2_2_load, i32* %window_2_1
  br label %.preheader82

.preheader84:                                     ; preds = %.preheader84.preheader, %.preheader85
  %indvar_flatten = phi i3 [ %indvar_flatten_next, %.preheader85 ], [ 0, %.preheader84.preheader ]
  %y3 = phi i2 [ %tmp_2_mid2_v, %.preheader85 ], [ 1, %.preheader84.preheader ]
  %window_2_1_1 = phi i32 [ %window_2_2_7, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %window_1_2_1 = phi i32 [ %window_2_2_8, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %window_1_1_1 = phi i32 [ %window_2_2_9, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %x4 = phi i2 [ %x_3, %.preheader85 ], [ 1, %.preheader84.preheader ]
  %exitcond_flatten = icmp eq i3 %indvar_flatten, -4
  %indvar_flatten_next = add i3 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader83.preheader, label %.preheader85

.preheader85:                                     ; preds = %.preheader84
  %window_2_2_load_1 = load i32* %window_2_2
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %exitcond = icmp eq i2 %x4, -1
  %x4_mid2 = select i1 %exitcond, i2 1, i2 %x4
  %y9 = add i2 1, %y3
  %tmp_2_mid2_v = select i1 %exitcond, i2 %y9, i2 %y3
  %tmp_9 = trunc i2 %tmp_2_mid2_v to i1
  %cond_mid1 = icmp eq i2 %y3, 0
  %cond = icmp eq i2 %y3, 1
  %cond_mid2 = select i1 %exitcond, i1 %cond_mid1, i1 %cond
  %x4_cast = zext i2 %x4_mid2 to i3
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_s = add i3 3, %x4_cast
  %tmp_cast = zext i3 %tmp_s to i32
  %lineBuffer_0_addr_1 = getelementptr [6 x i32]* %lineBuffer_0, i32 0, i32 %tmp_cast
  %lineBuffer_1_addr_1 = getelementptr [6 x i32]* %lineBuffer_1, i32 0, i32 %tmp_cast
  %lineBuffer_0_load = load i32* %lineBuffer_0_addr_1, align 4
  %lineBuffer_1_load = load i32* %lineBuffer_1_addr_1, align 4
  %window_1_1_2 = select i1 %tmp_9, i32 %lineBuffer_0_load, i32 %lineBuffer_1_load
  %cond1 = icmp eq i2 %x4_mid2, 1
  %window_2_2_1 = select i1 %cond1, i32 %window_1_2_1, i32 %window_1_1_2
  %window_2_2_2 = select i1 %cond1, i32 %window_1_1_2, i32 %window_1_1_1
  %window_2_2_4 = select i1 %cond1, i32 %window_2_2_load_1, i32 %window_1_1_2
  %window_2_2_5 = select i1 %cond1, i32 %window_1_1_2, i32 %window_2_1_1
  %window_2_2_6 = select i1 %cond_mid2, i32 %window_2_2_load_1, i32 %window_2_2_4
  %window_2_2_7 = select i1 %cond_mid2, i32 %window_2_1_1, i32 %window_2_2_5
  %window_2_2_8 = select i1 %cond_mid2, i32 %window_2_2_1, i32 %window_1_2_1
  %window_2_2_9 = select i1 %cond_mid2, i32 %window_2_2_2, i32 %window_1_1_1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_4)
  %x_3 = add i2 1, %x4_mid2
  store i32 %window_2_2_6, i32* %window_2_2
  br label %.preheader84

.preheader82:                                     ; preds = %.preheader83.preheader, %._crit_edge88
  %indvar_flatten6 = phi i6 [ 0, %.preheader83.preheader ], [ %indvar_flatten_next7, %._crit_edge88 ]
  %y_assign = phi i3 [ 0, %.preheader83.preheader ], [ %y_assign_mid2, %._crit_edge88 ]
  %window_2_0 = phi i32 [ %window_2_1_1, %.preheader83.preheader ], [ %window_2_1_2, %._crit_edge88 ]
  %window_1_1 = phi i32 [ %window_1_2_1, %.preheader83.preheader ], [ %windowRightCol_1, %._crit_edge88 ]
  %window_1_0 = phi i32 [ %window_1_1_1, %.preheader83.preheader ], [ %window_1_1, %._crit_edge88 ]
  %x_assign = phi i3 [ 0, %.preheader83.preheader ], [ %x_4, %._crit_edge88 ]
  %window_0_0_read_as_1 = load i32* %window_0_0_read_as
  %window_0_0_load = load i32* %window_0_0
  %window_0_1_load = load i32* %window_0_1
  %window_1_0_read_as_1 = load i32* %window_1_0_read_as
  %window_2_0_read_as_1 = load i32* %window_2_0_read_as
  %window_2_1_2 = load i32* %window_2_1
  %exitcond_flatten8 = icmp eq i6 %indvar_flatten6, -28
  %indvar_flatten_next7 = add i6 %indvar_flatten6, 1
  store i32 %window_2_0, i32* %window_2_0_read_as
  store i32 %window_1_0, i32* %window_1_0_read_as
  store i32 %window_0_1_load, i32* %window_0_0
  store i32 %window_0_0_load, i32* %window_0_0_read_as
  br i1 %exitcond_flatten8, label %5, label %.preheader83

_ifconv1:                                         ; preds = %.preheader83
  %window_0_1_load_1 = load i32* %window_0_1
  %writeCount_1_load = load i32* %writeCount_1
  %writeCount = add nsw i32 %writeCount_1_load, 1
  %kernel_0_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernel_0)
  %kernel_1_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernel_1)
  %kernel_2_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernel_2)
  %kernel_3_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernel_3)
  %kernel_4_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernel_4)
  %kernel_5_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernel_5)
  %kernel_6_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernel_6)
  %kernel_7_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernel_7)
  %kernel_8_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernel_8)
  %tmp_9_0_i = call fastcc i23 @fixed_point_mul(i32 %window_0_0_read_as_1, i32 %kernel_0_read)
  %tmp_9_0_1_i = call fastcc i23 @fixed_point_mul(i32 %window_0_0_load, i32 %kernel_1_read)
  %tmp_9_0_2_i = call fastcc i23 @fixed_point_mul(i32 %window_0_1_load_1, i32 %kernel_2_read)
  %tmp_9_1_i = call fastcc i23 @fixed_point_mul(i32 %window_1_0_read_as_1, i32 %kernel_3_read)
  %tmp_9_1_1_i = call fastcc i23 @fixed_point_mul(i32 %window_1_0, i32 %kernel_4_read)
  %tmp_9_1_2_i = call fastcc i23 @fixed_point_mul(i32 %window_1_1, i32 %kernel_5_read)
  %tmp_9_2_i = call fastcc i23 @fixed_point_mul(i32 %window_2_0_read_as_1, i32 %kernel_6_read)
  %tmp_9_2_1_i = call fastcc i23 @fixed_point_mul(i32 %window_2_0, i32 %kernel_7_read)
  %tmp_9_2_2_i = call fastcc i23 @fixed_point_mul(i32 %window_2_1_2, i32 %kernel_8_read)
  %tmp11_trunc_ext_cast = sext i23 %tmp_9_2_i to i24
  %tmp11_trunc24_ext_ca = sext i23 %tmp_9_2_1_i to i24
  %tmp1 = add i24 %tmp11_trunc24_ext_ca, %tmp11_trunc_ext_cast
  %tmp11_cast = sext i24 %tmp1 to i25
  %tmp12_trunc_ext_cast = sext i23 %tmp_9_1_1_i to i24
  %tmp12_trunc23_ext_ca = sext i23 %tmp_9_1_2_i to i24
  %tmp4 = add i24 %tmp12_trunc_ext_cast, %tmp12_trunc23_ext_ca
  %tmp12_cast = sext i24 %tmp4 to i25
  %tmp5 = add i25 %tmp11_cast, %tmp12_cast
  %tmp10_cast = sext i25 %tmp5 to i27
  %tmp14_trunc_ext_cast = sext i23 %tmp_9_0_i to i24
  %tmp14_trunc22_ext_ca = sext i23 %tmp_9_0_1_i to i24
  %tmp6 = add i24 %tmp14_trunc22_ext_ca, %tmp14_trunc_ext_cast
  %tmp14_cast = sext i24 %tmp6 to i26
  %tmp16_trunc_ext_cast = sext i23 %tmp_9_0_2_i to i24
  %tmp16_trunc25_ext_ca = sext i23 %tmp_9_2_2_i to i24
  %tmp7 = add i24 %tmp16_trunc25_ext_ca, %tmp16_trunc_ext_cast
  %tmp16_cast = sext i24 %tmp7 to i25
  %tmp15_trunc_ext_cast = sext i23 %tmp_9_1_i to i25
  %tmp8 = add i25 %tmp15_trunc_ext_cast, %tmp16_cast
  %tmp15_cast = sext i25 %tmp8 to i26
  %tmp9 = add i26 %tmp14_cast, %tmp15_cast
  %tmp13_cast = sext i26 %tmp9 to i27
  %result_4_2_2_i = add i27 %tmp10_cast, %tmp13_cast
  %result_4_2_2_i_cast1 = sext i27 %result_4_2_2_i to i32
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i27.i32(i27 %result_4_2_2_i, i32 26)
  %result = select i1 %tmp_10, i27 0, i27 %result_4_2_2_i
  %result_cast1 = sext i27 %result to i31
  %result_cast = zext i31 %result_cast1 to i32
  %tmp_data_V_2 = select i1 %tmp_8, i32 %result_cast, i32 %result_4_2_2_i_cast1
  %tmp_last_V = icmp eq i32 %writeCount, 16
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i32 %tmp_data_V_2, i4 -1, i4 0, i2 0, i1 %tmp_last_V, i5 0, i6 0)
  store i32 %writeCount, i32* %writeCount_1
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ifconv1, %.preheader83
  %readCount_1_load = load i32* %readCount_1
  %lineBuffer_0_addr_2 = getelementptr [6 x i32]* %lineBuffer_0, i32 0, i32 %x_assign_cast
  %windowRightCol_0 = load i32* %lineBuffer_0_addr_2, align 4
  %lineBuffer_1_addr_2 = getelementptr [6 x i32]* %lineBuffer_1, i32 0, i32 %x_assign_cast
  %windowRightCol_1 = load i32* %lineBuffer_1_addr_2, align 4
  store i32 %windowRightCol_1, i32* %lineBuffer_0_addr_2, align 4
  %tmp_5 = icmp slt i32 %readCount_1_load, 36
  store i32 %windowRightCol_0, i32* %window_0_1
  br i1 %tmp_5, label %4, label %._crit_edge88

; <label>:4                                       ; preds = %._crit_edge
  %empty_12 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_4 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_12, 0
  %readCount = add nsw i32 %readCount_1_load, 1
  store i32 %readCount, i32* %readCount_1
  store i32 %tmp_data_V_4, i32* %window_2_1
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %4, %._crit_edge
  %window_2_2_10 = load i32* %window_2_1
  store i32 %window_2_2_10, i32* %lineBuffer_1_addr_2, align 4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_3)
  %x_4 = add i3 %x_assign_mid2, 1
  br label %.preheader82

.preheader83:                                     ; preds = %.preheader82
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 36, i64 36, i64 36)
  %exitcond2 = icmp eq i3 %x_assign, -2
  %x_assign_mid2 = select i1 %exitcond2, i3 0, i3 %x_assign
  %y_s = add i3 %y_assign, 1
  %tmp_i_mid1 = icmp eq i3 %y_s, 0
  %tmp_i = icmp eq i3 %y_assign, 0
  %tmp_i_mid2 = select i1 %exitcond2, i1 %tmp_i_mid1, i1 %tmp_i
  %tmp_2_i_mid1 = icmp ugt i3 %y_s, -4
  %tmp_2_i = icmp ugt i3 %y_assign, -4
  %tmp_2_i_mid2 = select i1 %exitcond2, i1 %tmp_2_i_mid1, i1 %tmp_2_i
  %y_assign_mid2 = select i1 %exitcond2, i3 %y_s, i3 %y_assign
  %x_assign_cast = zext i3 %x_assign_mid2 to i32
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_i_15 = icmp eq i3 %x_assign_mid2, 0
  %tmp_1_i = icmp ugt i3 %x_assign_mid2, -4
  %tmp2 = or i1 %tmp_i_15, %tmp_i_mid2
  %tmp3 = or i1 %tmp_1_i, %tmp_2_i_mid2
  %p_i = or i1 %tmp3, %tmp2
  br i1 %p_i, label %._crit_edge, label %_ifconv1

; <label>:5                                       ; preds = %.preheader82
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32, i4, i4, i2, i1, i5, i6) {
entry:
  store i32 %7, i32* %0
  store i4 %8, i4* %1
  store i4 %9, i4* %2
  store i2 %10, i2* %3
  store i1 %11, i1* %4
  store i5 %12, i5* %5
  store i6 %13, i6* %6
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32*, i4*, i4*, i2*, i1*, i5*, i6*) {
entry:
  %empty = load i32* %0
  %empty_16 = load i4* %1
  %empty_17 = load i4* %2
  %empty_18 = load i2* %3
  %empty_19 = load i1* %4
  %empty_20 = load i5* %5
  %empty_21 = load i6* %6
  %mrv_0 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv_0, i4 %empty_16, 1
  %mrv2 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv1, i4 %empty_17, 2
  %mrv3 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv2, i2 %empty_18, 3
  %mrv4 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv3, i1 %empty_19, 4
  %mrv5 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv4, i5 %empty_20, 5
  %mrv6 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv5, i6 %empty_21, 6
  ret { i32, i4, i4, i2, i1, i5, i6 } %mrv6
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_22 = trunc i32 %empty to i22
  ret i22 %empty_22
}

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_23 = and i32 %0, %empty
  %empty_24 = icmp ne i32 %empty_23, 0
  ret i1 %empty_24
}

define weak i1 @_ssdm_op_BitSelect.i1.i27.i32(i27, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i27
  %empty_25 = shl i27 1, %empty
  %empty_26 = and i27 %0, %empty_25
  %empty_27 = icmp ne i27 %empty_26, 0
  ret i1 %empty_27
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !25, !25, !16, !16, !27, !25, !25, !16, !16, !29, !25, !25, !16, !16, !31, !25, !25, !16, !16, !33, !35, !35, !16, !16, !37, !16, !16, !39, !41, !43, !49, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !55}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!58}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<axiu32_t> &", metadata !"hls::stream<axiu32_t> &", metadata !"uint32_t", metadata !"ufixp32_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inStream", metadata !"outStream", metadata !"ctrl", metadata !"kernel"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axiu<32, 2, 5, 6> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !6}
!17 = metadata !{metadata !"kernel_arg_addr_space"}
!18 = metadata !{metadata !"kernel_arg_access_qual"}
!19 = metadata !{metadata !"kernel_arg_type"}
!20 = metadata !{metadata !"kernel_arg_type_qual"}
!21 = metadata !{metadata !"kernel_arg_name"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !15, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !24, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!29 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !11, metadata !24, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<6> &"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !24, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !24, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !36, metadata !11, metadata !15, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!37 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !24, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !40, metadata !6}
!40 = metadata !{metadata !"kernel_arg_name", metadata !""}
!41 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !42, metadata !6}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"writeCount"}
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !6}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"ufixp32_t [3]*", metadata !"ufixp32_t*", metadata !"int", metadata !"int", metadata !"uint32_t"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"window", metadata !"kernel", metadata !"y", metadata !"x", metadata !"ctrl"}
!49 = metadata !{null, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !6}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!51 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"ufixp32_t", metadata !"ufixp32_t"}
!53 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!55 = metadata !{null, metadata !50, metadata !51, metadata !56, metadata !53, metadata !57, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!58 = metadata !{metadata !59, [1 x i32]* @llvm_global_ctors_0}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"llvm.global_ctors.0", metadata !63, metadata !"", i32 0, i32 31}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 0, i32 1}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 31, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"kernel", metadata !69, metadata !"unsigned int", i32 0, i32 31}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 8, i32 8, i32 2}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"kernel", metadata !75, metadata !"unsigned int", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 7, i32 7, i32 2}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 31, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"kernel", metadata !81, metadata !"unsigned int", i32 0, i32 31}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 6, i32 6, i32 2}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 31, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"kernel", metadata !87, metadata !"unsigned int", i32 0, i32 31}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 5, i32 5, i32 2}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 31, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"kernel", metadata !93, metadata !"unsigned int", i32 0, i32 31}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 4, i32 4, i32 2}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 31, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"kernel", metadata !99, metadata !"unsigned int", i32 0, i32 31}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 3, i32 3, i32 2}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 31, metadata !103}
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !"kernel", metadata !105, metadata !"unsigned int", i32 0, i32 31}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 2, i32 2, i32 2}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 31, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"kernel", metadata !111, metadata !"unsigned int", i32 0, i32 31}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 1, i32 1, i32 2}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 31, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"kernel", metadata !117, metadata !"unsigned int", i32 0, i32 31}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 0, i32 2}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 31, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"inStream.V.data.V", metadata !63, metadata !"uint32", i32 0, i32 31}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 3, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"inStream.V.keep.V", metadata !63, metadata !"uint4", i32 0, i32 3}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 3, metadata !129}
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !"inStream.V.strb.V", metadata !63, metadata !"uint4", i32 0, i32 3}
!131 = metadata !{metadata !132}
!132 = metadata !{i32 0, i32 1, metadata !133}
!133 = metadata !{metadata !134}
!134 = metadata !{metadata !"inStream.V.user.V", metadata !63, metadata !"uint2", i32 0, i32 1}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 0, i32 0, metadata !137}
!137 = metadata !{metadata !138}
!138 = metadata !{metadata !"inStream.V.last.V", metadata !63, metadata !"uint1", i32 0, i32 0}
!139 = metadata !{metadata !140}
!140 = metadata !{i32 0, i32 4, metadata !141}
!141 = metadata !{metadata !142}
!142 = metadata !{metadata !"inStream.V.id.V", metadata !63, metadata !"uint5", i32 0, i32 4}
!143 = metadata !{metadata !144}
!144 = metadata !{i32 0, i32 5, metadata !145}
!145 = metadata !{metadata !146}
!146 = metadata !{metadata !"inStream.V.dest.V", metadata !63, metadata !"uint6", i32 0, i32 5}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 0, i32 31, metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{metadata !"outStream.V.data.V", metadata !63, metadata !"uint32", i32 0, i32 31}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 3, metadata !153}
!153 = metadata !{metadata !154}
!154 = metadata !{metadata !"outStream.V.keep.V", metadata !63, metadata !"uint4", i32 0, i32 3}
!155 = metadata !{metadata !156}
!156 = metadata !{i32 0, i32 3, metadata !157}
!157 = metadata !{metadata !158}
!158 = metadata !{metadata !"outStream.V.strb.V", metadata !63, metadata !"uint4", i32 0, i32 3}
!159 = metadata !{metadata !160}
!160 = metadata !{i32 0, i32 1, metadata !161}
!161 = metadata !{metadata !162}
!162 = metadata !{metadata !"outStream.V.user.V", metadata !63, metadata !"uint2", i32 0, i32 1}
!163 = metadata !{metadata !164}
!164 = metadata !{i32 0, i32 0, metadata !165}
!165 = metadata !{metadata !166}
!166 = metadata !{metadata !"outStream.V.last.V", metadata !63, metadata !"uint1", i32 0, i32 0}
!167 = metadata !{metadata !168}
!168 = metadata !{i32 0, i32 4, metadata !169}
!169 = metadata !{metadata !170}
!170 = metadata !{metadata !"outStream.V.id.V", metadata !63, metadata !"uint5", i32 0, i32 4}
!171 = metadata !{metadata !172}
!172 = metadata !{i32 0, i32 5, metadata !173}
!173 = metadata !{metadata !174}
!174 = metadata !{metadata !"outStream.V.dest.V", metadata !63, metadata !"uint6", i32 0, i32 5}
!175 = metadata !{metadata !176}
!176 = metadata !{i32 0, i32 31, metadata !177}
!177 = metadata !{metadata !178}
!178 = metadata !{metadata !"ctrl", metadata !179, metadata !"unsigned int", i32 0, i32 31}
!179 = metadata !{metadata !180}
!180 = metadata !{i32 0, i32 0, i32 0}
