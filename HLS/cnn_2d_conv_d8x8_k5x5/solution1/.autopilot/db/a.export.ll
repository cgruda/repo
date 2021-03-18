; ModuleID = 'D:/School/Project/new_repo/HLS/cnn_2d_conv_d8x8_k5x5/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@cnn_2d_conv_d8x8_k5x = internal unnamed_addr constant [22 x i8] c"cnn_2d_conv_d8x8_k5x5\00"
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare i4 @llvm.part.select.i4(i4, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @cnn_2d_conv_d8x8_k5x5(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i32 %ctrl, i32* %kernelData_0, i32* %kernelData_1, i32* %kernelData_2, i32* %kernelData_3, i32* %kernelData_4, i32* %kernelData_5, i32* %kernelData_6, i32* %kernelData_7, i32* %kernelData_8, i32* %kernelData_9, i32* %kernelData_10, i32* %kernelData_11, i32* %kernelData_12, i32* %kernelData_13, i32* %kernelData_14, i32* %kernelData_15, i32* %kernelData_16, i32* %kernelData_17, i32* %kernelData_18, i32* %kernelData_19, i32* %kernelData_20, i32* %kernelData_21, i32* %kernelData_22, i32* %kernelData_23, i32* %kernelData_24) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_24), !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_23), !map !68
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_22), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_21), !map !80
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_20), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_19), !map !92
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_18), !map !98
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_17), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_16), !map !110
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_15), !map !116
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_14), !map !122
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_13), !map !128
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_12), !map !134
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_11), !map !140
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_10), !map !146
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_9), !map !152
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_8), !map !158
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_7), !map !164
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_6), !map !170
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_5), !map !176
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_4), !map !182
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_3), !map !188
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_2), !map !194
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_1), !map !200
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %kernelData_0), !map !206
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %inStream_V_data_V), !map !212
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_keep_V), !map !216
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_strb_V), !map !220
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inStream_V_user_V), !map !224
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_last_V), !map !228
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %inStream_V_id_V), !map !232
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %inStream_V_dest_V), !map !236
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %outStream_V_data_V), !map !240
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_keep_V), !map !244
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_strb_V), !map !248
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %outStream_V_user_V), !map !252
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_last_V), !map !256
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %outStream_V_id_V), !map !260
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %outStream_V_dest_V), !map !264
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ctrl), !map !268
  call void (...)* @_ssdm_op_SpecTopModule([22 x i8]* @cnn_2d_conv_d8x8_k5x) nounwind
  %lineBuffer_0 = alloca [8 x i32], align 4
  %lineBuffer_1 = alloca [8 x i32], align 4
  %lineBuffer_2 = alloca [8 x i32], align 4
  %lineBuffer_3 = alloca [8 x i32], align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ctrl, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %kernelData_0, i32* %kernelData_1, i32* %kernelData_2, i32* %kernelData_3, i32* %kernelData_4, i32* %kernelData_5, i32* %kernelData_6, i32* %kernelData_7, i32* %kernelData_8, i32* %kernelData_9, i32* %kernelData_10, i32* %kernelData_11, i32* %kernelData_12, i32* %kernelData_13, i32* %kernelData_14, i32* %kernelData_15, i32* %kernelData_16, i32* %kernelData_17, i32* %kernelData_18, i32* %kernelData_19, i32* %kernelData_20, i32* %kernelData_21, i32* %kernelData_22, i32* %kernelData_23, i32* %kernelData_24, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %x = phi i4 [ 5, %0 ], [ %x_1, %2 ]
  %exitcond1 = icmp eq i4 %x, -8
  br i1 %exitcond1, label %.preheader86.preheader, label %2

.preheader86.preheader:                           ; preds = %1
  br label %.preheader86

; <label>:2                                       ; preds = %1
  %x_cast = zext i4 %x to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_7 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_7, 0
  %lineBuffer_1_addr = getelementptr [8 x i32]* %lineBuffer_1, i32 0, i32 %x_cast
  store i32 %tmp_data_V, i32* %lineBuffer_1_addr, align 4
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp)
  %x_1 = add i4 %x, 1
  br label %1

.preheader86:                                     ; preds = %.preheader86.preheader, %3
  %indvar_flatten = phi i5 [ %indvar_flatten_next, %3 ], [ 0, %.preheader86.preheader ]
  %y = phi i3 [ %y_mid2, %3 ], [ 2, %.preheader86.preheader ]
  %x1 = phi i4 [ %x_2, %3 ], [ 0, %.preheader86.preheader ]
  %exitcond_flatten = icmp eq i5 %indvar_flatten, -16
  %indvar_flatten_next = add i5 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader84.preheader, label %.preheader87

.preheader84.preheader:                           ; preds = %.preheader86
  %window_4_4 = alloca i32
  br label %.preheader84

; <label>:3                                       ; preds = %branch27, %branch26
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_2)
  %x_2 = add i4 %x1_mid2, 1
  br label %.preheader86

.preheader87:                                     ; preds = %.preheader86
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %exitcond = icmp eq i4 %x1, -8
  %x1_mid2 = select i1 %exitcond, i4 0, i4 %x1
  %y_s = add i3 %y, 1
  %cond_mid1 = icmp eq i3 %y_s, 2
  %cond = icmp eq i3 %y, 2
  %cond_mid2 = select i1 %exitcond, i1 %cond_mid1, i1 %cond
  %y_mid2 = select i1 %exitcond, i3 %y_s, i3 %y
  %x1_cast = zext i4 %x1_mid2 to i32
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_11 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_1 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_11, 0
  %lineBuffer_2_addr = getelementptr [8 x i32]* %lineBuffer_2, i32 0, i32 %x1_cast
  %lineBuffer_3_addr = getelementptr [8 x i32]* %lineBuffer_3, i32 0, i32 %x1_cast
  br i1 %cond_mid2, label %branch26, label %branch27

.preheader84:                                     ; preds = %.preheader84.preheader, %.preheader85
  %indvar_flatten6 = phi i4 [ %indvar_flatten_next7, %.preheader85 ], [ 0, %.preheader84.preheader ]
  %y3 = phi i3 [ %y3_mid2, %.preheader85 ], [ 2, %.preheader84.preheader ]
  %window_4_4_32 = phi i32 [ %window_4_4_14, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %window_4_4_1 = phi i32 [ %window_4_4_16, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %window_4_4_10 = phi i32 [ %window_4_4_23, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %window_4_4_15 = phi i32 [ %window_4_4_29, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %window_4_4_17 = phi i32 [ %window_4_4_34, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %window_2_4_1 = phi i32 [ %window_4_4_42, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %window_4_4_24 = phi i32 [ %window_4_4_49, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %window_4_4_30 = phi i32 [ %window_4_4_52, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %x4 = phi i3 [ %x_3, %.preheader85 ], [ 2, %.preheader84.preheader ]
  %sel_tmp = icmp eq i3 %y3, 2
  %sel_tmp2 = icmp eq i3 %y3, 3
  %sel_tmp4 = icmp ne i3 %y3, 2
  %sel_tmp5 = icmp ne i3 %y3, 3
  %sel_tmp10 = and i1 %sel_tmp4, %sel_tmp5
  %exitcond_flatten8 = icmp eq i4 %indvar_flatten6, -7
  %indvar_flatten_next7 = add i4 %indvar_flatten6, 1
  br i1 %exitcond_flatten8, label %.preheader82.preheader, label %.preheader85

.preheader82.preheader:                           ; preds = %.preheader84
  %window_0_0_read_as = alloca i32
  %window_0_0 = alloca i32
  %window_0_1 = alloca i32
  %window_0_2 = alloca i32
  %window_0_3 = alloca i32
  %window_1_0_read_as = alloca i32
  %window_1_0 = alloca i32
  %window_1_1 = alloca i32
  %window_1_2 = alloca i32
  %window_1_3 = alloca i32
  %window_2_0_read_as = alloca i32
  %window_2_0 = alloca i32
  %window_3_0_read_as = alloca i32
  %window_3_0 = alloca i32
  %window_4_0_read_as = alloca i32
  %window_4_0 = alloca i32
  %window_4_4_load = load i32* %window_4_4
  %window_4_3 = alloca i32
  %writeCount_1 = alloca i32
  %readCount_1 = alloca i32
  store i32 19, i32* %readCount_1
  store i32 0, i32* %writeCount_1
  store i32 %window_4_4_load, i32* %window_4_3
  br label %.preheader82

.preheader85:                                     ; preds = %.preheader84
  %window_4_4_load_1 = load i32* %window_4_4
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %exitcond2 = icmp eq i3 %x4, -3
  %x4_mid2 = select i1 %exitcond2, i3 2, i3 %x4
  %y_1 = add i3 %y3, 1
  %sel_tmp_mid1 = icmp eq i3 %y_1, 2
  %sel_tmp_mid2 = select i1 %exitcond2, i1 %sel_tmp_mid1, i1 %sel_tmp
  %sel_tmp2_mid1 = icmp eq i3 %y_1, 3
  %sel_tmp2_mid2 = select i1 %exitcond2, i1 %sel_tmp2_mid1, i1 %sel_tmp2
  %sel_tmp16_mid1 = icmp ne i3 %y_1, 2
  %sel_tmp17_mid1 = icmp ne i3 %y_1, 3
  %sel_tmp18_mid1 = and i1 %sel_tmp16_mid1, %sel_tmp17_mid1
  %sel_tmp18_mid2 = select i1 %exitcond2, i1 %sel_tmp18_mid1, i1 %sel_tmp10
  %y3_mid2 = select i1 %exitcond2, i3 %y_1, i3 %y3
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_s = add i3 %x4_mid2, 3
  %tmp_cast = zext i3 %tmp_s to i32
  %lineBuffer_1_addr_1 = getelementptr [8 x i32]* %lineBuffer_1, i32 0, i32 %tmp_cast
  %lineBuffer_2_addr_1 = getelementptr [8 x i32]* %lineBuffer_2, i32 0, i32 %tmp_cast
  %lineBuffer_3_addr_1 = getelementptr [8 x i32]* %lineBuffer_3, i32 0, i32 %tmp_cast
  %lineBuffer_3_load = load i32* %lineBuffer_3_addr_1, align 4
  %lineBuffer_1_load = load i32* %lineBuffer_1_addr_1, align 4
  %lineBuffer_2_load = load i32* %lineBuffer_2_addr_1, align 4
  %sel_tmp1 = select i1 %sel_tmp_mid2, i32 %lineBuffer_1_load, i32 %lineBuffer_3_load
  %window_4_2_2 = select i1 %sel_tmp2_mid2, i32 %lineBuffer_2_load, i32 %sel_tmp1
  %sel_tmp7 = icmp ne i3 %x4_mid2, 2
  %sel_tmp9 = icmp ne i3 %x4_mid2, 3
  %tmp1 = and i1 %sel_tmp7, %sel_tmp9
  %sel_tmp3 = and i1 %tmp1, %sel_tmp_mid2
  %window_4_4_2 = select i1 %sel_tmp3, i32 %window_4_4_load_1, i32 %window_4_2_2
  %sel_tmp6 = icmp eq i3 %x4_mid2, 3
  %sel_tmp8 = and i1 %sel_tmp_mid2, %sel_tmp6
  %window_4_4_3 = select i1 %sel_tmp8, i32 %window_4_4_load_1, i32 %window_4_4_2
  %sel_tmp11 = and i1 %tmp1, %sel_tmp2_mid2
  %window_4_4_4 = select i1 %sel_tmp11, i32 %window_4_4_load_1, i32 %window_4_4_3
  %sel_tmp12 = and i1 %sel_tmp2_mid2, %sel_tmp6
  %window_4_4_5 = select i1 %sel_tmp12, i32 %window_4_4_load_1, i32 %window_4_4_4
  %sel_tmp13 = and i1 %sel_tmp18_mid2, %sel_tmp6
  %window_4_4_6 = select i1 %sel_tmp13, i32 %window_4_4_load_1, i32 %window_4_4_5
  %sel_tmp14 = icmp eq i3 %x4_mid2, 2
  %sel_tmp15 = and i1 %sel_tmp_mid2, %sel_tmp14
  %window_4_4_7 = select i1 %sel_tmp15, i32 %window_4_4_load_1, i32 %window_4_4_6
  %sel_tmp16 = and i1 %sel_tmp2_mid2, %sel_tmp14
  %window_4_4_8 = select i1 %sel_tmp16, i32 %window_4_4_load_1, i32 %window_4_4_7
  %sel_tmp17 = and i1 %sel_tmp18_mid2, %sel_tmp14
  %window_4_4_9 = select i1 %sel_tmp17, i32 %window_4_4_load_1, i32 %window_4_4_8
  %window_4_4_11 = select i1 %sel_tmp13, i32 %window_4_2_2, i32 %window_4_4_32
  %window_4_4_12 = select i1 %sel_tmp15, i32 %window_4_4_32, i32 %window_4_4_11
  %window_4_4_13 = select i1 %sel_tmp16, i32 %window_4_4_32, i32 %window_4_4_12
  %window_4_4_14 = select i1 %sel_tmp17, i32 %window_4_4_32, i32 %window_4_4_13
  %window_4_4_16 = select i1 %sel_tmp17, i32 %window_4_2_2, i32 %window_4_4_1
  %window_4_4_18 = select i1 %sel_tmp11, i32 %window_4_2_2, i32 %window_4_4_10
  %window_4_4_19 = select i1 %sel_tmp12, i32 %window_4_4_10, i32 %window_4_4_18
  %window_4_4_20 = select i1 %sel_tmp13, i32 %window_4_4_10, i32 %window_4_4_19
  %window_4_4_21 = select i1 %sel_tmp15, i32 %window_4_4_10, i32 %window_4_4_20
  %window_4_4_22 = select i1 %sel_tmp16, i32 %window_4_4_10, i32 %window_4_4_21
  %window_4_4_23 = select i1 %sel_tmp17, i32 %window_4_4_10, i32 %window_4_4_22
  %window_4_4_25 = select i1 %sel_tmp12, i32 %window_4_2_2, i32 %window_4_4_15
  %window_4_4_26 = select i1 %sel_tmp13, i32 %window_4_4_15, i32 %window_4_4_25
  %window_4_4_27 = select i1 %sel_tmp15, i32 %window_4_4_15, i32 %window_4_4_26
  %window_4_4_28 = select i1 %sel_tmp16, i32 %window_4_4_15, i32 %window_4_4_27
  %window_4_4_29 = select i1 %sel_tmp17, i32 %window_4_4_15, i32 %window_4_4_28
  %window_4_4_33 = select i1 %sel_tmp16, i32 %window_4_2_2, i32 %window_4_4_17
  %window_4_4_34 = select i1 %sel_tmp17, i32 %window_4_4_17, i32 %window_4_4_33
  %window_4_4_35 = select i1 %sel_tmp3, i32 %window_4_2_2, i32 %window_2_4_1
  %window_4_4_36 = select i1 %sel_tmp8, i32 %window_2_4_1, i32 %window_4_4_35
  %window_4_4_37 = select i1 %sel_tmp11, i32 %window_2_4_1, i32 %window_4_4_36
  %window_4_4_38 = select i1 %sel_tmp12, i32 %window_2_4_1, i32 %window_4_4_37
  %window_4_4_39 = select i1 %sel_tmp13, i32 %window_2_4_1, i32 %window_4_4_38
  %window_4_4_40 = select i1 %sel_tmp15, i32 %window_2_4_1, i32 %window_4_4_39
  %window_4_4_41 = select i1 %sel_tmp16, i32 %window_2_4_1, i32 %window_4_4_40
  %window_4_4_42 = select i1 %sel_tmp17, i32 %window_2_4_1, i32 %window_4_4_41
  %window_4_4_43 = select i1 %sel_tmp8, i32 %window_4_2_2, i32 %window_4_4_24
  %window_4_4_44 = select i1 %sel_tmp11, i32 %window_4_4_24, i32 %window_4_4_43
  %window_4_4_45 = select i1 %sel_tmp12, i32 %window_4_4_24, i32 %window_4_4_44
  %window_4_4_46 = select i1 %sel_tmp13, i32 %window_4_4_24, i32 %window_4_4_45
  %window_4_4_47 = select i1 %sel_tmp15, i32 %window_4_4_24, i32 %window_4_4_46
  %window_4_4_48 = select i1 %sel_tmp16, i32 %window_4_4_24, i32 %window_4_4_47
  %window_4_4_49 = select i1 %sel_tmp17, i32 %window_4_4_24, i32 %window_4_4_48
  %window_4_4_50 = select i1 %sel_tmp15, i32 %window_4_2_2, i32 %window_4_4_30
  %window_4_4_51 = select i1 %sel_tmp16, i32 %window_4_4_30, i32 %window_4_4_50
  %window_4_4_52 = select i1 %sel_tmp17, i32 %window_4_4_30, i32 %window_4_4_51
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_6)
  %x_3 = add i3 %x4_mid2, 1
  store i32 %window_4_4_9, i32* %window_4_4
  br label %.preheader84

.preheader82:                                     ; preds = %.preheader82.preheader, %._crit_edge88
  %indvar_flatten1 = phi i7 [ %indvar_flatten_next1, %._crit_edge88 ], [ 0, %.preheader82.preheader ]
  %y_assign = phi i4 [ %y_assign_mid2, %._crit_edge88 ], [ 0, %.preheader82.preheader ]
  %window_4_2 = phi i32 [ %window_4_3_2, %._crit_edge88 ], [ %window_4_4_32, %.preheader82.preheader ]
  %window_4_1 = phi i32 [ %window_4_2, %._crit_edge88 ], [ %window_4_4_1, %.preheader82.preheader ]
  %window_3_3_1 = phi i32 [ %windowRightCol_3, %._crit_edge88 ], [ %window_4_4_10, %.preheader82.preheader ]
  %window_3_2 = phi i32 [ %window_3_3_1, %._crit_edge88 ], [ %window_4_4_15, %.preheader82.preheader ]
  %window_3_1 = phi i32 [ %window_3_2, %._crit_edge88 ], [ %window_4_4_17, %.preheader82.preheader ]
  %window_2_3 = phi i32 [ %windowRightCol_2, %._crit_edge88 ], [ %window_2_4_1, %.preheader82.preheader ]
  %window_2_2 = phi i32 [ %window_2_3, %._crit_edge88 ], [ %window_4_4_24, %.preheader82.preheader ]
  %window_2_1 = phi i32 [ %window_2_2, %._crit_edge88 ], [ %window_4_4_30, %.preheader82.preheader ]
  %x_assign = phi i4 [ %x_4, %._crit_edge88 ], [ 0, %.preheader82.preheader ]
  %window_0_0_read_as_1 = load i32* %window_0_0_read_as
  %window_0_0_load = load i32* %window_0_0
  %window_0_1_load = load i32* %window_0_1
  %window_0_2_load = load i32* %window_0_2
  %window_0_3_load_1 = load i32* %window_0_3
  %window_1_0_read_as_1 = load i32* %window_1_0_read_as
  %window_1_0_load = load i32* %window_1_0
  %window_1_1_load = load i32* %window_1_1
  %window_1_2_load = load i32* %window_1_2
  %window_1_3_load_1 = load i32* %window_1_3
  %window_2_0_read_as_1 = load i32* %window_2_0_read_as
  %window_2_0_load = load i32* %window_2_0
  %window_3_0_read_as_1 = load i32* %window_3_0_read_as
  %window_3_0_load = load i32* %window_3_0
  %window_4_0_read_as_1 = load i32* %window_4_0_read_as
  %window_4_0_load = load i32* %window_4_0
  %window_4_3_2 = load i32* %window_4_3
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1
  store i32 %window_4_1, i32* %window_4_0
  store i32 %window_4_0_load, i32* %window_4_0_read_as
  store i32 %window_3_1, i32* %window_3_0
  store i32 %window_3_0_load, i32* %window_3_0_read_as
  store i32 %window_2_1, i32* %window_2_0
  store i32 %window_2_0_load, i32* %window_2_0_read_as
  store i32 %window_1_3_load_1, i32* %window_1_2
  store i32 %window_1_2_load, i32* %window_1_1
  store i32 %window_1_1_load, i32* %window_1_0
  store i32 %window_1_0_load, i32* %window_1_0_read_as
  store i32 %window_0_3_load_1, i32* %window_0_2
  store i32 %window_0_2_load, i32* %window_0_1
  store i32 %window_0_1_load, i32* %window_0_0
  store i32 %window_0_0_load, i32* %window_0_0_read_as
  br i1 %exitcond_flatten1, label %6, label %.preheader83

; <label>:4                                       ; preds = %.preheader83
  %window_0_3_load = load i32* %window_0_3
  %window_1_3_load = load i32* %window_1_3
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
  %kernelData_9_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_9)
  %kernelData_10_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_10)
  %kernelData_11_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_11)
  %kernelData_12_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_12)
  %kernelData_13_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_13)
  %kernelData_14_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_14)
  %kernelData_15_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_15)
  %kernelData_16_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_16)
  %kernelData_17_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_17)
  %kernelData_18_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_18)
  %kernelData_19_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_19)
  %kernelData_20_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_20)
  %kernelData_21_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_21)
  %kernelData_22_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_22)
  %kernelData_23_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_23)
  %kernelData_24_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %kernelData_24)
  %tmp_9_i = mul i32 %kernelData_0_read, %window_0_0_read_as_1
  %tmp_9_0_1_i = mul i32 %kernelData_1_read, %window_0_0_load
  %tmp_9_0_2_i = mul i32 %kernelData_2_read, %window_0_1_load
  %tmp_9_0_3_i = mul i32 %kernelData_3_read, %window_0_2_load
  %tmp_9_0_4_i = mul i32 %kernelData_4_read, %window_0_3_load
  %tmp_9_1_i = mul i32 %kernelData_5_read, %window_1_0_read_as_1
  %tmp_9_1_1_i = mul i32 %kernelData_6_read, %window_1_0_load
  %tmp_9_1_2_i = mul i32 %kernelData_7_read, %window_1_1_load
  %tmp_9_1_3_i = mul i32 %kernelData_8_read, %window_1_2_load
  %tmp_9_1_4_i = mul i32 %kernelData_9_read, %window_1_3_load
  %tmp_9_2_i = mul i32 %kernelData_10_read, %window_2_0_read_as_1
  %tmp_9_2_1_i = mul i32 %kernelData_11_read, %window_2_0_load
  %tmp_9_2_2_i = mul i32 %kernelData_12_read, %window_2_1
  %tmp_9_2_3_i = mul i32 %kernelData_13_read, %window_2_2
  %tmp_9_2_4_i = mul i32 %kernelData_14_read, %window_2_3
  %tmp_9_3_i = mul i32 %kernelData_15_read, %window_3_0_read_as_1
  %tmp_9_3_1_i = mul i32 %kernelData_16_read, %window_3_0_load
  %tmp_9_3_2_i = mul i32 %kernelData_17_read, %window_3_1
  %tmp_9_3_3_i = mul i32 %kernelData_18_read, %window_3_2
  %tmp_9_3_4_i = mul i32 %kernelData_19_read, %window_3_3_1
  %tmp_9_4_i = mul i32 %kernelData_20_read, %window_4_0_read_as_1
  %tmp_9_4_1_i = mul i32 %kernelData_21_read, %window_4_0_load
  %tmp_9_4_2_i = mul i32 %kernelData_22_read, %window_4_1
  %tmp_9_4_3_i = mul i32 %kernelData_23_read, %window_4_2
  %tmp_9_4_4_i = mul i32 %kernelData_24_read, %window_4_3_2
  %tmp5 = add i32 %tmp_9_i, %tmp_9_0_2_i
  %tmp6 = add i32 %tmp5, %tmp_9_0_1_i
  %tmp7 = add i32 %tmp_9_0_4_i, %tmp_9_1_i
  %tmp8 = add i32 %tmp7, %tmp_9_0_3_i
  %tmp9 = add i32 %tmp8, %tmp6
  %tmp2 = add i32 %tmp_9_1_2_i, %tmp_9_1_3_i
  %tmp10 = add i32 %tmp2, %tmp_9_1_1_i
  %tmp11 = add i32 %tmp_9_2_i, %tmp_9_2_1_i
  %tmp12 = add i32 %tmp11, %tmp_9_1_4_i
  %tmp13 = add i32 %tmp12, %tmp10
  %tmp14 = add i32 %tmp13, %tmp9
  %tmp15 = add i32 %tmp_9_2_3_i, %tmp_9_2_4_i
  %tmp16 = add i32 %tmp15, %tmp_9_2_2_i
  %tmp17 = add i32 %tmp_9_3_1_i, %tmp_9_3_2_i
  %tmp18 = add i32 %tmp17, %tmp_9_3_i
  %tmp19 = add i32 %tmp18, %tmp16
  %tmp20 = add i32 %tmp_9_3_4_i, %tmp_9_4_i
  %tmp21 = add i32 %tmp20, %tmp_9_3_3_i
  %tmp22 = add i32 %tmp_9_4_1_i, %tmp_9_4_2_i
  %tmp23 = add i32 %tmp_9_4_3_i, %tmp_9_4_4_i
  %tmp24 = add i32 %tmp23, %tmp22
  %tmp25 = add i32 %tmp24, %tmp21
  %tmp26 = add i32 %tmp25, %tmp19
  %tmp_data_V_2 = add i32 %tmp26, %tmp14
  %tmp_last_V = icmp eq i32 %writeCount, 16
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i32 %tmp_data_V_2, i4 -1, i4 0, i2 0, i1 %tmp_last_V, i5 0, i6 0)
  store i32 %writeCount, i32* %writeCount_1
  br label %._crit_edge

._crit_edge:                                      ; preds = %4, %.preheader83
  %readCount_1_load = load i32* %readCount_1
  %lineBuffer_0_addr = getelementptr [8 x i32]* %lineBuffer_0, i32 0, i32 %x_assign_cast
  %windowRightCol_0 = load i32* %lineBuffer_0_addr, align 4
  %lineBuffer_1_addr_2 = getelementptr [8 x i32]* %lineBuffer_1, i32 0, i32 %x_assign_cast
  %windowRightCol_1 = load i32* %lineBuffer_1_addr_2, align 4
  store i32 %windowRightCol_1, i32* %lineBuffer_0_addr, align 4
  %lineBuffer_2_addr_2 = getelementptr [8 x i32]* %lineBuffer_2, i32 0, i32 %x_assign_cast
  %windowRightCol_2 = load i32* %lineBuffer_2_addr_2, align 4
  store i32 %windowRightCol_2, i32* %lineBuffer_1_addr_2, align 4
  %lineBuffer_3_addr_2 = getelementptr [8 x i32]* %lineBuffer_3, i32 0, i32 %x_assign_cast
  %windowRightCol_3 = load i32* %lineBuffer_3_addr_2, align 4
  store i32 %windowRightCol_3, i32* %lineBuffer_2_addr_2, align 4
  %tmp_27 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %readCount_1_load, i32 6, i32 31)
  %icmp = icmp slt i26 %tmp_27, 1
  store i32 %windowRightCol_1, i32* %window_1_3
  store i32 %windowRightCol_0, i32* %window_0_3
  br i1 %icmp, label %5, label %._crit_edge88

; <label>:5                                       ; preds = %._crit_edge
  %empty_14 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_4 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_14, 0
  %readCount = add nsw i32 %readCount_1_load, 1
  store i32 %readCount, i32* %readCount_1
  store i32 %tmp_data_V_4, i32* %window_4_3
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %5, %._crit_edge
  %window_4_4_53 = load i32* %window_4_3
  store i32 %window_4_4_53, i32* %lineBuffer_3_addr_2, align 4
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_5)
  %x_4 = add i4 %x_assign_mid2, 1
  br label %.preheader82

.preheader83:                                     ; preds = %.preheader82
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond3 = icmp eq i4 %x_assign, -8
  %x_assign_mid2 = select i1 %exitcond3, i4 0, i4 %x_assign
  %y_2 = add i4 %y_assign, 1
  %tmp_1 = call i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4 %y_2, i32 1, i32 3)
  %icmp1 = icmp eq i3 %tmp_1, 0
  %tmp_3 = call i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4 %y_assign, i32 1, i32 3)
  %icmp2 = icmp eq i3 %tmp_3, 0
  %tmp_i_mid2 = select i1 %exitcond3, i1 %icmp1, i1 %icmp2
  %tmp_2_i_mid1 = icmp ugt i4 %y_2, 5
  %tmp_2_i = icmp ugt i4 %y_assign, 5
  %tmp_2_i_mid2 = select i1 %exitcond3, i1 %tmp_2_i_mid1, i1 %tmp_2_i
  %y_assign_mid2 = select i1 %exitcond3, i4 %y_2, i4 %y_assign
  %x_assign_cast = zext i4 %x_assign_mid2 to i32
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_4 = call i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4 %x_assign_mid2, i32 1, i32 3)
  %icmp3 = icmp eq i3 %tmp_4, 0
  %tmp_1_i = icmp ugt i4 %x_assign_mid2, 5
  %tmp3 = or i1 %icmp3, %tmp_i_mid2
  %tmp4 = or i1 %tmp_1_i, %tmp_2_i_mid2
  %p_i = or i1 %tmp4, %tmp3
  br i1 %p_i, label %._crit_edge, label %4

; <label>:6                                       ; preds = %.preheader82
  ret void

branch26:                                         ; preds = %.preheader87
  store i32 %tmp_data_V_1, i32* %lineBuffer_2_addr, align 4
  br label %3

branch27:                                         ; preds = %.preheader87
  store i32 %tmp_data_V_1, i32* %lineBuffer_3_addr, align 4
  br label %3
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
  %empty_17 = load i4* %1
  %empty_18 = load i4* %2
  %empty_19 = load i2* %3
  %empty_20 = load i1* %4
  %empty_21 = load i5* %5
  %empty_22 = load i6* %6
  %mrv_0 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv_0, i4 %empty_17, 1
  %mrv2 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv1, i4 %empty_18, 2
  %mrv3 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv2, i2 %empty_19, 3
  %mrv4 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv3, i1 %empty_20, 4
  %mrv5 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv4, i5 %empty_21, 5
  %mrv6 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv5, i6 %empty_22, 6
  ret { i32, i4, i4, i2, i1, i5, i6 } %mrv6
}

define weak i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone {
entry:
  %empty = call i4 @llvm.part.select.i4(i4 %0, i32 %1, i32 %2)
  %empty_23 = trunc i4 %empty to i3
  ret i3 %empty_23
}

define weak i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_24 = trunc i32 %empty to i26
  ret i26 %empty_24
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
!45 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t [5]*", metadata !"uint32_t*", metadata !"int", metadata !"int"}
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
!67 = metadata !{i32 24, i32 24, i32 2}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 31, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"kernelData", metadata !72, metadata !"unsigned int", i32 0, i32 31}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 23, i32 23, i32 2}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 31, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"kernelData", metadata !78, metadata !"unsigned int", i32 0, i32 31}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 22, i32 22, i32 2}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 31, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"kernelData", metadata !84, metadata !"unsigned int", i32 0, i32 31}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 21, i32 21, i32 2}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 31, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"kernelData", metadata !90, metadata !"unsigned int", i32 0, i32 31}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 20, i32 20, i32 2}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 31, metadata !94}
!94 = metadata !{metadata !95}
!95 = metadata !{metadata !"kernelData", metadata !96, metadata !"unsigned int", i32 0, i32 31}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 19, i32 19, i32 2}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 31, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"kernelData", metadata !102, metadata !"unsigned int", i32 0, i32 31}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 18, i32 18, i32 2}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 31, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"kernelData", metadata !108, metadata !"unsigned int", i32 0, i32 31}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 17, i32 17, i32 2}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 31, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"kernelData", metadata !114, metadata !"unsigned int", i32 0, i32 31}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 16, i32 16, i32 2}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 31, metadata !118}
!118 = metadata !{metadata !119}
!119 = metadata !{metadata !"kernelData", metadata !120, metadata !"unsigned int", i32 0, i32 31}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 15, i32 15, i32 2}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 31, metadata !124}
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !"kernelData", metadata !126, metadata !"unsigned int", i32 0, i32 31}
!126 = metadata !{metadata !127}
!127 = metadata !{i32 14, i32 14, i32 2}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 31, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"kernelData", metadata !132, metadata !"unsigned int", i32 0, i32 31}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 13, i32 13, i32 2}
!134 = metadata !{metadata !135}
!135 = metadata !{i32 0, i32 31, metadata !136}
!136 = metadata !{metadata !137}
!137 = metadata !{metadata !"kernelData", metadata !138, metadata !"unsigned int", i32 0, i32 31}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 12, i32 12, i32 2}
!140 = metadata !{metadata !141}
!141 = metadata !{i32 0, i32 31, metadata !142}
!142 = metadata !{metadata !143}
!143 = metadata !{metadata !"kernelData", metadata !144, metadata !"unsigned int", i32 0, i32 31}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 11, i32 11, i32 2}
!146 = metadata !{metadata !147}
!147 = metadata !{i32 0, i32 31, metadata !148}
!148 = metadata !{metadata !149}
!149 = metadata !{metadata !"kernelData", metadata !150, metadata !"unsigned int", i32 0, i32 31}
!150 = metadata !{metadata !151}
!151 = metadata !{i32 10, i32 10, i32 2}
!152 = metadata !{metadata !153}
!153 = metadata !{i32 0, i32 31, metadata !154}
!154 = metadata !{metadata !155}
!155 = metadata !{metadata !"kernelData", metadata !156, metadata !"unsigned int", i32 0, i32 31}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 9, i32 9, i32 2}
!158 = metadata !{metadata !159}
!159 = metadata !{i32 0, i32 31, metadata !160}
!160 = metadata !{metadata !161}
!161 = metadata !{metadata !"kernelData", metadata !162, metadata !"unsigned int", i32 0, i32 31}
!162 = metadata !{metadata !163}
!163 = metadata !{i32 8, i32 8, i32 2}
!164 = metadata !{metadata !165}
!165 = metadata !{i32 0, i32 31, metadata !166}
!166 = metadata !{metadata !167}
!167 = metadata !{metadata !"kernelData", metadata !168, metadata !"unsigned int", i32 0, i32 31}
!168 = metadata !{metadata !169}
!169 = metadata !{i32 7, i32 7, i32 2}
!170 = metadata !{metadata !171}
!171 = metadata !{i32 0, i32 31, metadata !172}
!172 = metadata !{metadata !173}
!173 = metadata !{metadata !"kernelData", metadata !174, metadata !"unsigned int", i32 0, i32 31}
!174 = metadata !{metadata !175}
!175 = metadata !{i32 6, i32 6, i32 2}
!176 = metadata !{metadata !177}
!177 = metadata !{i32 0, i32 31, metadata !178}
!178 = metadata !{metadata !179}
!179 = metadata !{metadata !"kernelData", metadata !180, metadata !"unsigned int", i32 0, i32 31}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 5, i32 5, i32 2}
!182 = metadata !{metadata !183}
!183 = metadata !{i32 0, i32 31, metadata !184}
!184 = metadata !{metadata !185}
!185 = metadata !{metadata !"kernelData", metadata !186, metadata !"unsigned int", i32 0, i32 31}
!186 = metadata !{metadata !187}
!187 = metadata !{i32 4, i32 4, i32 2}
!188 = metadata !{metadata !189}
!189 = metadata !{i32 0, i32 31, metadata !190}
!190 = metadata !{metadata !191}
!191 = metadata !{metadata !"kernelData", metadata !192, metadata !"unsigned int", i32 0, i32 31}
!192 = metadata !{metadata !193}
!193 = metadata !{i32 3, i32 3, i32 2}
!194 = metadata !{metadata !195}
!195 = metadata !{i32 0, i32 31, metadata !196}
!196 = metadata !{metadata !197}
!197 = metadata !{metadata !"kernelData", metadata !198, metadata !"unsigned int", i32 0, i32 31}
!198 = metadata !{metadata !199}
!199 = metadata !{i32 2, i32 2, i32 2}
!200 = metadata !{metadata !201}
!201 = metadata !{i32 0, i32 31, metadata !202}
!202 = metadata !{metadata !203}
!203 = metadata !{metadata !"kernelData", metadata !204, metadata !"unsigned int", i32 0, i32 31}
!204 = metadata !{metadata !205}
!205 = metadata !{i32 1, i32 1, i32 2}
!206 = metadata !{metadata !207}
!207 = metadata !{i32 0, i32 31, metadata !208}
!208 = metadata !{metadata !209}
!209 = metadata !{metadata !"kernelData", metadata !210, metadata !"unsigned int", i32 0, i32 31}
!210 = metadata !{metadata !211}
!211 = metadata !{i32 0, i32 0, i32 2}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 0, i32 31, metadata !214}
!214 = metadata !{metadata !215}
!215 = metadata !{metadata !"inStream.V.data.V", metadata !60, metadata !"uint32", i32 0, i32 31}
!216 = metadata !{metadata !217}
!217 = metadata !{i32 0, i32 3, metadata !218}
!218 = metadata !{metadata !219}
!219 = metadata !{metadata !"inStream.V.keep.V", metadata !60, metadata !"uint4", i32 0, i32 3}
!220 = metadata !{metadata !221}
!221 = metadata !{i32 0, i32 3, metadata !222}
!222 = metadata !{metadata !223}
!223 = metadata !{metadata !"inStream.V.strb.V", metadata !60, metadata !"uint4", i32 0, i32 3}
!224 = metadata !{metadata !225}
!225 = metadata !{i32 0, i32 1, metadata !226}
!226 = metadata !{metadata !227}
!227 = metadata !{metadata !"inStream.V.user.V", metadata !60, metadata !"uint2", i32 0, i32 1}
!228 = metadata !{metadata !229}
!229 = metadata !{i32 0, i32 0, metadata !230}
!230 = metadata !{metadata !231}
!231 = metadata !{metadata !"inStream.V.last.V", metadata !60, metadata !"uint1", i32 0, i32 0}
!232 = metadata !{metadata !233}
!233 = metadata !{i32 0, i32 4, metadata !234}
!234 = metadata !{metadata !235}
!235 = metadata !{metadata !"inStream.V.id.V", metadata !60, metadata !"uint5", i32 0, i32 4}
!236 = metadata !{metadata !237}
!237 = metadata !{i32 0, i32 5, metadata !238}
!238 = metadata !{metadata !239}
!239 = metadata !{metadata !"inStream.V.dest.V", metadata !60, metadata !"uint6", i32 0, i32 5}
!240 = metadata !{metadata !241}
!241 = metadata !{i32 0, i32 31, metadata !242}
!242 = metadata !{metadata !243}
!243 = metadata !{metadata !"outStream.V.data.V", metadata !60, metadata !"uint32", i32 0, i32 31}
!244 = metadata !{metadata !245}
!245 = metadata !{i32 0, i32 3, metadata !246}
!246 = metadata !{metadata !247}
!247 = metadata !{metadata !"outStream.V.keep.V", metadata !60, metadata !"uint4", i32 0, i32 3}
!248 = metadata !{metadata !249}
!249 = metadata !{i32 0, i32 3, metadata !250}
!250 = metadata !{metadata !251}
!251 = metadata !{metadata !"outStream.V.strb.V", metadata !60, metadata !"uint4", i32 0, i32 3}
!252 = metadata !{metadata !253}
!253 = metadata !{i32 0, i32 1, metadata !254}
!254 = metadata !{metadata !255}
!255 = metadata !{metadata !"outStream.V.user.V", metadata !60, metadata !"uint2", i32 0, i32 1}
!256 = metadata !{metadata !257}
!257 = metadata !{i32 0, i32 0, metadata !258}
!258 = metadata !{metadata !259}
!259 = metadata !{metadata !"outStream.V.last.V", metadata !60, metadata !"uint1", i32 0, i32 0}
!260 = metadata !{metadata !261}
!261 = metadata !{i32 0, i32 4, metadata !262}
!262 = metadata !{metadata !263}
!263 = metadata !{metadata !"outStream.V.id.V", metadata !60, metadata !"uint5", i32 0, i32 4}
!264 = metadata !{metadata !265}
!265 = metadata !{i32 0, i32 5, metadata !266}
!266 = metadata !{metadata !267}
!267 = metadata !{metadata !"outStream.V.dest.V", metadata !60, metadata !"uint6", i32 0, i32 5}
!268 = metadata !{metadata !269}
!269 = metadata !{i32 0, i32 31, metadata !270}
!270 = metadata !{metadata !271}
!271 = metadata !{metadata !"ctrl", metadata !272, metadata !"unsigned int", i32 0, i32 31}
!272 = metadata !{metadata !273}
!273 = metadata !{i32 0, i32 0, i32 0}
