; ModuleID = 'D:/School/Project/new_repo/HLS/sliding_window_2/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@my_filter_buffer_str = internal unnamed_addr constant [17 x i8] c"my_filter_buffer\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str5 = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@p_str4 = private unnamed_addr constant [11 x i8] c"KERNEL_BUS\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str10 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

define void @my_filter_buffer(i32* %in_stream_V_data_V, i4* %in_stream_V_keep_V, i4* %in_stream_V_strb_V, i2* %in_stream_V_user_V, i1* %in_stream_V_last_V, i5* %in_stream_V_id_V, i6* %in_stream_V_dest_V, i32* %out_stream_V_data_V, i4* %out_stream_V_keep_V, i4* %out_stream_V_strb_V, i2* %out_stream_V_user_V, i1* %out_stream_V_last_V, i5* %out_stream_V_id_V, i6* %out_stream_V_dest_V, i8* %kernel_0, i8* %kernel_1, i8* %kernel_2, i8* %kernel_3, i8* %kernel_4, i8* %kernel_5, i8* %kernel_6, i8* %kernel_7, i8* %kernel_8, i8* %bias_0, i8* %bias_1, i8* %bias_2, i8* %bias_3, i8* %bias_4, i8* %bias_5, i8* %bias_6, i8* %bias_7, i8* %bias_8, i8 zeroext %ctrl) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %bias_8), !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %bias_7), !map !68
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %bias_6), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %bias_5), !map !80
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %bias_4), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %bias_3), !map !92
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %bias_2), !map !98
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %bias_1), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %bias_0), !map !110
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_8), !map !116
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_7), !map !120
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_6), !map !124
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_5), !map !128
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_4), !map !132
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_3), !map !136
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_2), !map !140
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_1), !map !144
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_0), !map !148
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_stream_V_data_V), !map !152
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_stream_V_keep_V), !map !156
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_stream_V_strb_V), !map !160
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %in_stream_V_user_V), !map !164
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_stream_V_last_V), !map !168
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %in_stream_V_id_V), !map !172
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %in_stream_V_dest_V), !map !176
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_stream_V_data_V), !map !180
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_stream_V_keep_V), !map !184
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_stream_V_strb_V), !map !188
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %out_stream_V_user_V), !map !192
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_stream_V_last_V), !map !196
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %out_stream_V_id_V), !map !200
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %out_stream_V_dest_V), !map !204
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %ctrl), !map !208
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @my_filter_buffer_str) nounwind
  %ctrl_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %ctrl)
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_stream_V_data_V, i4* %out_stream_V_keep_V, i4* %out_stream_V_strb_V, i2* %out_stream_V_user_V, i1* %out_stream_V_last_V, i5* %out_stream_V_id_V, i6* %out_stream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V_data_V, i4* %in_stream_V_keep_V, i4* %in_stream_V_strb_V, i2* %in_stream_V_user_V, i1* %in_stream_V_last_V, i5* %in_stream_V_id_V, i6* %in_stream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %kernel_0, i8* %kernel_1, i8* %kernel_2, i8* %kernel_3, i8* %kernel_4, i8* %kernel_5, i8* %kernel_6, i8* %kernel_7, i8* %kernel_8, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [11 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %bias_0, i8* %bias_1, i8* %bias_2, i8* %bias_3, i8* %bias_4, i8* %bias_5, i8* %bias_6, i8* %bias_7, i8* %bias_8, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [11 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %ctrl, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str5, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str5, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %line_buf_0_3 = phi i32 [ undef, %0 ], [ %line_buf_0_3_1, %_ifconv ]
  %line_buf_0_2 = phi i32 [ undef, %0 ], [ %line_buf_0_3_4, %_ifconv ]
  %x = phi i3 [ 2, %0 ], [ %x_1, %_ifconv ]
  %exitcond1 = icmp eq i3 %x, -4
  br i1 %exitcond1, label %.preheader83.0.preheader, label %_ifconv

.preheader83.0.preheader:                         ; preds = %1
  br label %.preheader83.0

_ifconv:                                          ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_5 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %in_stream_V_data_V, i4* %in_stream_V_keep_V, i4* %in_stream_V_strb_V, i2* %in_stream_V_user_V, i1* %in_stream_V_last_V, i5* %in_stream_V_id_V, i6* %in_stream_V_dest_V)
  %tmp_data_V_2 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_5, 0
  %tmp_2 = trunc i3 %x to i2
  %cond = icmp eq i2 %tmp_2, -2
  %line_buf_0_3_1 = select i1 %cond, i32 %line_buf_0_3, i32 %tmp_data_V_2
  %line_buf_0_3_4 = select i1 %cond, i32 %tmp_data_V_2, i32 %line_buf_0_2
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp)
  %x_1 = add i3 1, %x
  br label %1

.preheader83.0:                                   ; preds = %.preheader83.0.preheader, %_ifconv4
  %line_buf_1_3 = phi i32 [ %line_buf_1_3_2, %_ifconv4 ], [ undef, %.preheader83.0.preheader ]
  %line_buf_1_2 = phi i32 [ %line_buf_1_3_4, %_ifconv4 ], [ undef, %.preheader83.0.preheader ]
  %line_buf_1_3_5 = phi i32 [ %line_buf_1_3_7, %_ifconv4 ], [ undef, %.preheader83.0.preheader ]
  %line_buf_1_3_8 = phi i32 [ %line_buf_1_3_9, %_ifconv4 ], [ undef, %.preheader83.0.preheader ]
  %x1 = phi i3 [ %x_2, %_ifconv4 ], [ 0, %.preheader83.0.preheader ]
  %exitcond4 = icmp eq i3 %x1, -4
  %x_2 = add i3 %x1, 1
  br i1 %exitcond4, label %.preheader81.preheader, label %_ifconv4

.preheader81.preheader:                           ; preds = %.preheader83.0
  br label %.preheader81

_ifconv4:                                         ; preds = %.preheader83.0
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_8 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %in_stream_V_data_V, i4* %in_stream_V_keep_V, i4* %in_stream_V_strb_V, i2* %in_stream_V_user_V, i1* %in_stream_V_last_V, i5* %in_stream_V_id_V, i6* %in_stream_V_dest_V)
  %tmp_data_V_3 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_8, 0
  %tmp_5 = trunc i3 %x1 to i2
  %sel_tmp = icmp eq i2 %tmp_5, -2
  %sel_tmp6 = icmp eq i2 %tmp_5, 1
  %sel_tmp8 = icmp eq i2 %tmp_5, 0
  %or_cond = or i1 %sel_tmp8, %sel_tmp6
  %newSel = select i1 %sel_tmp, i32 %line_buf_1_3, i32 %tmp_data_V_3
  %line_buf_1_3_2 = select i1 %or_cond, i32 %line_buf_1_3, i32 %newSel
  %newSel2 = select i1 %sel_tmp, i32 %tmp_data_V_3, i32 %line_buf_1_2
  %line_buf_1_3_4 = select i1 %or_cond, i32 %line_buf_1_2, i32 %newSel2
  %line_buf_1_3_6 = select i1 %sel_tmp6, i32 %tmp_data_V_3, i32 %line_buf_1_3_5
  %line_buf_1_3_7 = select i1 %sel_tmp8, i32 %line_buf_1_3_5, i32 %line_buf_1_3_6
  %line_buf_1_3_9 = select i1 %sel_tmp8, i32 %tmp_data_V_3, i32 %line_buf_1_3_8
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_1)
  br label %.preheader83.0

.preheader80.preheader:                           ; preds = %.preheader81
  %window_0_0_read_as = alloca i32
  %window_0_0 = alloca i32
  %window_0_1 = alloca i32
  %window_1_0_read_as = alloca i32
  %window_2_0_read_as = alloca i32
  %line_buf_0_3_5 = alloca i32
  %line_buf_0_3_8 = alloca i32
  %read_count_1 = alloca i32
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %ctrl_read, i32 2)
  store i32 6, i32* %read_count_1
  br label %.preheader79

.preheader81:                                     ; preds = %.preheader81.preheader, %.preheader82
  %indvar_flatten = phi i3 [ %indvar_flatten_next, %.preheader82 ], [ 0, %.preheader81.preheader ]
  %y2 = phi i2 [ %tmp_2_mid2_v, %.preheader82 ], [ 1, %.preheader81.preheader ]
  %window_2_2_1 = phi i32 [ %window_2_2_5, %.preheader82 ], [ undef, %.preheader81.preheader ]
  %window_2_1_1 = phi i32 [ %window_2_2_6, %.preheader82 ], [ undef, %.preheader81.preheader ]
  %window_1_2_1 = phi i32 [ %window_2_2_7, %.preheader82 ], [ undef, %.preheader81.preheader ]
  %window_1_1_1 = phi i32 [ %window_2_2_8, %.preheader82 ], [ undef, %.preheader81.preheader ]
  %x3 = phi i2 [ %x_3, %.preheader82 ], [ 1, %.preheader81.preheader ]
  %exitcond_flatten = icmp eq i3 %indvar_flatten, -4
  %indvar_flatten_next = add i3 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader80.preheader, label %.preheader82

.preheader82:                                     ; preds = %.preheader81
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %exitcond = icmp eq i2 %x3, -1
  %x3_mid2 = select i1 %exitcond, i2 1, i2 %x3
  %y9 = add i2 1, %y2
  %tmp_2_mid2_v = select i1 %exitcond, i2 %y9, i2 %y2
  %tmp_7 = trunc i2 %tmp_2_mid2_v to i1
  %cond3_mid1 = icmp eq i2 %y2, 0
  %cond2 = icmp eq i2 %y2, 1
  %cond3_mid2 = select i1 %exitcond, i1 %cond3_mid1, i1 %cond2
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %x_3 = add i2 1, %x3_mid2
  %cond1 = icmp eq i2 %x3_mid2, 1
  %line_buf_load13_phi = select i1 %cond1, i32 %line_buf_0_2, i32 %line_buf_0_3
  %line_buf_load14_phi = select i1 %cond1, i32 %line_buf_1_2, i32 %line_buf_1_3
  %window_1_1_2 = select i1 %tmp_7, i32 %line_buf_load13_phi, i32 %line_buf_load14_phi
  %window_2_2 = select i1 %cond1, i32 %window_1_2_1, i32 %window_1_1_2
  %window_2_2_1_11 = select i1 %cond1, i32 %window_1_1_2, i32 %window_1_1_1
  %window_2_2_3 = select i1 %cond1, i32 %window_2_2_1, i32 %window_1_1_2
  %window_2_2_4 = select i1 %cond1, i32 %window_1_1_2, i32 %window_2_1_1
  %window_2_2_5 = select i1 %cond3_mid2, i32 %window_2_2_1, i32 %window_2_2_3
  %window_2_2_6 = select i1 %cond3_mid2, i32 %window_2_1_1, i32 %window_2_2_4
  %window_2_2_7 = select i1 %cond3_mid2, i32 %window_2_2, i32 %window_1_2_1
  %window_2_2_8 = select i1 %cond3_mid2, i32 %window_2_2_1_11, i32 %window_1_1_1
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_4)
  br label %.preheader81

.preheader79:                                     ; preds = %.preheader80.preheader, %._crit_edge85_ifconv
  %indvar_flatten6 = phi i5 [ 0, %.preheader80.preheader ], [ %indvar_flatten_next7, %._crit_edge85_ifconv ]
  %y_assign = phi i3 [ 0, %.preheader80.preheader ], [ %y_assign_mid2, %._crit_edge85_ifconv ]
  %line_buf_1_3_3 = phi i32 [ %line_buf_1_3, %.preheader80.preheader ], [ %line_buf_1_3_11, %._crit_edge85_ifconv ]
  %line_buf_1_2_3 = phi i32 [ %line_buf_1_2, %.preheader80.preheader ], [ %line_buf_1_3_12, %._crit_edge85_ifconv ]
  %line_buf_1_3_13 = phi i32 [ %line_buf_1_3_5, %.preheader80.preheader ], [ %line_buf_1_3_15, %._crit_edge85_ifconv ]
  %line_buf_1_3_1 = phi i32 [ %line_buf_1_3_8, %.preheader80.preheader ], [ %line_buf_1_3_16, %._crit_edge85_ifconv ]
  %line_buf_0_3_3 = phi i32 [ %line_buf_0_3, %.preheader80.preheader ], [ %line_buf_0_3_6, %._crit_edge85_ifconv ]
  %line_buf_0_2_3 = phi i32 [ %line_buf_0_2, %.preheader80.preheader ], [ %line_buf_0_3_7, %._crit_edge85_ifconv ]
  %window_2_1 = phi i32 [ %window_2_2_1, %.preheader80.preheader ], [ %line_buf_1_3_17, %._crit_edge85_ifconv ]
  %window_2_0 = phi i32 [ %window_2_1_1, %.preheader80.preheader ], [ %window_2_1, %._crit_edge85_ifconv ]
  %window_1_1 = phi i32 [ %window_1_2_1, %.preheader80.preheader ], [ %line_buf_0_3_15, %._crit_edge85_ifconv ]
  %window_1_0 = phi i32 [ %window_1_1_1, %.preheader80.preheader ], [ %window_1_1, %._crit_edge85_ifconv ]
  %x_assign = phi i3 [ 0, %.preheader80.preheader ], [ %x_4, %._crit_edge85_ifconv ]
  %window_0_0_read_as_1 = load i32* %window_0_0_read_as
  %window_0_0_load = load i32* %window_0_0
  %window_0_1_load_1 = load i32* %window_0_1
  %window_1_0_read_as_1 = load i32* %window_1_0_read_as
  %window_2_0_read_as_1 = load i32* %window_2_0_read_as
  %tmp_3_i = icmp eq i3 %y_assign, 0
  %tmp_5_i = icmp ugt i3 %y_assign, 2
  %tmp_i_i = icmp ne i3 %y_assign, 0
  %y = add i3 %y_assign, 1
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %y, i32 2)
  %exitcond_flatten8 = icmp eq i5 %indvar_flatten6, -16
  %indvar_flatten_next7 = add i5 %indvar_flatten6, 1
  store i32 %window_2_0, i32* %window_2_0_read_as
  store i32 %window_1_0, i32* %window_1_0_read_as
  store i32 %window_0_1_load_1, i32* %window_0_0
  store i32 %window_0_0_load, i32* %window_0_0_read_as
  br i1 %exitcond_flatten8, label %3, label %.preheader80

pad_skip.exit:                                    ; preds = %.preheader80
  %tmp_2_i = icmp eq i3 %x_assign_mid2, 0
  %tmp_4_i = icmp ugt i3 %x_assign_mid2, 2
  %tmp1 = or i1 %tmp_2_i, %tmp_3_i_mid2
  %tmp2 = or i1 %tmp_4_i, %tmp_5_i_mid2
  %p_i = or i1 %tmp2, %tmp1
  br i1 %p_i, label %._crit_edge_ifconv, label %.critedge

.critedge:                                        ; preds = %.preheader80, %pad_skip.exit
  %window_0_1_load = load i32* %window_0_1
  %kernel_0_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_0)
  %kernel_1_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_1)
  %kernel_2_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_2)
  %kernel_3_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_3)
  %kernel_4_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_4)
  %kernel_5_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_5)
  %kernel_6_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_6)
  %kernel_7_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_7)
  %kernel_8_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_8)
  %bias_0_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %bias_0)
  %bias_1_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %bias_1)
  %bias_2_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %bias_2)
  %bias_3_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %bias_3)
  %bias_4_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %bias_4)
  %bias_5_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %bias_5)
  %bias_6_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %bias_6)
  %bias_7_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %bias_7)
  %bias_8_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %bias_8)
  %tmp_9_i_i = icmp ne i3 %x_assign_mid2, 0
  %or_cond1_i_i = and i1 %tmp_i_i_mid2, %tmp_9_i_i
  %tmp_8_i = zext i8 %kernel_0_read to i32
  %tmp_9_i = mul i32 %window_0_0_read_as_1, %tmp_8_i
  %tmp_1_i = zext i8 %bias_0_read to i32
  %result_3_i = add i32 %tmp_9_i, %tmp_1_i
  %result_2_i = select i1 %or_cond1_i_i, i32 %result_3_i, i32 0
  %tmp_8_0_1_i = zext i8 %kernel_1_read to i32
  %tmp_9_0_1_i = mul i32 %window_0_0_load, %tmp_8_0_1_i
  %tmp_0_1_i = zext i8 %bias_1_read to i32
  %tmp3 = add i32 %result_2_i, %tmp_0_1_i
  %result_3_0_1_i = add i32 %tmp3, %tmp_9_0_1_i
  %result_2_0_1_i = select i1 %tmp_i_i_mid2, i32 %result_3_0_1_i, i32 0
  %x_assign_1 = add i3 %x_assign_mid2, 1
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %x_assign_1, i32 2)
  %rev = xor i1 %tmp_11, true
  %p_i2_i = and i1 %tmp_i_i_mid2, %rev
  %tmp_8_0_2_i = zext i8 %kernel_2_read to i32
  %tmp_9_0_2_i = mul i32 %window_0_1_load, %tmp_8_0_2_i
  %tmp_0_2_i = zext i8 %bias_2_read to i32
  %tmp4 = add i32 %result_2_0_1_i, %tmp_0_2_i
  %result_3_0_2_i = add i32 %tmp4, %tmp_9_0_2_i
  %result_2_0_2_i = select i1 %p_i2_i, i32 %result_3_0_2_i, i32 %result_2_0_1_i
  %tmp_8_1_i = zext i8 %kernel_3_read to i32
  %tmp_9_1_i = mul i32 %window_1_0_read_as_1, %tmp_8_1_i
  %tmp_1_i_13 = zext i8 %bias_3_read to i32
  %tmp5 = add i32 %result_2_0_2_i, %tmp_1_i_13
  %result_3_1_i = add i32 %tmp5, %tmp_9_1_i
  %result_2_1_i = select i1 %tmp_9_i_i, i32 %result_3_1_i, i32 %result_2_0_2_i
  %tmp_8_1_1_i = zext i8 %kernel_4_read to i32
  %tmp_9_1_1_i = mul i32 %window_1_0, %tmp_8_1_1_i
  %tmp_1_1_i = zext i8 %bias_4_read to i32
  %tmp6 = add i32 %result_2_1_i, %tmp_1_1_i
  %result_3_1_1_i = add i32 %tmp6, %tmp_9_1_1_i
  %tmp_8 = or i3 %y_assign_mid2, %x_assign_1
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %tmp_8, i32 2)
  %tmp_8_1_2_i = zext i8 %kernel_5_read to i32
  %tmp_9_1_2_i = mul i32 %window_1_1, %tmp_8_1_2_i
  %tmp_1_2_i = zext i8 %bias_5_read to i32
  %tmp7 = add i32 %result_3_1_1_i, %tmp_1_2_i
  %result_3_1_2_i = add i32 %tmp7, %tmp_9_1_2_i
  %result_2_1_2_i = select i1 %tmp_12, i32 %result_3_1_1_i, i32 %result_3_1_2_i
  %or_cond1_i6_i = and i1 %tmp_9_i_i, %tmp_i2_i_mid2
  %tmp_8_2_i = zext i8 %kernel_6_read to i32
  %tmp_9_2_i = mul i32 %window_2_0_read_as_1, %tmp_8_2_i
  %tmp_2_i_14 = zext i8 %bias_6_read to i32
  %tmp8 = add i32 %result_2_1_2_i, %tmp_2_i_14
  %result_3_2_i = add i32 %tmp8, %tmp_9_2_i
  %result_2_2_i = select i1 %or_cond1_i6_i, i32 %result_3_2_i, i32 %result_2_1_2_i
  %tmp_8_2_1_i = zext i8 %kernel_7_read to i32
  %tmp_9_2_1_i = mul i32 %window_2_0, %tmp_8_2_1_i
  %tmp_2_1_i = zext i8 %bias_7_read to i32
  %tmp9 = add i32 %result_2_2_i, %tmp_2_1_i
  %result_3_2_1_i = add i32 %tmp9, %tmp_9_2_1_i
  %result_2_2_1_i = select i1 %tmp_i2_i_mid2_v, i32 %result_2_1_2_i, i32 %result_3_2_1_i
  %tmp_s = or i3 %y_assign_1_mid2, %x_assign_1
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %tmp_s, i32 2)
  %tmp_8_2_2_i = zext i8 %kernel_8_read to i32
  %tmp_9_2_2_i = mul i32 %window_2_1, %tmp_8_2_2_i
  %tmp_2_2_i = zext i8 %bias_8_read to i32
  %tmp10 = add i32 %result_2_2_1_i, %tmp_2_2_i
  %result_3_2_2_i = add i32 %tmp10, %tmp_9_2_2_i
  %tmp_data_V = select i1 %tmp_13, i32 %result_2_2_1_i, i32 %result_3_2_2_i
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %out_stream_V_data_V, i4* %out_stream_V_keep_V, i4* %out_stream_V_strb_V, i2* %out_stream_V_user_V, i1* %out_stream_V_last_V, i5* %out_stream_V_id_V, i6* %out_stream_V_dest_V, i32 %tmp_data_V, i4 1, i4 1, i2 1, i1 undef, i5 0, i6 0)
  br label %._crit_edge_ifconv

._crit_edge_ifconv:                               ; preds = %.critedge, %pad_skip.exit
  %line_buf_0_3_5_loa = load i32* %line_buf_0_3_5
  %line_buf_0_3_8_loa = load i32* %line_buf_0_3_8
  %read_count_1_load = load i32* %read_count_1
  %tmp_14 = trunc i3 %x_assign_mid2 to i2
  %right_0 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %line_buf_0_3_5_loa, i32 %line_buf_0_3_8_loa, i32 %line_buf_0_2_3, i32 %line_buf_0_3_3, i2 %tmp_14)
  %line_buf_0_3_15 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %line_buf_1_3_1, i32 %line_buf_1_3_13, i32 %line_buf_1_2_3, i32 %line_buf_1_3_3, i2 %tmp_14)
  %sel_tmp2 = icmp eq i2 %tmp_14, -2
  %sel_tmp3 = icmp eq i2 %tmp_14, 1
  %sel_tmp4 = icmp eq i2 %tmp_14, 0
  %or_cond2 = or i1 %sel_tmp4, %sel_tmp3
  %newSel4 = select i1 %sel_tmp2, i32 %line_buf_0_3_3, i32 %line_buf_0_3_15
  %line_buf_0_3_6 = select i1 %or_cond2, i32 %line_buf_0_3_3, i32 %newSel4
  %newSel6 = select i1 %sel_tmp2, i32 %line_buf_0_3_15, i32 %line_buf_0_2_3
  %line_buf_0_3_7 = select i1 %or_cond2, i32 %line_buf_0_2_3, i32 %newSel6
  %line_buf_0_3_9 = select i1 %sel_tmp3, i32 %line_buf_0_3_15, i32 %line_buf_0_3_8_loa
  %line_buf_0_3_13 = select i1 %sel_tmp4, i32 %line_buf_0_3_8_loa, i32 %line_buf_0_3_9
  %line_buf_0_3_14 = select i1 %sel_tmp4, i32 %line_buf_0_3_15, i32 %line_buf_0_3_5_loa
  %tmp_15 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %read_count_1_load, i32 4, i32 31)
  %icmp = icmp slt i28 %tmp_15, 1
  store i32 %line_buf_0_3_13, i32* %line_buf_0_3_8
  store i32 %line_buf_0_3_14, i32* %line_buf_0_3_5
  store i32 %right_0, i32* %window_0_1
  br i1 %icmp, label %2, label %._crit_edge85_ifconv

; <label>:2                                       ; preds = %._crit_edge_ifconv
  %empty_15 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %in_stream_V_data_V, i4* %in_stream_V_keep_V, i4* %in_stream_V_strb_V, i2* %in_stream_V_user_V, i1* %in_stream_V_last_V, i5* %in_stream_V_id_V, i6* %in_stream_V_dest_V)
  %tmp_data_V_4 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_15, 0
  %read_count = add nsw i32 %read_count_1_load, 1
  store i32 %read_count, i32* %read_count_1
  br label %._crit_edge85_ifconv

._crit_edge85_ifconv:                             ; preds = %2, %._crit_edge_ifconv
  %line_buf_1_3_17 = phi i32 [ %tmp_data_V_4, %2 ], [ 0, %._crit_edge_ifconv ]
  %newSel8 = select i1 %sel_tmp2, i32 %line_buf_1_3_3, i32 %line_buf_1_3_17
  %line_buf_1_3_11 = select i1 %or_cond2, i32 %line_buf_1_3_3, i32 %newSel8
  %newSel1 = select i1 %sel_tmp2, i32 %line_buf_1_3_17, i32 %line_buf_1_2_3
  %line_buf_1_3_12 = select i1 %or_cond2, i32 %line_buf_1_2_3, i32 %newSel1
  %line_buf_1_3_14 = select i1 %sel_tmp3, i32 %line_buf_1_3_17, i32 %line_buf_1_3_13
  %line_buf_1_3_15 = select i1 %sel_tmp4, i32 %line_buf_1_3_13, i32 %line_buf_1_3_14
  %line_buf_1_3_16 = select i1 %sel_tmp4, i32 %line_buf_1_3_17, i32 %line_buf_1_3_1
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_3)
  %x_4 = add i3 %x_assign_mid2, 1
  br label %.preheader79

.preheader80:                                     ; preds = %.preheader79
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %exitcond2 = icmp eq i3 %x_assign, -4
  %x_assign_mid2 = select i1 %exitcond2, i3 0, i3 %x_assign
  %tmp_3_i_mid1 = icmp eq i3 %y, 0
  %tmp_3_i_mid2 = select i1 %exitcond2, i1 %tmp_3_i_mid1, i1 %tmp_3_i
  %tmp_5_i_mid1 = icmp ugt i3 %y, 2
  %tmp_5_i_mid2 = select i1 %exitcond2, i1 %tmp_5_i_mid1, i1 %tmp_5_i
  %tmp_i_i_mid1 = icmp ne i3 %y, 0
  %tmp_i_i_mid2 = select i1 %exitcond2, i1 %tmp_i_i_mid1, i1 %tmp_i_i
  %y_assign_1_mid1 = add i3 %y_assign, 2
  %y_assign_1_mid2 = select i1 %exitcond2, i3 %y_assign_1_mid1, i3 %y
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %y_assign_1_mid1, i32 2)
  %tmp_i2_i_mid2_v = select i1 %exitcond2, i1 %tmp_10, i1 %tmp_9
  %tmp_i2_i_mid2 = xor i1 %tmp_i2_i_mid2_v, true
  %y_assign_mid2 = select i1 %exitcond2, i3 %y, i3 %y_assign
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  br i1 %tmp_6, label %.critedge, label %pad_skip.exit

; <label>:3                                       ; preds = %.preheader79
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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

define weak i8 @_ssdm_op_Read.s_axilite.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

define weak { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32*, i4*, i4*, i2*, i1*, i5*, i6*) {
entry:
  %empty = load i32* %0
  %empty_18 = load i4* %1
  %empty_19 = load i4* %2
  %empty_20 = load i2* %3
  %empty_21 = load i1* %4
  %empty_22 = load i5* %5
  %empty_23 = load i6* %6
  %mrv_0 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv_0, i4 %empty_18, 1
  %mrv2 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv1, i4 %empty_19, 2
  %mrv3 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv2, i2 %empty_20, 3
  %mrv4 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv3, i1 %empty_21, 4
  %mrv5 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv4, i5 %empty_22, 5
  %mrv6 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv5, i6 %empty_23, 6
  ret { i32, i4, i4, i2, i1, i5, i6 } %mrv6
}

define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_24 = trunc i32 %empty to i28
  ret i28 %empty_24
}

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

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

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_25 = shl i8 1, %empty
  %empty_26 = and i8 %0, %empty_25
  %empty_27 = icmp ne i8 %empty_26, 0
  ret i1 %empty_27
}

define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3
  %empty_28 = shl i3 1, %empty
  %empty_29 = and i3 %0, %empty_28
  %empty_30 = icmp ne i3 %empty_29, 0
  ret i1 %empty_30
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !7, !13, !13, !19, !7, !7, !13, !13, !7, !7, !13, !13, !7, !7, !13, !13, !7, !7, !13, !13, !22, !22, !13, !24, !27, !29, !31, !33, !13, !35, !39, !45, !51, !53, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!55}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint32axis_t> &", metadata !"hls::stream<uint32axis_t> &", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"out_stream", metadata !"kernel", metadata !"bias", metadata !"ctrl"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis<32, 2, 5, 6> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !12, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!24 = metadata !{null, metadata !8, metadata !9, metadata !25, metadata !11, metadata !26, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<6> &"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !26, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!29 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !11, metadata !26, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !26, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !26, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<32> &"}
!35 = metadata !{null, metadata !36, metadata !2, metadata !37, metadata !4, metadata !38, metadata !6}
!36 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 0, i32 0}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"fixp32_t [3]*", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"int", metadata !"int"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"window", metadata !"kernel", metadata !"bias", metadata !"y", metadata !"x"}
!39 = metadata !{null, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !6}
!40 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!41 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!45 = metadata !{null, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !6}
!46 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!47 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"uint8_t"}
!49 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y", metadata !"ctrl"}
!51 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !52, metadata !6}
!52 = metadata !{metadata !"kernel_arg_name", metadata !""}
!53 = metadata !{null, metadata !8, metadata !9, metadata !54, metadata !11, metadata !26, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!55 = metadata !{metadata !56, [1 x i32]* @llvm_global_ctors_0}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 31, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"llvm.global_ctors.0", metadata !60, metadata !"", i32 0, i32 31}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 0, i32 1}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 7, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"bias", metadata !66, metadata !"unsigned char", i32 0, i32 7}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 8, i32 8, i32 2}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 7, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"bias", metadata !72, metadata !"unsigned char", i32 0, i32 7}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 7, i32 7, i32 2}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 7, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"bias", metadata !78, metadata !"unsigned char", i32 0, i32 7}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 6, i32 6, i32 2}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 7, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"bias", metadata !84, metadata !"unsigned char", i32 0, i32 7}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 5, i32 5, i32 2}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 7, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"bias", metadata !90, metadata !"unsigned char", i32 0, i32 7}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 4, i32 4, i32 2}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 7, metadata !94}
!94 = metadata !{metadata !95}
!95 = metadata !{metadata !"bias", metadata !96, metadata !"unsigned char", i32 0, i32 7}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 3, i32 3, i32 2}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 7, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"bias", metadata !102, metadata !"unsigned char", i32 0, i32 7}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 2, i32 2, i32 2}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 7, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"bias", metadata !108, metadata !"unsigned char", i32 0, i32 7}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 1, i32 1, i32 2}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 7, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"bias", metadata !114, metadata !"unsigned char", i32 0, i32 7}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 0, i32 2}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 7, metadata !118}
!118 = metadata !{metadata !119}
!119 = metadata !{metadata !"kernel", metadata !66, metadata !"unsigned char", i32 0, i32 7}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 7, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"kernel", metadata !72, metadata !"unsigned char", i32 0, i32 7}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 0, i32 7, metadata !126}
!126 = metadata !{metadata !127}
!127 = metadata !{metadata !"kernel", metadata !78, metadata !"unsigned char", i32 0, i32 7}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 7, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"kernel", metadata !84, metadata !"unsigned char", i32 0, i32 7}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 7, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"kernel", metadata !90, metadata !"unsigned char", i32 0, i32 7}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 0, i32 7, metadata !138}
!138 = metadata !{metadata !139}
!139 = metadata !{metadata !"kernel", metadata !96, metadata !"unsigned char", i32 0, i32 7}
!140 = metadata !{metadata !141}
!141 = metadata !{i32 0, i32 7, metadata !142}
!142 = metadata !{metadata !143}
!143 = metadata !{metadata !"kernel", metadata !102, metadata !"unsigned char", i32 0, i32 7}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 0, i32 7, metadata !146}
!146 = metadata !{metadata !147}
!147 = metadata !{metadata !"kernel", metadata !108, metadata !"unsigned char", i32 0, i32 7}
!148 = metadata !{metadata !149}
!149 = metadata !{i32 0, i32 7, metadata !150}
!150 = metadata !{metadata !151}
!151 = metadata !{metadata !"kernel", metadata !114, metadata !"unsigned char", i32 0, i32 7}
!152 = metadata !{metadata !153}
!153 = metadata !{i32 0, i32 31, metadata !154}
!154 = metadata !{metadata !155}
!155 = metadata !{metadata !"in_stream.V.data.V", metadata !60, metadata !"int32", i32 0, i32 31}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 0, i32 3, metadata !158}
!158 = metadata !{metadata !159}
!159 = metadata !{metadata !"in_stream.V.keep.V", metadata !60, metadata !"uint4", i32 0, i32 3}
!160 = metadata !{metadata !161}
!161 = metadata !{i32 0, i32 3, metadata !162}
!162 = metadata !{metadata !163}
!163 = metadata !{metadata !"in_stream.V.strb.V", metadata !60, metadata !"uint4", i32 0, i32 3}
!164 = metadata !{metadata !165}
!165 = metadata !{i32 0, i32 1, metadata !166}
!166 = metadata !{metadata !167}
!167 = metadata !{metadata !"in_stream.V.user.V", metadata !60, metadata !"uint2", i32 0, i32 1}
!168 = metadata !{metadata !169}
!169 = metadata !{i32 0, i32 0, metadata !170}
!170 = metadata !{metadata !171}
!171 = metadata !{metadata !"in_stream.V.last.V", metadata !60, metadata !"uint1", i32 0, i32 0}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 0, i32 4, metadata !174}
!174 = metadata !{metadata !175}
!175 = metadata !{metadata !"in_stream.V.id.V", metadata !60, metadata !"uint5", i32 0, i32 4}
!176 = metadata !{metadata !177}
!177 = metadata !{i32 0, i32 5, metadata !178}
!178 = metadata !{metadata !179}
!179 = metadata !{metadata !"in_stream.V.dest.V", metadata !60, metadata !"uint6", i32 0, i32 5}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 0, i32 31, metadata !182}
!182 = metadata !{metadata !183}
!183 = metadata !{metadata !"out_stream.V.data.V", metadata !60, metadata !"int32", i32 0, i32 31}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 0, i32 3, metadata !186}
!186 = metadata !{metadata !187}
!187 = metadata !{metadata !"out_stream.V.keep.V", metadata !60, metadata !"uint4", i32 0, i32 3}
!188 = metadata !{metadata !189}
!189 = metadata !{i32 0, i32 3, metadata !190}
!190 = metadata !{metadata !191}
!191 = metadata !{metadata !"out_stream.V.strb.V", metadata !60, metadata !"uint4", i32 0, i32 3}
!192 = metadata !{metadata !193}
!193 = metadata !{i32 0, i32 1, metadata !194}
!194 = metadata !{metadata !195}
!195 = metadata !{metadata !"out_stream.V.user.V", metadata !60, metadata !"uint2", i32 0, i32 1}
!196 = metadata !{metadata !197}
!197 = metadata !{i32 0, i32 0, metadata !198}
!198 = metadata !{metadata !199}
!199 = metadata !{metadata !"out_stream.V.last.V", metadata !60, metadata !"uint1", i32 0, i32 0}
!200 = metadata !{metadata !201}
!201 = metadata !{i32 0, i32 4, metadata !202}
!202 = metadata !{metadata !203}
!203 = metadata !{metadata !"out_stream.V.id.V", metadata !60, metadata !"uint5", i32 0, i32 4}
!204 = metadata !{metadata !205}
!205 = metadata !{i32 0, i32 5, metadata !206}
!206 = metadata !{metadata !207}
!207 = metadata !{metadata !"out_stream.V.dest.V", metadata !60, metadata !"uint6", i32 0, i32 5}
!208 = metadata !{metadata !209}
!209 = metadata !{i32 0, i32 7, metadata !210}
!210 = metadata !{metadata !211}
!211 = metadata !{metadata !"ctrl", metadata !212, metadata !"unsigned char", i32 0, i32 7}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 0, i32 0, i32 0}
