; ModuleID = 'D:/School/Project/new_repo/HLS/cnn_2d_conv_d4x4_k3x3/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@cnn_2d_conv_d4x4_k3x = internal unnamed_addr constant [22 x i8] c"cnn_2d_conv_d4x4_k3x3\00"
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @cnn_2d_conv_d4x4_k3x3(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i32 %ctrl, i32* %kernelData_0, i32* %kernelData_1, i32* %kernelData_2, i32* %kernelData_3, i32* %kernelData_4, i32* %kernelData_5, i32* %kernelData_6, i32* %kernelData_7, i32* %kernelData_8) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_8), !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_7), !map !68
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_6), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_5), !map !80
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_4), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_3), !map !92
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_2), !map !98
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_1), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_0), !map !110
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %inStream_V_data_V), !map !116
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_keep_V), !map !120
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_strb_V), !map !124
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inStream_V_user_V), !map !128
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_last_V), !map !132
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %inStream_V_id_V), !map !136
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %inStream_V_dest_V), !map !140
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %outStream_V_data_V), !map !144
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_keep_V), !map !148
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_strb_V), !map !152
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %outStream_V_user_V), !map !156
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_last_V), !map !160
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %outStream_V_id_V), !map !164
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %outStream_V_dest_V), !map !168
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ctrl), !map !172
  call void (...)* @_ssdm_op_SpecTopModule([22 x i8]* @cnn_2d_conv_d4x4_k3x) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ctrl, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %kernelData_0, i32* %kernelData_1, i32* %kernelData_2, i32* %kernelData_3, i32* %kernelData_4, i32* %kernelData_5, i32* %kernelData_6, i32* %kernelData_7, i32* %kernelData_8, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %lineBuffer_0_3 = phi i32 [ undef, %0 ], [ %lineBuffer_0_3_1, %_ifconv ]
  %lineBuffer_0_2 = phi i32 [ undef, %0 ], [ %lineBuffer_0_3_4, %_ifconv ]
  %x = phi i3 [ 2, %0 ], [ %x_1, %_ifconv ]
  %exitcond1 = icmp eq i3 %x, -4
  br i1 %exitcond1, label %.preheader86.0.preheader, label %_ifconv

.preheader86.0.preheader:                         ; preds = %1
  br label %.preheader86.0

_ifconv:                                          ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_5 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_2 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_5, 0
  %tmp_2 = trunc i3 %x to i2
  %cond = icmp eq i2 %tmp_2, -2
  %lineBuffer_0_3_1 = select i1 %cond, i32 %lineBuffer_0_3, i32 %tmp_data_V_2
  %lineBuffer_0_3_4 = select i1 %cond, i32 %tmp_data_V_2, i32 %lineBuffer_0_2
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp)
  %x_1 = add i3 1, %x
  br label %1

.preheader86.0:                                   ; preds = %.preheader86.0.preheader, %_ifconv5
  %lineBuffer_1_3 = phi i32 [ %lineBuffer_1_3_2, %_ifconv5 ], [ undef, %.preheader86.0.preheader ]
  %lineBuffer_1_2 = phi i32 [ %lineBuffer_1_3_4, %_ifconv5 ], [ undef, %.preheader86.0.preheader ]
  %lineBuffer_1_3_5 = phi i32 [ %lineBuffer_1_3_7, %_ifconv5 ], [ undef, %.preheader86.0.preheader ]
  %lineBuffer_1_3_8 = phi i32 [ %lineBuffer_1_3_9, %_ifconv5 ], [ undef, %.preheader86.0.preheader ]
  %x1 = phi i3 [ %x_2, %_ifconv5 ], [ 0, %.preheader86.0.preheader ]
  %exitcond4 = icmp eq i3 %x1, -4
  %x_2 = add i3 %x1, 1
  br i1 %exitcond4, label %.preheader84.preheader, label %_ifconv5

.preheader84.preheader:                           ; preds = %.preheader86.0
  %window_2_2_2 = alloca i32
  br label %.preheader84

_ifconv5:                                         ; preds = %.preheader86.0
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_8 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_3 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_8, 0
  %tmp_3 = trunc i3 %x1 to i2
  %sel_tmp = icmp eq i2 %tmp_3, -2
  %sel_tmp7 = icmp eq i2 %tmp_3, 1
  %sel_tmp9 = icmp eq i2 %tmp_3, 0
  %or_cond = or i1 %sel_tmp9, %sel_tmp7
  %newSel = select i1 %sel_tmp, i32 %lineBuffer_1_3, i32 %tmp_data_V_3
  %lineBuffer_1_3_2 = select i1 %or_cond, i32 %lineBuffer_1_3, i32 %newSel
  %newSel2 = select i1 %sel_tmp, i32 %tmp_data_V_3, i32 %lineBuffer_1_2
  %lineBuffer_1_3_4 = select i1 %or_cond, i32 %lineBuffer_1_2, i32 %newSel2
  %lineBuffer_1_3_6 = select i1 %sel_tmp7, i32 %tmp_data_V_3, i32 %lineBuffer_1_3_5
  %lineBuffer_1_3_7 = select i1 %sel_tmp9, i32 %lineBuffer_1_3_5, i32 %lineBuffer_1_3_6
  %lineBuffer_1_3_9 = select i1 %sel_tmp9, i32 %tmp_data_V_3, i32 %lineBuffer_1_3_8
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_1)
  br label %.preheader86.0

.preheader84:                                     ; preds = %.preheader84.preheader, %.preheader85
  %indvar_flatten = phi i3 [ %indvar_flatten_next, %.preheader85 ], [ 0, %.preheader84.preheader ]
  %y3 = phi i2 [ %y3_mid2, %.preheader85 ], [ 1, %.preheader84.preheader ]
  %window_2_1_1 = phi i32 [ %window_2_2_6, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %window_1_2_1 = phi i32 [ %window_2_2_7, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %window_1_1_1 = phi i32 [ %window_2_2_8, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %x4 = phi i2 [ %x_3, %.preheader85 ], [ 1, %.preheader84.preheader ]
  %exitcond_flatten = icmp eq i3 %indvar_flatten, -4
  %indvar_flatten_next = add i3 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader82.preheader, label %.preheader85

.preheader82.preheader:                           ; preds = %.preheader84
  %window_0_0_read_as = alloca i32
  %window_0_0 = alloca i32
  %window_0_1 = alloca i32
  %window_1_0_read_as = alloca i32
  %window_2_0_read_as = alloca i32
  %lineBuffer_0_3_5 = alloca i32
  %lineBuffer_0_3_8 = alloca i32
  %window_2_2_2_load = load i32* %window_2_2_2
  %window_2_1 = alloca i32
  %writeCount_1 = alloca i32
  %readCount_1 = alloca i32
  store i32 6, i32* %readCount_1
  store i32 0, i32* %writeCount_1
  store i32 %window_2_2_2_load, i32* %window_2_1
  br label %.preheader82

.preheader85:                                     ; preds = %.preheader84
  %window_2_2_2_load_1 = load i32* %window_2_2_2
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %exitcond = icmp eq i2 %x4, -1
  %x4_mid2 = select i1 %exitcond, i2 1, i2 %x4
  %cond1_mid1 = icmp eq i2 %y3, 0
  %cond1 = icmp eq i2 %y3, 1
  %cond1_mid2 = select i1 %exitcond, i1 %cond1_mid1, i1 %cond1
  %y9 = add i2 %y3, 1
  %y3_mid2 = select i1 %exitcond, i2 %y9, i2 %y3
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %x_3 = add i2 %x4_mid2, 1
  %cond2 = icmp eq i2 %x4_mid2, 1
  %lineBuffer_load37_ph = select i1 %cond2, i32 %lineBuffer_0_2, i32 %lineBuffer_0_3
  %lineBuffer_load38_ph = select i1 %cond2, i32 %lineBuffer_1_2, i32 %lineBuffer_1_3
  %window_1_1_2 = select i1 %cond1_mid2, i32 %lineBuffer_load37_ph, i32 %lineBuffer_load38_ph
  %window_2_2 = select i1 %cond2, i32 %window_1_2_1, i32 %window_1_1_2
  %window_2_2_1 = select i1 %cond2, i32 %window_1_1_2, i32 %window_1_1_1
  %window_2_2_3 = select i1 %cond2, i32 %window_2_2_2_load_1, i32 %window_1_1_2
  %window_2_2_4 = select i1 %cond2, i32 %window_1_1_2, i32 %window_2_1_1
  %window_2_2_5 = select i1 %cond1_mid2, i32 %window_2_2_2_load_1, i32 %window_2_2_3
  %window_2_2_6 = select i1 %cond1_mid2, i32 %window_2_1_1, i32 %window_2_2_4
  %window_2_2_7 = select i1 %cond1_mid2, i32 %window_2_2, i32 %window_1_2_1
  %window_2_2_8 = select i1 %cond1_mid2, i32 %window_2_2_1, i32 %window_1_1_1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_5)
  store i32 %window_2_2_5, i32* %window_2_2_2
  br label %.preheader84

.preheader82:                                     ; preds = %.preheader82.preheader, %._crit_edge88_ifconv
  %indvar_flatten6 = phi i5 [ %indvar_flatten_next7, %._crit_edge88_ifconv ], [ 0, %.preheader82.preheader ]
  %y_assign = phi i3 [ %y_assign_mid2, %._crit_edge88_ifconv ], [ 0, %.preheader82.preheader ]
  %lineBuffer_1_3_3 = phi i32 [ %lineBuffer_1_3_10, %._crit_edge88_ifconv ], [ %lineBuffer_1_3, %.preheader82.preheader ]
  %lineBuffer_1_2_3 = phi i32 [ %lineBuffer_1_3_11, %._crit_edge88_ifconv ], [ %lineBuffer_1_2, %.preheader82.preheader ]
  %lineBuffer_1_3_17 = phi i32 [ %lineBuffer_1_3_19, %._crit_edge88_ifconv ], [ %lineBuffer_1_3_5, %.preheader82.preheader ]
  %lineBuffer_1_3_1 = phi i32 [ %lineBuffer_1_3_20, %._crit_edge88_ifconv ], [ %lineBuffer_1_3_8, %.preheader82.preheader ]
  %lineBuffer_0_3_3 = phi i32 [ %lineBuffer_0_3_6, %._crit_edge88_ifconv ], [ %lineBuffer_0_3, %.preheader82.preheader ]
  %lineBuffer_0_2_s = phi i32 [ %lineBuffer_0_3_7, %._crit_edge88_ifconv ], [ %lineBuffer_0_2, %.preheader82.preheader ]
  %window_2_0 = phi i32 [ %window_2_1_2, %._crit_edge88_ifconv ], [ %window_2_1_1, %.preheader82.preheader ]
  %window_1_1 = phi i32 [ %lineBuffer_0_3_15, %._crit_edge88_ifconv ], [ %window_1_2_1, %.preheader82.preheader ]
  %window_1_0 = phi i32 [ %window_1_1, %._crit_edge88_ifconv ], [ %window_1_1_1, %.preheader82.preheader ]
  %x_assign = phi i3 [ %x_4, %._crit_edge88_ifconv ], [ 0, %.preheader82.preheader ]
  %window_0_0_read_as_1 = load i32* %window_0_0_read_as
  %window_0_0_load = load i32* %window_0_0
  %window_0_1_load_1 = load i32* %window_0_1
  %window_1_0_read_as_1 = load i32* %window_1_0_read_as
  %window_2_0_read_as_1 = load i32* %window_2_0_read_as
  %window_2_1_2 = load i32* %window_2_1
  %exitcond_flatten8 = icmp eq i5 %indvar_flatten6, -16
  %indvar_flatten_next7 = add i5 %indvar_flatten6, 1
  store i32 %window_2_0, i32* %window_2_0_read_as
  store i32 %window_1_0, i32* %window_1_0_read_as
  store i32 %window_0_1_load_1, i32* %window_0_0
  store i32 %window_0_0_load, i32* %window_0_0_read_as
  br i1 %exitcond_flatten8, label %4, label %.preheader83

; <label>:2                                       ; preds = %.preheader83
  %window_0_1_load = load i32* %window_0_1
  %writeCount_1_load = load i32* %writeCount_1
  %writeCount = add nsw i32 %writeCount_1_load, 1
  %kernelData_0_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_0)
  %kernelData_1_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_1)
  %kernelData_2_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_2)
  %kernelData_3_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_3)
  %kernelData_4_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_4)
  %kernelData_5_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_5)
  %kernelData_6_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_6)
  %kernelData_7_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_7)
  %kernelData_8_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_8)
  %tmp_8_i = mul i32 %kernelData_0_read, %window_0_0_read_as_1
  %tmp_8_0_1_i = mul i32 %kernelData_1_read, %window_0_0_load
  %tmp_8_0_2_i = mul i32 %kernelData_2_read, %window_0_1_load
  %tmp_8_1_i = mul i32 %kernelData_3_read, %window_1_0_read_as_1
  %tmp_8_1_1_i = mul i32 %kernelData_4_read, %window_1_0
  %tmp_8_1_2_i = mul i32 %kernelData_5_read, %window_1_1
  %tmp_8_2_i = mul i32 %kernelData_6_read, %window_2_0_read_as_1
  %tmp_8_2_1_i = mul i32 %kernelData_7_read, %window_2_0
  %tmp_8_2_2_i = mul i32 %kernelData_8_read, %window_2_1_2
  %tmp3 = add i32 %tmp_8_0_1_i, %tmp_8_i
  %tmp4 = add i32 %tmp_8_0_2_i, %tmp_8_1_i
  %tmp5 = add i32 %tmp4, %tmp3
  %tmp6 = add i32 %tmp_8_1_1_i, %tmp_8_1_2_i
  %tmp7 = add i32 %tmp_8_2_1_i, %tmp_8_2_2_i
  %tmp8 = add i32 %tmp7, %tmp_8_2_i
  %tmp9 = add i32 %tmp8, %tmp6
  %tmp_data_V = add i32 %tmp9, %tmp5
  %tmp_last_V = icmp eq i32 %writeCount, 4
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i32 %tmp_data_V, i4 -1, i4 0, i2 0, i1 %tmp_last_V, i5 0, i6 0)
  store i32 %writeCount, i32* %writeCount_1
  br label %._crit_edge_ifconv

._crit_edge_ifconv:                               ; preds = %2, %.preheader83
  %lineBuffer_0_3_5_l = load i32* %lineBuffer_0_3_5
  %lineBuffer_0_3_8_l = load i32* %lineBuffer_0_3_8
  %readCount_1_load = load i32* %readCount_1
  %tmp_6 = trunc i3 %x_assign_mid2 to i2
  %windowRightCol_0 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %lineBuffer_0_3_5_l, i32 %lineBuffer_0_3_8_l, i32 %lineBuffer_0_2_s, i32 %lineBuffer_0_3_3, i2 %tmp_6)
  %lineBuffer_0_3_15 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %lineBuffer_1_3_1, i32 %lineBuffer_1_3_17, i32 %lineBuffer_1_2_3, i32 %lineBuffer_1_3_3, i2 %tmp_6)
  %sel_tmp2 = icmp eq i2 %tmp_6, -2
  %sel_tmp3 = icmp eq i2 %tmp_6, 1
  %sel_tmp4 = icmp eq i2 %tmp_6, 0
  %or_cond2 = or i1 %sel_tmp4, %sel_tmp3
  %newSel4 = select i1 %sel_tmp2, i32 %lineBuffer_0_3_3, i32 %lineBuffer_0_3_15
  %lineBuffer_0_3_6 = select i1 %or_cond2, i32 %lineBuffer_0_3_3, i32 %newSel4
  %newSel6 = select i1 %sel_tmp2, i32 %lineBuffer_0_3_15, i32 %lineBuffer_0_2_s
  %lineBuffer_0_3_7 = select i1 %or_cond2, i32 %lineBuffer_0_2_s, i32 %newSel6
  %lineBuffer_0_3_9 = select i1 %sel_tmp3, i32 %lineBuffer_0_3_15, i32 %lineBuffer_0_3_8_l
  %lineBuffer_0_3_13 = select i1 %sel_tmp4, i32 %lineBuffer_0_3_8_l, i32 %lineBuffer_0_3_9
  %lineBuffer_0_3_14 = select i1 %sel_tmp4, i32 %lineBuffer_0_3_15, i32 %lineBuffer_0_3_5_l
  %tmp_7 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %readCount_1_load, i32 4, i32 31)
  %icmp = icmp slt i28 %tmp_7, 1
  store i32 %lineBuffer_0_3_13, i32* %lineBuffer_0_3_8
  store i32 %lineBuffer_0_3_14, i32* %lineBuffer_0_3_5
  store i32 %windowRightCol_0, i32* %window_0_1
  br i1 %icmp, label %3, label %._crit_edge88_ifconv

; <label>:3                                       ; preds = %._crit_edge_ifconv
  %empty_12 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_4 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_12, 0
  %readCount = add nsw i32 %readCount_1_load, 1
  store i32 %readCount, i32* %readCount_1
  store i32 %tmp_data_V_4, i32* %window_2_1
  br label %._crit_edge88_ifconv

._crit_edge88_ifconv:                             ; preds = %3, %._crit_edge_ifconv
  %lineBuffer_1_3_21 = load i32* %window_2_1
  %newSel8 = select i1 %sel_tmp2, i32 %lineBuffer_1_3_3, i32 %lineBuffer_1_3_21
  %lineBuffer_1_3_10 = select i1 %or_cond2, i32 %lineBuffer_1_3_3, i32 %newSel8
  %newSel1 = select i1 %sel_tmp2, i32 %lineBuffer_1_3_21, i32 %lineBuffer_1_2_3
  %lineBuffer_1_3_11 = select i1 %or_cond2, i32 %lineBuffer_1_2_3, i32 %newSel1
  %lineBuffer_1_3_18 = select i1 %sel_tmp3, i32 %lineBuffer_1_3_21, i32 %lineBuffer_1_3_17
  %lineBuffer_1_3_19 = select i1 %sel_tmp4, i32 %lineBuffer_1_3_17, i32 %lineBuffer_1_3_18
  %lineBuffer_1_3_20 = select i1 %sel_tmp4, i32 %lineBuffer_1_3_21, i32 %lineBuffer_1_3_1
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_4)
  %x_4 = add i3 %x_assign_mid2, 1
  br label %.preheader82

.preheader83:                                     ; preds = %.preheader82
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %exitcond2 = icmp eq i3 %x_assign, -4
  %x_assign_mid2 = select i1 %exitcond2, i3 0, i3 %x_assign
  %y_s = add i3 %y_assign, 1
  %tmp_i_mid1 = icmp eq i3 %y_s, 0
  %tmp_i = icmp eq i3 %y_assign, 0
  %tmp_i_mid2 = select i1 %exitcond2, i1 %tmp_i_mid1, i1 %tmp_i
  %tmp_2_i_mid1 = icmp ugt i3 %y_s, 2
  %tmp_2_i = icmp ugt i3 %y_assign, 2
  %tmp_2_i_mid2 = select i1 %exitcond2, i1 %tmp_2_i_mid1, i1 %tmp_2_i
  %y_assign_mid2 = select i1 %exitcond2, i3 %y_s, i3 %y_assign
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_i_15 = icmp eq i3 %x_assign_mid2, 0
  %tmp_1_i = icmp ugt i3 %x_assign_mid2, 2
  %tmp1 = or i1 %tmp_i_15, %tmp_i_mid2
  %tmp2 = or i1 %tmp_1_i, %tmp_2_i_mid2
  %p_i = or i1 %tmp2, %tmp1
  br i1 %p_i, label %._crit_edge_ifconv, label %2

; <label>:4                                       ; preds = %.preheader82
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

define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_22 = trunc i32 %empty to i28
  ret i28 %empty_22
}

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32, i32, i32, i32, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !25, !25, !16, !16, !27, !25, !25, !16, !16, !29, !25, !25, !16, !16, !31, !25, !25, !16, !16, !33, !35, !35, !16, !16, !37, !16, !16, !39, !41, !43, !47, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !53}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!55}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<axiu32_t> &", metadata !"hls::stream<axiu32_t> &", metadata !"uint32_t", metadata !"uint32_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inStream", metadata !"outStream", metadata !"ctrl", metadata !"kernelData"}
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
!43 = metadata !{null, metadata !44, metadata !2, metadata !45, metadata !4, metadata !46, metadata !6}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t [3]*", metadata !"uint32_t*", metadata !"int", metadata !"int"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"window", metadata !"kernel", metadata !"y", metadata !"x"}
!47 = metadata !{null, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !6}
!48 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!49 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!51 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!53 = metadata !{null, metadata !48, metadata !49, metadata !50, metadata !51, metadata !54, metadata !6}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!55 = metadata !{metadata !56, [1 x i32]* @llvm_global_ctors_0}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 31, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"llvm.global_ctors.0", metadata !60, metadata !"", i32 0, i32 31}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 0, i32 1}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 31, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"kernelData", metadata !66, metadata !"unsigned int", i32 0, i32 31}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 8, i32 8, i32 2}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 31, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"kernelData", metadata !72, metadata !"unsigned int", i32 0, i32 31}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 7, i32 7, i32 2}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 31, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"kernelData", metadata !78, metadata !"unsigned int", i32 0, i32 31}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 6, i32 6, i32 2}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 31, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"kernelData", metadata !84, metadata !"unsigned int", i32 0, i32 31}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 5, i32 5, i32 2}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 31, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"kernelData", metadata !90, metadata !"unsigned int", i32 0, i32 31}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 4, i32 4, i32 2}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 31, metadata !94}
!94 = metadata !{metadata !95}
!95 = metadata !{metadata !"kernelData", metadata !96, metadata !"unsigned int", i32 0, i32 31}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 3, i32 3, i32 2}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 31, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"kernelData", metadata !102, metadata !"unsigned int", i32 0, i32 31}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 2, i32 2, i32 2}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 31, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"kernelData", metadata !108, metadata !"unsigned int", i32 0, i32 31}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 1, i32 1, i32 2}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 31, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"kernelData", metadata !114, metadata !"unsigned int", i32 0, i32 31}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 0, i32 2}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 31, metadata !118}
!118 = metadata !{metadata !119}
!119 = metadata !{metadata !"inStream.V.data.V", metadata !60, metadata !"uint32", i32 0, i32 31}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 3, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"inStream.V.keep.V", metadata !60, metadata !"uint4", i32 0, i32 3}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 0, i32 3, metadata !126}
!126 = metadata !{metadata !127}
!127 = metadata !{metadata !"inStream.V.strb.V", metadata !60, metadata !"uint4", i32 0, i32 3}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 1, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"inStream.V.user.V", metadata !60, metadata !"uint2", i32 0, i32 1}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 0, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"inStream.V.last.V", metadata !60, metadata !"uint1", i32 0, i32 0}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 0, i32 4, metadata !138}
!138 = metadata !{metadata !139}
!139 = metadata !{metadata !"inStream.V.id.V", metadata !60, metadata !"uint5", i32 0, i32 4}
!140 = metadata !{metadata !141}
!141 = metadata !{i32 0, i32 5, metadata !142}
!142 = metadata !{metadata !143}
!143 = metadata !{metadata !"inStream.V.dest.V", metadata !60, metadata !"uint6", i32 0, i32 5}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 0, i32 31, metadata !146}
!146 = metadata !{metadata !147}
!147 = metadata !{metadata !"outStream.V.data.V", metadata !60, metadata !"uint32", i32 0, i32 31}
!148 = metadata !{metadata !149}
!149 = metadata !{i32 0, i32 3, metadata !150}
!150 = metadata !{metadata !151}
!151 = metadata !{metadata !"outStream.V.keep.V", metadata !60, metadata !"uint4", i32 0, i32 3}
!152 = metadata !{metadata !153}
!153 = metadata !{i32 0, i32 3, metadata !154}
!154 = metadata !{metadata !155}
!155 = metadata !{metadata !"outStream.V.strb.V", metadata !60, metadata !"uint4", i32 0, i32 3}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 0, i32 1, metadata !158}
!158 = metadata !{metadata !159}
!159 = metadata !{metadata !"outStream.V.user.V", metadata !60, metadata !"uint2", i32 0, i32 1}
!160 = metadata !{metadata !161}
!161 = metadata !{i32 0, i32 0, metadata !162}
!162 = metadata !{metadata !163}
!163 = metadata !{metadata !"outStream.V.last.V", metadata !60, metadata !"uint1", i32 0, i32 0}
!164 = metadata !{metadata !165}
!165 = metadata !{i32 0, i32 4, metadata !166}
!166 = metadata !{metadata !167}
!167 = metadata !{metadata !"outStream.V.id.V", metadata !60, metadata !"uint5", i32 0, i32 4}
!168 = metadata !{metadata !169}
!169 = metadata !{i32 0, i32 5, metadata !170}
!170 = metadata !{metadata !171}
!171 = metadata !{metadata !"outStream.V.dest.V", metadata !60, metadata !"uint6", i32 0, i32 5}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 0, i32 31, metadata !174}
!174 = metadata !{metadata !175}
!175 = metadata !{metadata !"ctrl", metadata !176, metadata !"unsigned int", i32 0, i32 31}
!176 = metadata !{metadata !177}
!177 = metadata !{i32 0, i32 0, i32 0}
