; ModuleID = 'D:/School/Project/new_repo/HLS/cnn_fc_i50_o10/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@cnn_fc_i50_o10_str = internal unnamed_addr constant [15 x i8] c"cnn_fc_i50_o10\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str4 = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str19 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str18 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str17 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define internal fastcc i23 @fixed_point_mul(i32 %a, i32 %b) readnone {
  %b_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %b)
  %a_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %a)
  %tmp = xor i32 %b_read, %a_read
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_read, i32 31)
  %tmp_2 = sub i32 0, %a_read
  %a_assign = select i1 %tmp_1, i32 %tmp_2, i32 %a_read
  %tmp_4 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %b_read, i32 31)
  %tmp_5 = sub i32 0, %b_read
  %b_assign = select i1 %tmp_4, i32 %tmp_5, i32 %b_read
  %tmp_7 = mul i32 %b_assign, %a_assign
  %tmp_3 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %tmp_7, i32 10, i32 31)
  %result_cast = zext i22 %tmp_3 to i23
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp, i32 31)
  %tmp_s = sub i23 0, %result_cast
  %result = select i1 %tmp_6, i23 %tmp_s, i23 %result_cast
  ret i23 %result
}

define void @cnn_fc_i50_o10(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [50 x i32]* %weight_0, [50 x i32]* %weight_1, [50 x i32]* %weight_2, [50 x i32]* %weight_3, [50 x i32]* %weight_4, [50 x i32]* %weight_5, [50 x i32]* %weight_6, [50 x i32]* %weight_7, [50 x i32]* %weight_8, [50 x i32]* %weight_9, [10 x i32]* %bias, i32 %ctrl) {
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %weight_9), !map !54
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %weight_8), !map !61
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %weight_7), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %weight_6), !map !73
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %weight_5), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %weight_4), !map !85
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %weight_3), !map !91
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %weight_2), !map !97
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %weight_1), !map !103
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %weight_0), !map !109
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %inStream_V_data_V), !map !115
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_keep_V), !map !119
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_strb_V), !map !123
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inStream_V_user_V), !map !127
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_last_V), !map !131
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %inStream_V_id_V), !map !135
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %inStream_V_dest_V), !map !139
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %outStream_V_data_V), !map !143
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_keep_V), !map !147
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_strb_V), !map !151
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %outStream_V_user_V), !map !155
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_last_V), !map !159
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %outStream_V_id_V), !map !163
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %outStream_V_dest_V), !map !167
  call void (...)* @_ssdm_op_SpecBitsMap([10 x i32]* %bias), !map !171
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ctrl), !map !177
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @cnn_fc_i50_o10_str) nounwind
  %ctrl_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ctrl)
  call void (...)* @_ssdm_op_SpecInterface(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([50 x i32]* %weight_0, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5)
  %empty_4 = call i32 (...)* @_ssdm_op_SpecMemCore([50 x i32]* %weight_1, [1 x i8]* @p_str10, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecMemCore([50 x i32]* %weight_2, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecMemCore([50 x i32]* %weight_3, [1 x i8]* @p_str12, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str12, i32 -1, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecMemCore([50 x i32]* %weight_4, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecMemCore([50 x i32]* %weight_5, [1 x i8]* @p_str14, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str14, i32 -1, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecMemCore([50 x i32]* %weight_6, [1 x i8]* @p_str15, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str15, i32 -1, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecMemCore([50 x i32]* %weight_7, [1 x i8]* @p_str16, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str16, i32 -1, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [1 x i8]* @p_str16)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecMemCore([50 x i32]* %weight_8, [1 x i8]* @p_str17, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str17, i32 -1, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecMemCore([50 x i32]* %weight_9, [1 x i8]* @p_str18, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str18, i32 -1, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18)
  call void (...)* @_ssdm_op_SpecInterface([50 x i32]* %weight_0, [50 x i32]* %weight_1, [50 x i32]* %weight_2, [50 x i32]* %weight_3, [50 x i32]* %weight_4, [50 x i32]* %weight_5, [50 x i32]* %weight_6, [50 x i32]* %weight_7, [50 x i32]* %weight_8, [50 x i32]* %weight_9, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_13 = call i32 (...)* @_ssdm_op_SpecMemCore([10 x i32]* %bias, [1 x i8]* @p_str19, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str19, i32 -1, [1 x i8]* @p_str19, [1 x i8]* @p_str19, [1 x i8]* @p_str19, [1 x i8]* @p_str19, [1 x i8]* @p_str19)
  call void (...)* @_ssdm_op_SpecInterface([10 x i32]* %bias, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ctrl, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %result_9 = phi i32 [ undef, %0 ], [ %newSel1, %_ifconv ]
  %result_8 = phi i32 [ undef, %0 ], [ %newSel3, %_ifconv ]
  %result_7 = phi i32 [ undef, %0 ], [ %newSel7, %_ifconv ]
  %result_6 = phi i32 [ undef, %0 ], [ %newSel10, %_ifconv ]
  %result_5 = phi i32 [ undef, %0 ], [ %newSel13, %_ifconv ]
  %result_4 = phi i32 [ undef, %0 ], [ %newSel15, %_ifconv ]
  %result_3 = phi i32 [ undef, %0 ], [ %newSel18, %_ifconv ]
  %result_2 = phi i32 [ undef, %0 ], [ %newSel20, %_ifconv ]
  %result_1 = phi i32 [ undef, %0 ], [ %result_1_s, %_ifconv ]
  %result_0 = phi i32 [ undef, %0 ], [ %result_0_s, %_ifconv ]
  %i = phi i4 [ 0, %0 ], [ %i_1, %_ifconv ]
  %exitcond1 = icmp eq i4 %i, -6
  %i_1 = add i4 %i, 1
  br i1 %exitcond1, label %.preheader73.preheader, label %_ifconv

.preheader73.preheader:                           ; preds = %1
  br label %.preheader73

_ifconv:                                          ; preds = %1
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %sel_tmp = icmp eq i4 %i, -8
  %sel_tmp1 = icmp eq i4 %i, 7
  %sel_tmp2 = icmp eq i4 %i, 6
  %sel_tmp3 = icmp eq i4 %i, 5
  %sel_tmp4 = icmp eq i4 %i, 4
  %sel_tmp5 = icmp eq i4 %i, 3
  %sel_tmp6 = icmp eq i4 %i, 2
  %sel_tmp7 = icmp eq i4 %i, 1
  %sel_tmp8 = icmp eq i4 %i, 0
  %or_cond = or i1 %sel_tmp8, %sel_tmp7
  %or_cond1 = or i1 %sel_tmp6, %sel_tmp5
  %or_cond2 = or i1 %sel_tmp4, %sel_tmp3
  %or_cond3 = or i1 %sel_tmp2, %sel_tmp1
  %newSel = select i1 %sel_tmp, i32 %result_9, i32 0
  %or_cond4 = or i1 %or_cond, %or_cond1
  %or_cond5 = or i1 %or_cond2, %or_cond3
  %or_cond6 = or i1 %or_cond4, %or_cond5
  %newSel1 = select i1 %or_cond6, i32 %result_9, i32 %newSel
  %newSel2 = select i1 %sel_tmp, i32 0, i32 %result_8
  %newSel3 = select i1 %or_cond6, i32 %result_8, i32 %newSel2
  %newSel4 = select i1 %sel_tmp2, i32 %result_7, i32 0
  %newSel5 = select i1 %or_cond2, i32 %result_7, i32 %newSel4
  %newSel6 = select i1 %or_cond4, i32 %result_7, i32 %newSel5
  %newSel7 = select i1 %or_cond6, i32 %newSel6, i32 %result_7
  %newSel8 = select i1 %sel_tmp2, i32 0, i32 %result_6
  %newSel9 = select i1 %or_cond2, i32 %result_6, i32 %newSel8
  %newSel10 = select i1 %or_cond4, i32 %result_6, i32 %newSel9
  %newSel11 = select i1 %sel_tmp4, i32 %result_5, i32 0
  %newSel12 = select i1 %or_cond2, i32 %newSel11, i32 %result_5
  %newSel13 = select i1 %or_cond4, i32 %result_5, i32 %newSel12
  %newSel14 = select i1 %sel_tmp4, i32 0, i32 %result_4
  %newSel15 = select i1 %or_cond4, i32 %result_4, i32 %newSel14
  %newSel16 = select i1 %sel_tmp6, i32 %result_3, i32 0
  %newSel17 = select i1 %or_cond, i32 %result_3, i32 %newSel16
  %newSel18 = select i1 %or_cond4, i32 %newSel17, i32 %result_3
  %newSel19 = select i1 %sel_tmp6, i32 0, i32 %result_2
  %newSel20 = select i1 %or_cond, i32 %result_2, i32 %newSel19
  %sel_tmp9 = select i1 %sel_tmp7, i32 0, i32 %result_1
  %result_1_s = select i1 %sel_tmp8, i32 %result_1, i32 %sel_tmp9
  %result_0_s = select i1 %sel_tmp8, i32 0, i32 %result_0
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_2)
  br label %1

.preheader73:                                     ; preds = %.preheader73.preheader, %_ifconv191
  %result_9_2 = phi i32 [ %result_9_5, %_ifconv191 ], [ %result_9, %.preheader73.preheader ]
  %result_8_2 = phi i32 [ %result_9_6, %_ifconv191 ], [ %result_8, %.preheader73.preheader ]
  %result_9_7 = phi i32 [ %result_9_8, %_ifconv191 ], [ %result_7, %.preheader73.preheader ]
  %result_9_9 = phi i32 [ %result_9_10, %_ifconv191 ], [ %result_6, %.preheader73.preheader ]
  %result_9_20 = phi i32 [ %result_9_12, %_ifconv191 ], [ %result_5, %.preheader73.preheader ]
  %result_9_3 = phi i32 [ %result_9_14, %_ifconv191 ], [ %result_4, %.preheader73.preheader ]
  %result_9_11 = phi i32 [ %result_9_16, %_ifconv191 ], [ %result_3, %.preheader73.preheader ]
  %result_9_13 = phi i32 [ %result_9_18, %_ifconv191 ], [ %result_2, %.preheader73.preheader ]
  %result_9_15 = phi i32 [ %result_9_22, %_ifconv191 ], [ %result_1, %.preheader73.preheader ]
  %result_9_17 = phi i32 [ %result_9_23, %_ifconv191 ], [ %result_0, %.preheader73.preheader ]
  %i1 = phi i4 [ %i_2, %_ifconv191 ], [ 0, %.preheader73.preheader ]
  %exitcond2 = icmp eq i4 %i1, -6
  %i_2 = add i4 %i1, 1
  br i1 %exitcond2, label %.preheader72.preheader, label %_ifconv191

.preheader72.preheader:                           ; preds = %.preheader73
  br label %.preheader72

_ifconv191:                                       ; preds = %.preheader73
  %i1_cast = zext i4 %i1 to i32
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %bias_addr = getelementptr [10 x i32]* %bias, i32 0, i32 %i1_cast
  %bias_load = load i32* %bias_addr, align 4
  %tmp_1 = call i32 @_ssdm_op_Mux.ap_auto.10i32.i4(i32 %result_9_17, i32 %result_9_15, i32 %result_9_13, i32 %result_9_11, i32 %result_9_3, i32 %result_9_20, i32 %result_9_9, i32 %result_9_7, i32 %result_8_2, i32 %result_9_2, i4 %i1)
  %result_9_24 = add i32 %bias_load, %tmp_1
  %sel_tmp10 = icmp eq i4 %i1, -8
  %sel_tmp11 = icmp eq i4 %i1, 7
  %sel_tmp12 = icmp eq i4 %i1, 6
  %sel_tmp13 = icmp eq i4 %i1, 5
  %sel_tmp14 = icmp eq i4 %i1, 4
  %sel_tmp15 = icmp eq i4 %i1, 3
  %sel_tmp16 = icmp eq i4 %i1, 2
  %sel_tmp17 = icmp eq i4 %i1, 1
  %sel_tmp18 = icmp eq i4 %i1, 0
  %or_cond7 = or i1 %sel_tmp18, %sel_tmp17
  %or_cond8 = or i1 %sel_tmp16, %sel_tmp15
  %or_cond9 = or i1 %sel_tmp14, %sel_tmp13
  %or_cond10 = or i1 %sel_tmp12, %sel_tmp11
  %newSel21 = select i1 %sel_tmp10, i32 %result_9_2, i32 %result_9_24
  %or_cond11 = or i1 %or_cond7, %or_cond8
  %or_cond12 = or i1 %or_cond9, %or_cond10
  %or_cond13 = or i1 %or_cond11, %or_cond12
  %result_9_5 = select i1 %or_cond13, i32 %result_9_2, i32 %newSel21
  %newSel22 = select i1 %sel_tmp10, i32 %result_9_24, i32 %result_8_2
  %result_9_6 = select i1 %or_cond13, i32 %result_8_2, i32 %newSel22
  %newSel23 = select i1 %sel_tmp12, i32 %result_9_7, i32 %result_9_24
  %newSel24 = select i1 %or_cond9, i32 %result_9_7, i32 %newSel23
  %newSel25 = select i1 %or_cond11, i32 %result_9_7, i32 %newSel24
  %result_9_8 = select i1 %or_cond13, i32 %newSel25, i32 %result_9_7
  %newSel26 = select i1 %sel_tmp12, i32 %result_9_24, i32 %result_9_9
  %newSel27 = select i1 %or_cond9, i32 %result_9_9, i32 %newSel26
  %result_9_10 = select i1 %or_cond11, i32 %result_9_9, i32 %newSel27
  %newSel28 = select i1 %sel_tmp14, i32 %result_9_20, i32 %result_9_24
  %newSel29 = select i1 %or_cond9, i32 %newSel28, i32 %result_9_20
  %result_9_12 = select i1 %or_cond11, i32 %result_9_20, i32 %newSel29
  %newSel30 = select i1 %sel_tmp14, i32 %result_9_24, i32 %result_9_3
  %result_9_14 = select i1 %or_cond11, i32 %result_9_3, i32 %newSel30
  %newSel31 = select i1 %sel_tmp16, i32 %result_9_11, i32 %result_9_24
  %newSel32 = select i1 %or_cond7, i32 %result_9_11, i32 %newSel31
  %result_9_16 = select i1 %or_cond11, i32 %newSel32, i32 %result_9_11
  %newSel33 = select i1 %sel_tmp16, i32 %result_9_24, i32 %result_9_13
  %result_9_18 = select i1 %or_cond7, i32 %result_9_13, i32 %newSel33
  %result_9_21 = select i1 %sel_tmp17, i32 %result_9_24, i32 %result_9_15
  %result_9_22 = select i1 %sel_tmp18, i32 %result_9_15, i32 %result_9_21
  %result_9_23 = select i1 %sel_tmp18, i32 %result_9_24, i32 %result_9_17
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_3)
  br label %.preheader73

.preheader72:                                     ; preds = %.preheader72.preheader, %2
  %result_9_4 = phi i32 [ %result_9_1, %2 ], [ %result_9_2, %.preheader72.preheader ]
  %result_8_4 = phi i32 [ %result_8_1, %2 ], [ %result_8_2, %.preheader72.preheader ]
  %result_7_4 = phi i32 [ %result_7_1, %2 ], [ %result_9_7, %.preheader72.preheader ]
  %result_6_4 = phi i32 [ %result_6_1, %2 ], [ %result_9_9, %.preheader72.preheader ]
  %result_5_4 = phi i32 [ %result_5_1, %2 ], [ %result_9_20, %.preheader72.preheader ]
  %result_4_4 = phi i32 [ %result_4_1, %2 ], [ %result_9_3, %.preheader72.preheader ]
  %result_3_4 = phi i32 [ %result_3_1, %2 ], [ %result_9_11, %.preheader72.preheader ]
  %result_2_4 = phi i32 [ %result_2_1, %2 ], [ %result_9_13, %.preheader72.preheader ]
  %result_1_4 = phi i32 [ %result_1_1, %2 ], [ %result_9_15, %.preheader72.preheader ]
  %result_0_4 = phi i32 [ %result_0_1, %2 ], [ %result_9_17, %.preheader72.preheader ]
  %row = phi i6 [ %row_1, %2 ], [ 0, %.preheader72.preheader ]
  %exitcond3 = icmp eq i6 %row, -14
  %row_1 = add i6 %row, 1
  br i1 %exitcond3, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %.preheader72
  %tmp_8 = trunc i32 %ctrl_read to i1
  br label %.preheader

; <label>:2                                       ; preds = %.preheader72
  %row_cast = zext i6 %row to i32
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50)
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_19 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_1 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_19, 0
  %weight_0_addr = getelementptr [50 x i32]* %weight_0, i32 0, i32 %row_cast
  %weight_0_load = load i32* %weight_0_addr, align 4
  %tmp_7 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_0_load)
  %result_0_1_trunc_ex = sext i23 %tmp_7 to i32
  %result_0_1 = add i32 %result_0_1_trunc_ex, %result_0_4
  %weight_1_addr = getelementptr [50 x i32]* %weight_1, i32 0, i32 %row_cast
  %weight_1_load = load i32* %weight_1_addr, align 4
  %tmp_2_1 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_1_load)
  %result_1_1_trunc_ex = sext i23 %tmp_2_1 to i32
  %result_1_1 = add i32 %result_1_1_trunc_ex, %result_1_4
  %weight_2_addr = getelementptr [50 x i32]* %weight_2, i32 0, i32 %row_cast
  %weight_2_load = load i32* %weight_2_addr, align 4
  %tmp_2_2 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_2_load)
  %result_2_1_trunc_ex = sext i23 %tmp_2_2 to i32
  %result_2_1 = add i32 %result_2_1_trunc_ex, %result_2_4
  %weight_3_addr = getelementptr [50 x i32]* %weight_3, i32 0, i32 %row_cast
  %weight_3_load = load i32* %weight_3_addr, align 4
  %tmp_2_3 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_3_load)
  %result_3_1_trunc_ex = sext i23 %tmp_2_3 to i32
  %result_3_1 = add i32 %result_3_1_trunc_ex, %result_3_4
  %weight_4_addr = getelementptr [50 x i32]* %weight_4, i32 0, i32 %row_cast
  %weight_4_load = load i32* %weight_4_addr, align 4
  %tmp_2_4 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_4_load)
  %result_4_1_trunc_ex = sext i23 %tmp_2_4 to i32
  %result_4_1 = add i32 %result_4_1_trunc_ex, %result_4_4
  %weight_5_addr = getelementptr [50 x i32]* %weight_5, i32 0, i32 %row_cast
  %weight_5_load = load i32* %weight_5_addr, align 4
  %tmp_2_5 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_5_load)
  %result_5_1_trunc_ex = sext i23 %tmp_2_5 to i32
  %result_5_1 = add i32 %result_5_1_trunc_ex, %result_5_4
  %weight_6_addr = getelementptr [50 x i32]* %weight_6, i32 0, i32 %row_cast
  %weight_6_load = load i32* %weight_6_addr, align 4
  %tmp_2_6 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_6_load)
  %result_6_1_trunc_ex = sext i23 %tmp_2_6 to i32
  %result_6_1 = add i32 %result_6_1_trunc_ex, %result_6_4
  %weight_7_addr = getelementptr [50 x i32]* %weight_7, i32 0, i32 %row_cast
  %weight_7_load = load i32* %weight_7_addr, align 4
  %tmp_2_7 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_7_load)
  %result_7_1_trunc_ex = sext i23 %tmp_2_7 to i32
  %result_7_1 = add i32 %result_7_1_trunc_ex, %result_7_4
  %weight_8_addr = getelementptr [50 x i32]* %weight_8, i32 0, i32 %row_cast
  %weight_8_load = load i32* %weight_8_addr, align 4
  %tmp_2_8 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_8_load)
  %result_8_1_trunc_ex = sext i23 %tmp_2_8 to i32
  %result_8_1 = add i32 %result_8_1_trunc_ex, %result_8_4
  %weight_9_addr = getelementptr [50 x i32]* %weight_9, i32 0, i32 %row_cast
  %weight_9_load = load i32* %weight_9_addr, align 4
  %tmp_2_9 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_9_load)
  %result_9_1_trunc_ex = sext i23 %tmp_2_9 to i32
  %result_9_1 = add i32 %result_9_1_trunc_ex, %result_9_4
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_6)
  br label %.preheader72

.preheader:                                       ; preds = %_ifconv372, %.preheader.preheader
  %writeCount_assign = phi i4 [ %col, %_ifconv372 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i4 %writeCount_assign, -6
  %col = add i4 %writeCount_assign, 1
  br i1 %exitcond, label %3, label %_ifconv372

_ifconv372:                                       ; preds = %.preheader
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_last_V = icmp eq i4 %writeCount_assign, -7
  %data_1 = call i32 @_ssdm_op_Mux.ap_auto.10i32.i4(i32 %result_0_4, i32 %result_1_4, i32 %result_2_4, i32 %result_3_4, i32 %result_4_4, i32 %result_5_4, i32 %result_6_4, i32 %result_7_4, i32 %result_8_4, i32 %result_9_4, i4 %writeCount_assign)
  %tmp_9 = trunc i32 %data_1 to i31
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %data_1, i32 31)
  %data_2 = select i1 %tmp_10, i31 0, i31 %tmp_9
  %data_2_cast = zext i31 %data_2 to i32
  %data = select i1 %tmp_8, i32 %data_2_cast, i32 %data_1
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i32 %data, i4 -1, i4 0, i2 0, i1 %tmp_last_V, i5 0, i6 0)
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp)
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
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

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
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
  %empty_23 = load i4* %1
  %empty_24 = load i4* %2
  %empty_25 = load i2* %3
  %empty_26 = load i1* %4
  %empty_27 = load i5* %5
  %empty_28 = load i6* %6
  %mrv_0 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv_0, i4 %empty_23, 1
  %mrv2 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv1, i4 %empty_24, 2
  %mrv3 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv2, i2 %empty_25, 3
  %mrv4 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv3, i1 %empty_26, 4
  %mrv5 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv4, i5 %empty_27, 5
  %mrv6 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv5, i6 %empty_28, 6
  ret { i32, i4, i4, i2, i1, i5, i6 } %mrv6
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_29 = trunc i32 %empty to i22
  ret i22 %empty_29
}

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_Mux.ap_auto.10i32.i4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i4) {
entry:
  switch i4 %10, label %case9 [
    i4 0, label %case0
    i4 1, label %case1
    i4 2, label %case2
    i4 3, label %case3
    i4 4, label %case4
    i4 5, label %case5
    i4 6, label %case6
    i4 7, label %case7
    i4 -8, label %case8
  ]

case0:                                            ; preds = %case9, %case8, %case7, %case6, %case5, %case4, %case3, %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ], [ %4, %case4 ], [ %5, %case5 ], [ %6, %case6 ], [ %7, %case7 ], [ %8, %case8 ], [ %9, %case9 ]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0

case4:                                            ; preds = %entry
  br label %case0

case5:                                            ; preds = %entry
  br label %case0

case6:                                            ; preds = %entry
  br label %case0

case7:                                            ; preds = %entry
  br label %case0

case8:                                            ; preds = %entry
  br label %case0

case9:                                            ; preds = %entry
  br label %case0
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_30 = and i32 %0, %empty
  %empty_31 = icmp ne i32 %empty_30, 0
  ret i1 %empty_31
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !25, !25, !16, !16, !27, !29, !29, !16, !16, !31, !29, !29, !16, !16, !33, !29, !29, !16, !16, !35, !29, !29, !16, !16, !37, !16, !16, !39, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !41}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!47}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<axiu32_t> &", metadata !"hls::stream<axiu32_t> &", metadata !"uint32_t [10]*", metadata !"uint32_t*", metadata !"uint32_t"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inStream", metadata !"outStream", metadata !"weight", metadata !"bias", metadata !"ctrl"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axiu<32, 2, 5, 6> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !6}
!17 = metadata !{metadata !"kernel_arg_addr_space"}
!18 = metadata !{metadata !"kernel_arg_access_qual"}
!19 = metadata !{metadata !"kernel_arg_type"}
!20 = metadata !{metadata !"kernel_arg_type_qual"}
!21 = metadata !{metadata !"kernel_arg_name"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !15, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !24, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!29 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !11, metadata !15, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !24, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<6> &"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !24, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !36, metadata !11, metadata !24, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!37 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !24, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !11, metadata !40, metadata !6}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"writeCount"}
!41 = metadata !{null, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !6}
!42 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!43 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"ufixp32_t", metadata !"ufixp32_t"}
!45 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!47 = metadata !{metadata !48, [1 x i32]* @llvm_global_ctors_0}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"llvm.global_ctors.0", metadata !52, metadata !"", i32 0, i32 31}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 0, i32 1}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 31, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"weight", metadata !58, metadata !"unsigned int", i32 0, i32 31}
!58 = metadata !{metadata !59, metadata !60}
!59 = metadata !{i32 0, i32 49, i32 1}
!60 = metadata !{i32 9, i32 9, i32 2}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"weight", metadata !65, metadata !"unsigned int", i32 0, i32 31}
!65 = metadata !{metadata !59, metadata !66}
!66 = metadata !{i32 8, i32 8, i32 2}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"weight", metadata !71, metadata !"unsigned int", i32 0, i32 31}
!71 = metadata !{metadata !59, metadata !72}
!72 = metadata !{i32 7, i32 7, i32 2}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 31, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"weight", metadata !77, metadata !"unsigned int", i32 0, i32 31}
!77 = metadata !{metadata !59, metadata !78}
!78 = metadata !{i32 6, i32 6, i32 2}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"weight", metadata !83, metadata !"unsigned int", i32 0, i32 31}
!83 = metadata !{metadata !59, metadata !84}
!84 = metadata !{i32 5, i32 5, i32 2}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 31, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"weight", metadata !89, metadata !"unsigned int", i32 0, i32 31}
!89 = metadata !{metadata !59, metadata !90}
!90 = metadata !{i32 4, i32 4, i32 2}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 31, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"weight", metadata !95, metadata !"unsigned int", i32 0, i32 31}
!95 = metadata !{metadata !59, metadata !96}
!96 = metadata !{i32 3, i32 3, i32 2}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 31, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"weight", metadata !101, metadata !"unsigned int", i32 0, i32 31}
!101 = metadata !{metadata !59, metadata !102}
!102 = metadata !{i32 2, i32 2, i32 2}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 31, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"weight", metadata !107, metadata !"unsigned int", i32 0, i32 31}
!107 = metadata !{metadata !59, metadata !108}
!108 = metadata !{i32 1, i32 1, i32 2}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 0, i32 31, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"weight", metadata !113, metadata !"unsigned int", i32 0, i32 31}
!113 = metadata !{metadata !59, metadata !114}
!114 = metadata !{i32 0, i32 0, i32 2}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 31, metadata !117}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !"inStream.V.data.V", metadata !52, metadata !"uint32", i32 0, i32 31}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 3, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"inStream.V.keep.V", metadata !52, metadata !"uint4", i32 0, i32 3}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 3, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"inStream.V.strb.V", metadata !52, metadata !"uint4", i32 0, i32 3}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 1, metadata !129}
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !"inStream.V.user.V", metadata !52, metadata !"uint2", i32 0, i32 1}
!131 = metadata !{metadata !132}
!132 = metadata !{i32 0, i32 0, metadata !133}
!133 = metadata !{metadata !134}
!134 = metadata !{metadata !"inStream.V.last.V", metadata !52, metadata !"uint1", i32 0, i32 0}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 0, i32 4, metadata !137}
!137 = metadata !{metadata !138}
!138 = metadata !{metadata !"inStream.V.id.V", metadata !52, metadata !"uint5", i32 0, i32 4}
!139 = metadata !{metadata !140}
!140 = metadata !{i32 0, i32 5, metadata !141}
!141 = metadata !{metadata !142}
!142 = metadata !{metadata !"inStream.V.dest.V", metadata !52, metadata !"uint6", i32 0, i32 5}
!143 = metadata !{metadata !144}
!144 = metadata !{i32 0, i32 31, metadata !145}
!145 = metadata !{metadata !146}
!146 = metadata !{metadata !"outStream.V.data.V", metadata !52, metadata !"uint32", i32 0, i32 31}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 0, i32 3, metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{metadata !"outStream.V.keep.V", metadata !52, metadata !"uint4", i32 0, i32 3}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 3, metadata !153}
!153 = metadata !{metadata !154}
!154 = metadata !{metadata !"outStream.V.strb.V", metadata !52, metadata !"uint4", i32 0, i32 3}
!155 = metadata !{metadata !156}
!156 = metadata !{i32 0, i32 1, metadata !157}
!157 = metadata !{metadata !158}
!158 = metadata !{metadata !"outStream.V.user.V", metadata !52, metadata !"uint2", i32 0, i32 1}
!159 = metadata !{metadata !160}
!160 = metadata !{i32 0, i32 0, metadata !161}
!161 = metadata !{metadata !162}
!162 = metadata !{metadata !"outStream.V.last.V", metadata !52, metadata !"uint1", i32 0, i32 0}
!163 = metadata !{metadata !164}
!164 = metadata !{i32 0, i32 4, metadata !165}
!165 = metadata !{metadata !166}
!166 = metadata !{metadata !"outStream.V.id.V", metadata !52, metadata !"uint5", i32 0, i32 4}
!167 = metadata !{metadata !168}
!168 = metadata !{i32 0, i32 5, metadata !169}
!169 = metadata !{metadata !170}
!170 = metadata !{metadata !"outStream.V.dest.V", metadata !52, metadata !"uint6", i32 0, i32 5}
!171 = metadata !{metadata !172}
!172 = metadata !{i32 0, i32 31, metadata !173}
!173 = metadata !{metadata !174}
!174 = metadata !{metadata !"bias", metadata !175, metadata !"unsigned int", i32 0, i32 31}
!175 = metadata !{metadata !176}
!176 = metadata !{i32 0, i32 9, i32 1}
!177 = metadata !{metadata !178}
!178 = metadata !{i32 0, i32 31, metadata !179}
!179 = metadata !{metadata !180}
!180 = metadata !{metadata !"ctrl", metadata !181, metadata !"unsigned int", i32 0, i32 31}
!181 = metadata !{metadata !182}
!182 = metadata !{i32 0, i32 0, i32 0}
