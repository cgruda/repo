; ModuleID = 'D:/School/Project/new_repo/HLS/cnn_pool_d4x4_p2x2/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@cnn_pool_d4x4_p2x2_s = internal unnamed_addr constant [19 x i8] c"cnn_pool_d4x4_p2x2\00"
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @cnn_pool_d4x4_p2x2(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i32 %ctrl) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %inStream_V_data_V), !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_keep_V), !map !69
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_strb_V), !map !73
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inStream_V_user_V), !map !77
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_last_V), !map !81
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %inStream_V_id_V), !map !85
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %inStream_V_dest_V), !map !89
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %outStream_V_data_V), !map !93
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_keep_V), !map !97
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_strb_V), !map !101
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %outStream_V_user_V), !map !105
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_last_V), !map !109
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %outStream_V_id_V), !map !113
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %outStream_V_dest_V), !map !117
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ctrl), !map !121
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @cnn_pool_d4x4_p2x2_s) nounwind
  %ctrl_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ctrl)
  call void (...)* @_ssdm_op_SpecInterface(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ctrl, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
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
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_5 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_2 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_5, 0
  %tmp_7 = trunc i3 %x to i2
  %cond = icmp eq i2 %tmp_7, -2
  %lineBuffer_0_3_1 = select i1 %cond, i32 %lineBuffer_0_3, i32 %tmp_data_V_2
  %lineBuffer_0_3_4 = select i1 %cond, i32 %tmp_data_V_2, i32 %lineBuffer_0_2
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_1)
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
  br label %.preheader84

_ifconv5:                                         ; preds = %.preheader86.0
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_8 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_3 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_8, 0
  %tmp_9 = trunc i3 %x1 to i2
  %sel_tmp = icmp eq i2 %tmp_9, -2
  %sel_tmp7 = icmp eq i2 %tmp_9, 1
  %sel_tmp9 = icmp eq i2 %tmp_9, 0
  %or_cond = or i1 %sel_tmp9, %sel_tmp7
  %newSel = select i1 %sel_tmp, i32 %lineBuffer_1_3, i32 %tmp_data_V_3
  %lineBuffer_1_3_2 = select i1 %or_cond, i32 %lineBuffer_1_3, i32 %newSel
  %newSel2 = select i1 %sel_tmp, i32 %tmp_data_V_3, i32 %lineBuffer_1_2
  %lineBuffer_1_3_4 = select i1 %or_cond, i32 %lineBuffer_1_2, i32 %newSel2
  %lineBuffer_1_3_6 = select i1 %sel_tmp7, i32 %tmp_data_V_3, i32 %lineBuffer_1_3_5
  %lineBuffer_1_3_7 = select i1 %sel_tmp9, i32 %lineBuffer_1_3_5, i32 %lineBuffer_1_3_6
  %lineBuffer_1_3_9 = select i1 %sel_tmp9, i32 %tmp_data_V_3, i32 %lineBuffer_1_3_8
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_2)
  br label %.preheader86.0

.preheader83.preheader:                           ; preds = %.preheader84
  %window_0_0_read_as = alloca i32
  %window_0_0 = alloca i32
  %window_0_1 = alloca i32
  %window_1_0_read_as = alloca i32
  %lineBuffer_0_3_5 = alloca i32
  %lineBuffer_0_3_8 = alloca i32
  %writeCount_1 = alloca i32
  %readCount_1 = alloca i32
  %window_2_2_2 = alloca i32
  %tmp_10 = trunc i32 %ctrl_read to i1
  store i32 6, i32* %readCount_1
  store i32 0, i32* %writeCount_1
  br label %.preheader82

.preheader84:                                     ; preds = %.preheader84.preheader, %.preheader85
  %indvar_flatten = phi i3 [ %indvar_flatten_next, %.preheader85 ], [ 0, %.preheader84.preheader ]
  %y3 = phi i2 [ %tmp_3_mid2_v, %.preheader85 ], [ 1, %.preheader84.preheader ]
  %window_1_2_1 = phi i32 [ %window_2_2_3, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %window_1_1_1 = phi i32 [ %window_2_2_4, %.preheader85 ], [ undef, %.preheader84.preheader ]
  %x4 = phi i2 [ %x_3, %.preheader85 ], [ 1, %.preheader84.preheader ]
  %exitcond_flatten = icmp eq i3 %indvar_flatten, -4
  %indvar_flatten_next = add i3 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader83.preheader, label %.preheader85

.preheader85:                                     ; preds = %.preheader84
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %exitcond = icmp eq i2 %x4, -1
  %x4_mid2 = select i1 %exitcond, i2 1, i2 %x4
  %y9 = add i2 1, %y3
  %tmp_3_mid2_v = select i1 %exitcond, i2 %y9, i2 %y3
  %tmp_11 = trunc i2 %tmp_3_mid2_v to i1
  %cond1_mid1 = icmp eq i2 %y3, 0
  %cond1 = icmp eq i2 %y3, 1
  %cond1_mid2 = select i1 %exitcond, i1 %cond1_mid1, i1 %cond1
  %sel_tmp13_mid2 = xor i1 %tmp_11, true
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %sel_tmp5 = icmp ne i2 %x4_mid2, 1
  %sel_tmp6 = icmp ne i2 %x4_mid2, -2
  %sel_tmp8 = icmp ne i2 %x4_mid2, -1
  %tmp = and i1 %tmp_11, %sel_tmp5
  %tmp1 = and i1 %sel_tmp6, %sel_tmp8
  %sel_tmp1 = and i1 %tmp1, %tmp
  %sel_tmp2 = select i1 %sel_tmp1, i32 %lineBuffer_0_3, i32 %lineBuffer_1_3
  %sel_tmp3 = icmp eq i2 %x4_mid2, -2
  %sel_tmp4 = and i1 %sel_tmp3, %sel_tmp13_mid2
  %sel_tmp10 = select i1 %sel_tmp4, i32 %lineBuffer_1_3_5, i32 %sel_tmp2
  %sel_tmp11 = icmp eq i2 %x4_mid2, 1
  %sel_tmp12 = and i1 %sel_tmp11, %sel_tmp13_mid2
  %window_2_2_7 = select i1 %sel_tmp12, i32 %lineBuffer_1_3_8, i32 %sel_tmp10
  %window_2_2 = select i1 %sel_tmp11, i32 %window_1_2_1, i32 %sel_tmp10
  %window_2_2_1 = select i1 %sel_tmp11, i32 %window_2_2_7, i32 %window_1_1_1
  %window_2_2_3 = select i1 %cond1_mid2, i32 %window_2_2, i32 %window_1_2_1
  %window_2_2_4 = select i1 %cond1_mid2, i32 %window_2_2_1, i32 %window_1_1_1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_4)
  %x_3 = add i2 1, %x4_mid2
  br label %.preheader84

.preheader82:                                     ; preds = %.preheader83.preheader, %._crit_edge88_ifconv
  %indvar_flatten6 = phi i5 [ 0, %.preheader83.preheader ], [ %indvar_flatten_next7, %._crit_edge88_ifconv ]
  %y_assign = phi i3 [ 0, %.preheader83.preheader ], [ %y_assign_cast_mid2_v, %._crit_edge88_ifconv ]
  %lineBuffer_1_3_3 = phi i32 [ %lineBuffer_1_3, %.preheader83.preheader ], [ %lineBuffer_1_3_10, %._crit_edge88_ifconv ]
  %lineBuffer_1_2_3 = phi i32 [ %lineBuffer_1_2, %.preheader83.preheader ], [ %lineBuffer_1_3_11, %._crit_edge88_ifconv ]
  %lineBuffer_1_3_17 = phi i32 [ %lineBuffer_1_3_5, %.preheader83.preheader ], [ %lineBuffer_1_3_19, %._crit_edge88_ifconv ]
  %lineBuffer_1_3_1 = phi i32 [ %lineBuffer_1_3_8, %.preheader83.preheader ], [ %lineBuffer_1_3_20, %._crit_edge88_ifconv ]
  %lineBuffer_0_3_3 = phi i32 [ %lineBuffer_0_3, %.preheader83.preheader ], [ %lineBuffer_0_3_6, %._crit_edge88_ifconv ]
  %lineBuffer_0_2_s = phi i32 [ %lineBuffer_0_2, %.preheader83.preheader ], [ %lineBuffer_0_3_7, %._crit_edge88_ifconv ]
  %window_1_1 = phi i32 [ %window_1_2_1, %.preheader83.preheader ], [ %lineBuffer_0_3_15, %._crit_edge88_ifconv ]
  %window_1_0 = phi i32 [ %window_1_1_1, %.preheader83.preheader ], [ %window_1_1, %._crit_edge88_ifconv ]
  %x_assign = phi i3 [ 0, %.preheader83.preheader ], [ %x_4, %._crit_edge88_ifconv ]
  %window_0_0_read_as_1 = load i32* %window_0_0_read_as
  %window_0_0_load = load i32* %window_0_0
  %window_0_1_load = load i32* %window_0_1
  %window_1_0_read_as_1 = load i32* %window_1_0_read_as
  %exitcond_flatten8 = icmp eq i5 %indvar_flatten6, -16
  %indvar_flatten_next7 = add i5 %indvar_flatten6, 1
  store i32 %window_1_0, i32* %window_1_0_read_as
  store i32 %window_0_1_load, i32* %window_0_0
  store i32 %window_0_0_load, i32* %window_0_0_read_as
  br i1 %exitcond_flatten8, label %3, label %.preheader83

_ifconv87:                                        ; preds = %.preheader83
  %writeCount_1_load = load i32* %writeCount_1
  %writeCount = add nsw i32 %writeCount_1_load, 1
  %tmp_4_0_1_i = icmp ugt i32 %window_0_0_load, %window_0_0_read_as_1
  %maxValue_0_1_maxVal = select i1 %tmp_4_0_1_i, i32 %window_0_0_load, i32 %window_0_0_read_as_1
  %tmp_4_1_i = icmp ult i32 %maxValue_0_1_maxVal, %window_1_0_read_as_1
  %maxValue_17_0_maxVal = select i1 %tmp_4_1_i, i32 %window_1_0_read_as_1, i32 %maxValue_0_1_maxVal
  %tmp_4_1_1_i = icmp ult i32 %maxValue_17_0_maxVal, %window_1_0
  %sel_SEBB_i = select i1 %tmp_4_1_1_i, i32 %window_1_0, i32 %maxValue_17_0_maxVal
  %tmp6 = add i32 %window_0_0_read_as_1, %window_1_0_read_as_1
  %tmp7 = add i32 %window_0_0_load, %window_1_0
  %a_assign = add i32 %tmp7, %tmp6
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_assign, i32 31)
  %tmp_1_i_i = sub i32 0, %a_assign
  %tmp_3 = call i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32 %tmp_1_i_i, i32 2, i32 21)
  %tmp_6 = call i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32 %a_assign, i32 2, i32 21)
  %result = select i1 %tmp_14, i20 %tmp_3, i20 %tmp_6
  %result_cast = zext i20 %result to i21
  %tmp_4_i_i = sub i21 0, %result_cast
  %result_1 = select i1 %tmp_14, i21 %tmp_4_i_i, i21 %result_cast
  %result_1_cast = sext i21 %result_1 to i32
  %tmp_data_V = select i1 %tmp_10, i32 %result_1_cast, i32 %sel_SEBB_i
  %tmp_last_V = icmp eq i32 %writeCount, 4
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i32 %tmp_data_V, i4 -1, i4 0, i2 0, i1 %tmp_last_V, i5 0, i6 0)
  store i32 %writeCount, i32* %writeCount_1
  br label %._crit_edge_ifconv

._crit_edge_ifconv:                               ; preds = %_ifconv87, %.preheader83
  %lineBuffer_0_3_5_l = load i32* %lineBuffer_0_3_5
  %lineBuffer_0_3_8_l = load i32* %lineBuffer_0_3_8
  %readCount_1_load = load i32* %readCount_1
  %tmp_15 = trunc i3 %x_assign_mid2 to i2
  %windowRightCol_0 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %lineBuffer_0_3_5_l, i32 %lineBuffer_0_3_8_l, i32 %lineBuffer_0_2_s, i32 %lineBuffer_0_3_3, i2 %tmp_15)
  %lineBuffer_0_3_15 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %lineBuffer_1_3_1, i32 %lineBuffer_1_3_17, i32 %lineBuffer_1_2_3, i32 %lineBuffer_1_3_3, i2 %tmp_15)
  %sel_tmp13 = icmp eq i2 %tmp_15, -2
  %sel_tmp14 = icmp eq i2 %tmp_15, 1
  %sel_tmp15 = icmp eq i2 %tmp_15, 0
  %or_cond2 = or i1 %sel_tmp15, %sel_tmp14
  %newSel4 = select i1 %sel_tmp13, i32 %lineBuffer_0_3_3, i32 %lineBuffer_0_3_15
  %lineBuffer_0_3_6 = select i1 %or_cond2, i32 %lineBuffer_0_3_3, i32 %newSel4
  %newSel6 = select i1 %sel_tmp13, i32 %lineBuffer_0_3_15, i32 %lineBuffer_0_2_s
  %lineBuffer_0_3_7 = select i1 %or_cond2, i32 %lineBuffer_0_2_s, i32 %newSel6
  %lineBuffer_0_3_9 = select i1 %sel_tmp14, i32 %lineBuffer_0_3_15, i32 %lineBuffer_0_3_8_l
  %lineBuffer_0_3_13 = select i1 %sel_tmp15, i32 %lineBuffer_0_3_8_l, i32 %lineBuffer_0_3_9
  %lineBuffer_0_3_14 = select i1 %sel_tmp15, i32 %lineBuffer_0_3_15, i32 %lineBuffer_0_3_5_l
  %tmp_16 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %readCount_1_load, i32 4, i32 31)
  %icmp = icmp slt i28 %tmp_16, 1
  store i32 %lineBuffer_0_3_13, i32* %lineBuffer_0_3_8
  store i32 %lineBuffer_0_3_14, i32* %lineBuffer_0_3_5
  store i32 %windowRightCol_0, i32* %window_0_1
  br i1 %icmp, label %2, label %._crit_edge88_ifconv

; <label>:2                                       ; preds = %._crit_edge_ifconv
  %empty_12 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_4 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_12, 0
  %readCount = add nsw i32 %readCount_1_load, 1
  store i32 %tmp_data_V_4, i32* %window_2_2_2
  store i32 %readCount, i32* %readCount_1
  br label %._crit_edge88_ifconv

._crit_edge88_ifconv:                             ; preds = %2, %._crit_edge_ifconv
  %lineBuffer_1_3_21 = load i32* %window_2_2_2
  %newSel8 = select i1 %sel_tmp13, i32 %lineBuffer_1_3_3, i32 %lineBuffer_1_3_21
  %lineBuffer_1_3_10 = select i1 %or_cond2, i32 %lineBuffer_1_3_3, i32 %newSel8
  %newSel1 = select i1 %sel_tmp13, i32 %lineBuffer_1_3_21, i32 %lineBuffer_1_2_3
  %lineBuffer_1_3_11 = select i1 %or_cond2, i32 %lineBuffer_1_2_3, i32 %newSel1
  %lineBuffer_1_3_18 = select i1 %sel_tmp14, i32 %lineBuffer_1_3_21, i32 %lineBuffer_1_3_17
  %lineBuffer_1_3_19 = select i1 %sel_tmp15, i32 %lineBuffer_1_3_17, i32 %lineBuffer_1_3_18
  %lineBuffer_1_3_20 = select i1 %sel_tmp15, i32 %lineBuffer_1_3_21, i32 %lineBuffer_1_3_1
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_8)
  %x_4 = add i3 %x_assign_mid2, 1
  br label %.preheader82

.preheader83:                                     ; preds = %.preheader82
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %exitcond2 = icmp eq i3 %x_assign, -4
  %x_assign_mid2 = select i1 %exitcond2, i3 0, i3 %x_assign
  %y_s = add i3 1, %y_assign
  %y_assign_cast_mid2_v = select i1 %exitcond2, i3 %y_s, i3 %y_assign
  %tmp_12 = trunc i3 %y_assign_cast_mid2_v to i1
  %tmp_13 = trunc i3 %x_assign_mid2 to i1
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_5 = and i1 %tmp_12, %tmp_13
  br i1 %tmp_5, label %_ifconv87, label %._crit_edge_ifconv

; <label>:3                                       ; preds = %.preheader82
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

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32*, i4*, i4*, i2*, i1*, i5*, i6*) {
entry:
  %empty = load i32* %0
  %empty_15 = load i4* %1
  %empty_16 = load i4* %2
  %empty_17 = load i2* %3
  %empty_18 = load i1* %4
  %empty_19 = load i5* %5
  %empty_20 = load i6* %6
  %mrv_0 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv_0, i4 %empty_15, 1
  %mrv2 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv1, i4 %empty_16, 2
  %mrv3 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv2, i2 %empty_17, 3
  %mrv4 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv3, i1 %empty_18, 4
  %mrv5 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv4, i5 %empty_19, 5
  %mrv6 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv5, i6 %empty_20, 6
  ret { i32, i4, i4, i2, i1, i5, i6 } %mrv6
}

define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_21 = trunc i32 %empty to i28
  ret i28 %empty_21
}

define weak i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_22 = trunc i32 %empty to i20
  ret i20 %empty_22
}

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

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

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_23 = and i32 %0, %empty
  %empty_24 = icmp ne i32 %empty_23, 0
  ret i1 %empty_24
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !25, !25, !16, !16, !27, !25, !25, !16, !16, !29, !25, !25, !16, !16, !31, !25, !25, !16, !16, !33, !35, !35, !16, !16, !37, !16, !16, !39, !41, !43, !49, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !55}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!58}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<axiu32_t> &", metadata !"hls::stream<axiu32_t> &", metadata !"uint32_t"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inStream", metadata !"outStream", metadata !"ctrl"}
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
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"ufixp32_t [3]*", metadata !"int", metadata !"int", metadata !"int"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"window", metadata !"y", metadata !"x", metadata !"op"}
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
!68 = metadata !{metadata !"inStream.V.data.V", metadata !63, metadata !"uint32", i32 0, i32 31}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 3, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"inStream.V.keep.V", metadata !63, metadata !"uint4", i32 0, i32 3}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 3, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"inStream.V.strb.V", metadata !63, metadata !"uint4", i32 0, i32 3}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 1, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"inStream.V.user.V", metadata !63, metadata !"uint2", i32 0, i32 1}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 0, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"inStream.V.last.V", metadata !63, metadata !"uint1", i32 0, i32 0}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 4, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"inStream.V.id.V", metadata !63, metadata !"uint5", i32 0, i32 4}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 5, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"inStream.V.dest.V", metadata !63, metadata !"uint6", i32 0, i32 5}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 31, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"outStream.V.data.V", metadata !63, metadata !"uint32", i32 0, i32 31}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 3, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"outStream.V.keep.V", metadata !63, metadata !"uint4", i32 0, i32 3}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 3, metadata !103}
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !"outStream.V.strb.V", metadata !63, metadata !"uint4", i32 0, i32 3}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 0, i32 1, metadata !107}
!107 = metadata !{metadata !108}
!108 = metadata !{metadata !"outStream.V.user.V", metadata !63, metadata !"uint2", i32 0, i32 1}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 0, i32 0, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"outStream.V.last.V", metadata !63, metadata !"uint1", i32 0, i32 0}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 4, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"outStream.V.id.V", metadata !63, metadata !"uint5", i32 0, i32 4}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 5, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"outStream.V.dest.V", metadata !63, metadata !"uint6", i32 0, i32 5}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 31, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"ctrl", metadata !125, metadata !"unsigned int", i32 0, i32 31}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 0, i32 0}