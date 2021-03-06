; ModuleID = 'D:/School/Project/repo/HLS/sliding_window_2/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@my_filter_buffer_str = internal unnamed_addr constant [17 x i8] c"my_filter_buffer\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str5 = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@p_str4 = private unnamed_addr constant [11 x i8] c"KERNEL_BUS\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str10 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

define void @my_filter_buffer(i32* %in_stream_V_data_V, i4* %in_stream_V_keep_V, i4* %in_stream_V_strb_V, i2* %in_stream_V_user_V, i1* %in_stream_V_last_V, i5* %in_stream_V_id_V, i6* %in_stream_V_dest_V, i32* %out_stream_V_data_V, i4* %out_stream_V_keep_V, i4* %out_stream_V_strb_V, i2* %out_stream_V_user_V, i1* %out_stream_V_last_V, i5* %out_stream_V_id_V, i6* %out_stream_V_dest_V, i8* %kernel_0, i8* %kernel_1, i8* %kernel_2, i8* %kernel_3, i8* %kernel_4, i8* %kernel_5, i8* %kernel_6, i8* %kernel_7, i8* %kernel_8) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_8), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_7), !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_6), !map !64
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_5), !map !70
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_4), !map !76
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_3), !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_2), !map !88
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_1), !map !94
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %kernel_0), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_stream_V_data_V), !map !106
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_stream_V_keep_V), !map !110
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_stream_V_strb_V), !map !114
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %in_stream_V_user_V), !map !118
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_stream_V_last_V), !map !122
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %in_stream_V_id_V), !map !126
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %in_stream_V_dest_V), !map !130
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_stream_V_data_V), !map !134
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_stream_V_keep_V), !map !138
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_stream_V_strb_V), !map !142
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %out_stream_V_user_V), !map !146
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_stream_V_last_V), !map !150
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %out_stream_V_id_V), !map !154
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %out_stream_V_dest_V), !map !158
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @my_filter_buffer_str) nounwind
  %line_buf_0 = alloca [512 x i32], align 4
  %line_buf_1 = alloca [512 x i32], align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_stream_V_data_V, i4* %out_stream_V_keep_V, i4* %out_stream_V_strb_V, i2* %out_stream_V_user_V, i1* %out_stream_V_last_V, i5* %out_stream_V_id_V, i6* %out_stream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V_data_V, i4* %in_stream_V_keep_V, i4* %in_stream_V_strb_V, i2* %in_stream_V_user_V, i1* %in_stream_V_last_V, i5* %in_stream_V_id_V, i6* %in_stream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %kernel_0, i8* %kernel_1, i8* %kernel_2, i8* %kernel_3, i8* %kernel_4, i8* %kernel_5, i8* %kernel_6, i8* %kernel_7, i8* %kernel_8, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [11 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str5, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %x = phi i10 [ 510, %0 ], [ %x_1, %2 ]
  %exitcond1 = icmp eq i10 %x, -512
  br i1 %exitcond1, label %.preheader75.0.preheader, label %2

.preheader75.0.preheader:                         ; preds = %1
  br label %.preheader75.0

; <label>:2                                       ; preds = %1
  %x_cast7 = zext i10 %x to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_5 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %in_stream_V_data_V, i4* %in_stream_V_keep_V, i4* %in_stream_V_strb_V, i2* %in_stream_V_user_V, i1* %in_stream_V_last_V, i5* %in_stream_V_id_V, i6* %in_stream_V_dest_V)
  %tmp_data_V = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_5, 0
  %line_buf_0_addr = getelementptr [512 x i32]* %line_buf_0, i32 0, i32 %x_cast7
  store i32 %tmp_data_V, i32* %line_buf_0_addr, align 4
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp)
  %x_1 = add i10 %x, 1
  br label %1

.preheader75.0:                                   ; preds = %.preheader75.0.preheader, %3
  %x1 = phi i10 [ %x_2, %3 ], [ 0, %.preheader75.0.preheader ]
  %exitcond4 = icmp eq i10 %x1, -512
  %x_2 = add i10 %x1, 1
  br i1 %exitcond4, label %.preheader73.preheader, label %3

.preheader73.preheader:                           ; preds = %.preheader75.0
  br label %.preheader73

; <label>:3                                       ; preds = %.preheader75.0
  %x1_cast6 = zext i10 %x1 to i32
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_8 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %in_stream_V_data_V, i4* %in_stream_V_keep_V, i4* %in_stream_V_strb_V, i2* %in_stream_V_user_V, i1* %in_stream_V_last_V, i5* %in_stream_V_id_V, i6* %in_stream_V_dest_V)
  %tmp_data_V_1 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_8, 0
  %line_buf_1_addr = getelementptr [512 x i32]* %line_buf_1, i32 0, i32 %x1_cast6
  store i32 %tmp_data_V_1, i32* %line_buf_1_addr, align 4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_2)
  br label %.preheader75.0

.preheader73:                                     ; preds = %.preheader73.preheader, %.preheader74
  %indvar_flatten = phi i3 [ %indvar_flatten_next, %.preheader74 ], [ 0, %.preheader73.preheader ]
  %y2 = phi i2 [ %tmp_3_mid2_v, %.preheader74 ], [ 1, %.preheader73.preheader ]
  %window_2_2_1 = phi i32 [ %window_2_2_6, %.preheader74 ], [ undef, %.preheader73.preheader ]
  %window_2_1_1 = phi i32 [ %window_2_2_7, %.preheader74 ], [ undef, %.preheader73.preheader ]
  %window_1_2_1 = phi i32 [ %window_2_2_8, %.preheader74 ], [ undef, %.preheader73.preheader ]
  %window_1_1_1 = phi i32 [ %window_2_2_9, %.preheader74 ], [ undef, %.preheader73.preheader ]
  %x3 = phi i2 [ %x_3, %.preheader74 ], [ 1, %.preheader73.preheader ]
  %exitcond_flatten = icmp eq i3 %indvar_flatten, -4
  %indvar_flatten_next = add i3 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader71.preheader, label %.preheader74

.preheader71.preheader:                           ; preds = %.preheader73
  %window_0_0_read_as = alloca i32
  %window_0_0 = alloca i32
  %window_0_1 = alloca i32
  %window_1_0_read_as = alloca i32
  %window_2_0_read_as = alloca i32
  %read_count_1 = alloca i32
  store i32 514, i32* %read_count_1
  br label %.preheader71

.preheader74:                                     ; preds = %.preheader73
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %exitcond = icmp eq i2 %x3, -1
  %x3_mid2 = select i1 %exitcond, i2 1, i2 %x3
  %y9 = add i2 1, %y2
  %tmp_3_mid2_v = select i1 %exitcond, i2 %y9, i2 %y2
  %tmp_1 = trunc i2 %tmp_3_mid2_v to i1
  %cond_mid1 = icmp eq i2 %y2, 0
  %cond = icmp eq i2 %y2, 1
  %cond_mid2 = select i1 %exitcond, i1 %cond_mid1, i1 %cond
  %x3_cast4_cast = zext i2 %x3_mid2 to i3
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_s = add i3 -3, %x3_cast4_cast
  %tmp_cast8 = sext i3 %tmp_s to i9
  %tmp_cast = zext i9 %tmp_cast8 to i32
  %line_buf_0_addr_2 = getelementptr [512 x i32]* %line_buf_0, i32 0, i32 %tmp_cast
  %line_buf_1_addr_2 = getelementptr [512 x i32]* %line_buf_1, i32 0, i32 %tmp_cast
  %line_buf_0_load = load i32* %line_buf_0_addr_2, align 4
  %line_buf_1_load = load i32* %line_buf_1_addr_2, align 4
  %window_1_1_2 = select i1 %tmp_1, i32 %line_buf_0_load, i32 %line_buf_1_load
  %cond1 = icmp eq i2 %x3_mid2, 1
  %window_2_2_1_11 = select i1 %cond1, i32 %window_1_2_1, i32 %window_1_1_2
  %window_2_2_2 = select i1 %cond1, i32 %window_1_1_2, i32 %window_1_1_1
  %window_2_2_4 = select i1 %cond1, i32 %window_2_2_1, i32 %window_1_1_2
  %window_2_2_5 = select i1 %cond1, i32 %window_1_1_2, i32 %window_2_1_1
  %window_2_2_6 = select i1 %cond_mid2, i32 %window_2_2_1, i32 %window_2_2_4
  %window_2_2_7 = select i1 %cond_mid2, i32 %window_2_1_1, i32 %window_2_2_5
  %window_2_2_8 = select i1 %cond_mid2, i32 %window_2_2_1_11, i32 %window_1_2_1
  %window_2_2_9 = select i1 %cond_mid2, i32 %window_2_2_2, i32 %window_1_1_1
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_6)
  %x_3 = add i2 1, %x3_mid2
  br label %.preheader73

.preheader71:                                     ; preds = %.preheader71.preheader, %._crit_edge
  %indvar_flatten6 = phi i19 [ %indvar_flatten_next7, %._crit_edge ], [ 0, %.preheader71.preheader ]
  %y_assign = phi i10 [ %y_assign_mid2, %._crit_edge ], [ 0, %.preheader71.preheader ]
  %window_2_1 = phi i32 [ %window_2_2, %._crit_edge ], [ %window_2_2_1, %.preheader71.preheader ]
  %window_2_0 = phi i32 [ %window_2_1, %._crit_edge ], [ %window_2_1_1, %.preheader71.preheader ]
  %window_1_1 = phi i32 [ %window_1_2, %._crit_edge ], [ %window_1_2_1, %.preheader71.preheader ]
  %window_1_0 = phi i32 [ %window_1_1, %._crit_edge ], [ %window_1_1_1, %.preheader71.preheader ]
  %x_assign = phi i10 [ %x_4, %._crit_edge ], [ 0, %.preheader71.preheader ]
  %window_0_0_read_as_1 = load i32* %window_0_0_read_as
  %window_0_0_load = load i32* %window_0_0
  %window_0_1_load_1 = load i32* %window_0_1
  %window_1_0_read_as_1 = load i32* %window_1_0_read_as
  %window_2_0_read_as_1 = load i32* %window_2_0_read_as
  %tmp_i_i = icmp ne i10 %y_assign, 0
  %y = add i10 %y_assign, 1
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i10.i32(i10 %y, i32 9)
  %exitcond_flatten8 = icmp eq i19 %indvar_flatten6, -262144
  %indvar_flatten_next7 = add i19 %indvar_flatten6, 1
  store i32 %window_2_0, i32* %window_2_0_read_as
  store i32 %window_1_0, i32* %window_1_0_read_as
  store i32 %window_0_1_load_1, i32* %window_0_0
  store i32 %window_0_0_load, i32* %window_0_0_read_as
  br i1 %exitcond_flatten8, label %5, label %.preheader72

; <label>:4                                       ; preds = %.preheader72
  %empty_13 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %in_stream_V_data_V, i4* %in_stream_V_keep_V, i4* %in_stream_V_strb_V, i2* %in_stream_V_user_V, i1* %in_stream_V_last_V, i5* %in_stream_V_id_V, i6* %in_stream_V_dest_V)
  %tmp_data_V_4 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_13, 0
  %read_count = add nsw i32 %read_count_1_load, 1
  store i32 %read_count, i32* %read_count_1
  br label %._crit_edge

._crit_edge:                                      ; preds = %4, %.preheader72
  %window_2_2 = phi i32 [ %tmp_data_V_4, %4 ], [ 0, %.preheader72 ]
  store i32 %window_2_2, i32* %line_buf_1_addr_1, align 4
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_4)
  br label %.preheader71

.preheader72:                                     ; preds = %.preheader71
  %window_0_1_load = load i32* %window_0_1
  %read_count_1_load = load i32* %read_count_1
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 262144, i64 262144, i64 262144)
  %exitcond2 = icmp eq i10 %x_assign, -512
  %x_assign_mid2 = select i1 %exitcond2, i10 0, i10 %x_assign
  %tmp_i_i_mid1 = icmp ne i10 %y, 0
  %tmp_i_i_mid2 = select i1 %exitcond2, i1 %tmp_i_i_mid1, i1 %tmp_i_i
  %y_assign_1_mid1 = add i10 %y_assign, 2
  %y_assign_1_mid2 = select i1 %exitcond2, i10 %y_assign_1_mid1, i10 %y
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i10.i32(i10 %y_assign_1_mid1, i32 9)
  %tmp_i2_i_mid2_v = select i1 %exitcond2, i1 %tmp_7, i1 %tmp_3
  %tmp_i2_i_mid2 = xor i1 %tmp_i2_i_mid2_v, true
  %y_assign_mid2 = select i1 %exitcond2, i10 %y, i10 %y_assign
  %x5_cast1 = zext i10 %x_assign_mid2 to i32
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %kernel_0_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_0)
  %kernel_1_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_1)
  %kernel_2_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_2)
  %kernel_3_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_3)
  %kernel_4_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_4)
  %kernel_5_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_5)
  %kernel_6_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_6)
  %kernel_7_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_7)
  %kernel_8_read = call i8 @_ssdm_op_Read.s_axilite.i8P(i8* %kernel_8)
  %tmp_3_i_i = icmp ne i10 %x_assign_mid2, 0
  %or_cond1_i_i = and i1 %tmp_i_i_mid2, %tmp_3_i_i
  %tmp_8_i = zext i8 %kernel_0_read to i32
  %tmp_9_i = mul i32 %window_0_0_read_as_1, %tmp_8_i
  %result_2_i = select i1 %or_cond1_i_i, i32 %tmp_9_i, i32 0
  %tmp_8_0_1_i = zext i8 %kernel_1_read to i32
  %tmp_9_0_1_i = mul i32 %window_0_0_load, %tmp_8_0_1_i
  %result_3_0_1_i = add i32 %tmp_9_0_1_i, %result_2_i
  %result_2_0_1_i = select i1 %tmp_i_i_mid2, i32 %result_3_0_1_i, i32 0
  %x_4 = add i10 %x_assign_mid2, 1
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i10.i32(i10 %x_4, i32 9)
  %rev = xor i1 %tmp_9, true
  %p_i2_i = and i1 %tmp_i_i_mid2, %rev
  %tmp_8_0_2_i = zext i8 %kernel_2_read to i32
  %tmp_9_0_2_i = mul i32 %window_0_1_load, %tmp_8_0_2_i
  %result_3_0_2_i = add i32 %tmp_9_0_2_i, %result_2_0_1_i
  %result_2_0_2_i = select i1 %p_i2_i, i32 %result_3_0_2_i, i32 %result_2_0_1_i
  %tmp_8_1_i = zext i8 %kernel_3_read to i32
  %tmp_9_1_i = mul i32 %window_1_0_read_as_1, %tmp_8_1_i
  %result_3_1_i = add i32 %tmp_9_1_i, %result_2_0_2_i
  %result_2_1_i = select i1 %tmp_3_i_i, i32 %result_3_1_i, i32 %result_2_0_2_i
  %tmp_8_1_1_i = zext i8 %kernel_4_read to i32
  %tmp_9_1_1_i = mul i32 %window_1_0, %tmp_8_1_1_i
  %result_3_1_1_i = add i32 %tmp_9_1_1_i, %result_2_1_i
  %tmp_5 = or i10 %y_assign_mid2, %x_4
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i10.i32(i10 %tmp_5, i32 9)
  %tmp_8_1_2_i = zext i8 %kernel_5_read to i32
  %tmp_9_1_2_i = mul i32 %window_1_1, %tmp_8_1_2_i
  %result_3_1_2_i = add i32 %tmp_9_1_2_i, %result_3_1_1_i
  %result_2_1_2_i = select i1 %tmp_10, i32 %result_3_1_1_i, i32 %result_3_1_2_i
  %or_cond1_i6_i = and i1 %tmp_3_i_i, %tmp_i2_i_mid2
  %tmp_8_2_i = zext i8 %kernel_6_read to i32
  %tmp_9_2_i = mul i32 %window_2_0_read_as_1, %tmp_8_2_i
  %result_3_2_i = add i32 %tmp_9_2_i, %result_2_1_2_i
  %result_2_2_i = select i1 %or_cond1_i6_i, i32 %result_3_2_i, i32 %result_2_1_2_i
  %tmp_8_2_1_i = zext i8 %kernel_7_read to i32
  %tmp_9_2_1_i = mul i32 %window_2_0, %tmp_8_2_1_i
  %result_3_2_1_i = add i32 %tmp_9_2_1_i, %result_2_2_i
  %result_2_2_1_i = select i1 %tmp_i2_i_mid2_v, i32 %result_2_1_2_i, i32 %result_3_2_1_i
  %tmp_8 = or i10 %y_assign_1_mid2, %x_4
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i10.i32(i10 %tmp_8, i32 9)
  %tmp_8_2_2_i = zext i8 %kernel_8_read to i32
  %tmp_9_2_2_i = mul i32 %window_2_1, %tmp_8_2_2_i
  %result_3_2_2_i = add i32 %tmp_9_2_2_i, %result_2_2_1_i
  %val_out = select i1 %tmp_11, i32 %result_2_2_1_i, i32 %result_3_2_2_i
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %out_stream_V_data_V, i4* %out_stream_V_keep_V, i4* %out_stream_V_strb_V, i2* %out_stream_V_user_V, i1* %out_stream_V_last_V, i5* %out_stream_V_id_V, i6* %out_stream_V_dest_V, i32 %val_out, i4 1, i4 1, i2 1, i1 undef, i5 0, i6 0)
  %line_buf_0_addr_1 = getelementptr [512 x i32]* %line_buf_0, i32 0, i32 %x5_cast1
  %window_0_2 = load i32* %line_buf_0_addr_1, align 4
  %line_buf_1_addr_1 = getelementptr [512 x i32]* %line_buf_1, i32 0, i32 %x5_cast1
  %window_1_2 = load i32* %line_buf_1_addr_1, align 4
  store i32 %window_1_2, i32* %line_buf_0_addr_1, align 4
  %tmp_12 = call i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32 %read_count_1_load, i32 18, i32 31)
  %icmp = icmp slt i14 %tmp_12, 1
  store i32 %window_0_2, i32* %window_0_1
  br i1 %icmp, label %4, label %._crit_edge

; <label>:5                                       ; preds = %.preheader71
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

define weak i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_22 = trunc i32 %empty to i14
  ret i14 %empty_22
}

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i10.i32(i10, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i10
  %empty_23 = shl i10 1, %empty
  %empty_24 = and i10 %0, %empty_23
  %empty_25 = icmp ne i10 %empty_24, 0
  ret i1 %empty_25
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !13, !13, !16, !16, !25, !13, !13, !16, !16, !27, !13, !13, !16, !16, !29, !13, !13, !16, !16, !31, !16, !16, !33, !39, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!45}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint32axis_t> &", metadata !"hls::stream<uint32axis_t> &", metadata !"uint8_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"out_stream", metadata !"kernel"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis<32, 2, 5, 6> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !6}
!17 = metadata !{metadata !"kernel_arg_addr_space"}
!18 = metadata !{metadata !"kernel_arg_access_qual"}
!19 = metadata !{metadata !"kernel_arg_type"}
!20 = metadata !{metadata !"kernel_arg_type_qual"}
!21 = metadata !{metadata !"kernel_arg_name"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<6> &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !24, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !24, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!29 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !11, metadata !24, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !24, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<32> &"}
!33 = metadata !{null, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t [3]*", metadata !"uint8_t*", metadata !"int", metadata !"int"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"window", metadata !"kernel", metadata !"y", metadata !"x"}
!39 = metadata !{null, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !6}
!40 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!41 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!45 = metadata !{metadata !46, [1 x i32]* @llvm_global_ctors_0}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"llvm.global_ctors.0", metadata !50, metadata !"", i32 0, i32 31}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 0, i32 1}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 7, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"kernel", metadata !56, metadata !"unsigned char", i32 0, i32 7}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 8, i32 8, i32 2}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 7, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"kernel", metadata !62, metadata !"unsigned char", i32 0, i32 7}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 7, i32 7, i32 2}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 7, metadata !66}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !"kernel", metadata !68, metadata !"unsigned char", i32 0, i32 7}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 6, i32 6, i32 2}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 7, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"kernel", metadata !74, metadata !"unsigned char", i32 0, i32 7}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 5, i32 5, i32 2}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 7, metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !"kernel", metadata !80, metadata !"unsigned char", i32 0, i32 7}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 4, i32 4, i32 2}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 7, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"kernel", metadata !86, metadata !"unsigned char", i32 0, i32 7}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 3, i32 3, i32 2}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 7, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"kernel", metadata !92, metadata !"unsigned char", i32 0, i32 7}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 2, i32 2, i32 2}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 7, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"kernel", metadata !98, metadata !"unsigned char", i32 0, i32 7}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 1, i32 1, i32 2}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 7, metadata !102}
!102 = metadata !{metadata !103}
!103 = metadata !{metadata !"kernel", metadata !104, metadata !"unsigned char", i32 0, i32 7}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 0, i32 2}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 0, i32 31, metadata !108}
!108 = metadata !{metadata !109}
!109 = metadata !{metadata !"in_stream.V.data.V", metadata !50, metadata !"int32", i32 0, i32 31}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 3, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"in_stream.V.keep.V", metadata !50, metadata !"uint4", i32 0, i32 3}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 3, metadata !116}
!116 = metadata !{metadata !117}
!117 = metadata !{metadata !"in_stream.V.strb.V", metadata !50, metadata !"uint4", i32 0, i32 3}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 1, metadata !120}
!120 = metadata !{metadata !121}
!121 = metadata !{metadata !"in_stream.V.user.V", metadata !50, metadata !"uint2", i32 0, i32 1}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 0, metadata !124}
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !"in_stream.V.last.V", metadata !50, metadata !"uint1", i32 0, i32 0}
!126 = metadata !{metadata !127}
!127 = metadata !{i32 0, i32 4, metadata !128}
!128 = metadata !{metadata !129}
!129 = metadata !{metadata !"in_stream.V.id.V", metadata !50, metadata !"uint5", i32 0, i32 4}
!130 = metadata !{metadata !131}
!131 = metadata !{i32 0, i32 5, metadata !132}
!132 = metadata !{metadata !133}
!133 = metadata !{metadata !"in_stream.V.dest.V", metadata !50, metadata !"uint6", i32 0, i32 5}
!134 = metadata !{metadata !135}
!135 = metadata !{i32 0, i32 31, metadata !136}
!136 = metadata !{metadata !137}
!137 = metadata !{metadata !"out_stream.V.data.V", metadata !50, metadata !"int32", i32 0, i32 31}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 0, i32 3, metadata !140}
!140 = metadata !{metadata !141}
!141 = metadata !{metadata !"out_stream.V.keep.V", metadata !50, metadata !"uint4", i32 0, i32 3}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 0, i32 3, metadata !144}
!144 = metadata !{metadata !145}
!145 = metadata !{metadata !"out_stream.V.strb.V", metadata !50, metadata !"uint4", i32 0, i32 3}
!146 = metadata !{metadata !147}
!147 = metadata !{i32 0, i32 1, metadata !148}
!148 = metadata !{metadata !149}
!149 = metadata !{metadata !"out_stream.V.user.V", metadata !50, metadata !"uint2", i32 0, i32 1}
!150 = metadata !{metadata !151}
!151 = metadata !{i32 0, i32 0, metadata !152}
!152 = metadata !{metadata !153}
!153 = metadata !{metadata !"out_stream.V.last.V", metadata !50, metadata !"uint1", i32 0, i32 0}
!154 = metadata !{metadata !155}
!155 = metadata !{i32 0, i32 4, metadata !156}
!156 = metadata !{metadata !157}
!157 = metadata !{metadata !"out_stream.V.id.V", metadata !50, metadata !"uint5", i32 0, i32 4}
!158 = metadata !{metadata !159}
!159 = metadata !{i32 0, i32 5, metadata !160}
!160 = metadata !{metadata !161}
!161 = metadata !{metadata !"out_stream.V.dest.V", metadata !50, metadata !"uint6", i32 0, i32 5}
