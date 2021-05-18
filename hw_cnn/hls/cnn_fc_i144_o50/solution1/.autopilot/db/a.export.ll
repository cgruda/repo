; ModuleID = 'D:/School/Project/new_repo/HLS/cnn_fc_i144_o50/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@cnn_fc_i144_o50_str = internal unnamed_addr constant [16 x i8] c"cnn_fc_i144_o50\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str5 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str4 = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@p_str34 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str33 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str32 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str31 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str30 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str28 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str27 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str26 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str25 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str24 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str23 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str22 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str21 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str20 = internal unnamed_addr constant [1 x i8] zeroinitializer
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
@p_str10 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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

define void @cnn_fc_i144_o50(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [288 x i32]* %weight_0, [288 x i32]* %weight_1, [288 x i32]* %weight_2, [288 x i32]* %weight_3, [288 x i32]* %weight_4, [288 x i32]* %weight_5, [288 x i32]* %weight_6, [288 x i32]* %weight_7, [288 x i32]* %weight_8, [288 x i32]* %weight_9, [288 x i32]* %weight_10, [288 x i32]* %weight_11, [288 x i32]* %weight_12, [288 x i32]* %weight_13, [288 x i32]* %weight_14, [288 x i32]* %weight_15, [288 x i32]* %weight_16, [288 x i32]* %weight_17, [288 x i32]* %weight_18, [288 x i32]* %weight_19, [288 x i32]* %weight_20, [288 x i32]* %weight_21, [288 x i32]* %weight_22, [288 x i32]* %weight_23, [288 x i32]* %weight_24, [50 x i32]* %bias, i32 %ctrl) {
  %result_0 = alloca i32
  %result_1 = alloca i32
  %result_2 = alloca i32
  %result_3 = alloca i32
  %result_4 = alloca i32
  %result_5 = alloca i32
  %result_6 = alloca i32
  %result_7 = alloca i32
  %result_8 = alloca i32
  %result_9 = alloca i32
  %result_10 = alloca i32
  %result_11 = alloca i32
  %result_12 = alloca i32
  %result_13 = alloca i32
  %result_14 = alloca i32
  %result_15 = alloca i32
  %result_16 = alloca i32
  %result_17 = alloca i32
  %result_18 = alloca i32
  %result_19 = alloca i32
  %result_20 = alloca i32
  %result_21 = alloca i32
  %result_22 = alloca i32
  %result_23 = alloca i32
  %result_24 = alloca i32
  %result_25 = alloca i32
  %result_26 = alloca i32
  %result_27 = alloca i32
  %result_28 = alloca i32
  %result_29 = alloca i32
  %result_30 = alloca i32
  %result_31 = alloca i32
  %result_32 = alloca i32
  %result_33 = alloca i32
  %result_34 = alloca i32
  %result_35 = alloca i32
  %result_36 = alloca i32
  %result_37 = alloca i32
  %result_38 = alloca i32
  %result_39 = alloca i32
  %result_40 = alloca i32
  %result_41 = alloca i32
  %result_42 = alloca i32
  %result_43 = alloca i32
  %result_44 = alloca i32
  %result_45 = alloca i32
  %result_46 = alloca i32
  %result_47 = alloca i32
  %result_48 = alloca i32
  %result_49 = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_24), !map !54
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_23), !map !61
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_22), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_21), !map !73
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_20), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_19), !map !85
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_18), !map !91
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_17), !map !97
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_16), !map !103
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_15), !map !109
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_14), !map !115
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_13), !map !121
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_12), !map !127
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_11), !map !133
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_10), !map !139
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_9), !map !145
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_8), !map !151
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_7), !map !157
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_6), !map !163
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_5), !map !169
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_4), !map !175
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_3), !map !181
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_2), !map !187
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_1), !map !193
  call void (...)* @_ssdm_op_SpecBitsMap([288 x i32]* %weight_0), !map !199
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %inStream_V_data_V), !map !205
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_keep_V), !map !209
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_strb_V), !map !213
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inStream_V_user_V), !map !217
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_last_V), !map !221
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %inStream_V_id_V), !map !225
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %inStream_V_dest_V), !map !229
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %outStream_V_data_V), !map !233
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_keep_V), !map !237
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_strb_V), !map !241
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %outStream_V_user_V), !map !245
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_last_V), !map !249
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %outStream_V_id_V), !map !253
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %outStream_V_dest_V), !map !257
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %bias), !map !261
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ctrl), !map !267
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @cnn_fc_i144_o50_str) nounwind
  %ctrl_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ctrl)
  call void (...)* @_ssdm_op_SpecInterface(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_0, [1 x i8]* @p_str5, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str5, i32 -1, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_1, [1 x i8]* @p_str6, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str6, i32 -1, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6, [1 x i8]* @p_str6)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_2, [1 x i8]* @p_str11, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_3, [1 x i8]* @p_str12, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str12, i32 -1, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_4, [1 x i8]* @p_str13, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str13, i32 -1, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_5, [1 x i8]* @p_str14, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str14, i32 -1, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [1 x i8]* @p_str14)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_6, [1 x i8]* @p_str15, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str15, i32 -1, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_7, [1 x i8]* @p_str16, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str16, i32 -1, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [1 x i8]* @p_str16)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_8, [1 x i8]* @p_str17, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str17, i32 -1, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17, [1 x i8]* @p_str17)
  %empty_13 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_9, [1 x i8]* @p_str18, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str18, i32 -1, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_10, [1 x i8]* @p_str19, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str19, i32 -1, [1 x i8]* @p_str19, [1 x i8]* @p_str19, [1 x i8]* @p_str19, [1 x i8]* @p_str19, [1 x i8]* @p_str19)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_11, [1 x i8]* @p_str20, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str20, i32 -1, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_12, [1 x i8]* @p_str21, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str21, i32 -1, [1 x i8]* @p_str21, [1 x i8]* @p_str21, [1 x i8]* @p_str21, [1 x i8]* @p_str21, [1 x i8]* @p_str21)
  %empty_17 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_13, [1 x i8]* @p_str22, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str22, i32 -1, [1 x i8]* @p_str22, [1 x i8]* @p_str22, [1 x i8]* @p_str22, [1 x i8]* @p_str22, [1 x i8]* @p_str22)
  %empty_18 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_14, [1 x i8]* @p_str23, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str23, i32 -1, [1 x i8]* @p_str23, [1 x i8]* @p_str23, [1 x i8]* @p_str23, [1 x i8]* @p_str23, [1 x i8]* @p_str23)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_15, [1 x i8]* @p_str24, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str24, i32 -1, [1 x i8]* @p_str24, [1 x i8]* @p_str24, [1 x i8]* @p_str24, [1 x i8]* @p_str24, [1 x i8]* @p_str24)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_16, [1 x i8]* @p_str25, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str25, i32 -1, [1 x i8]* @p_str25, [1 x i8]* @p_str25, [1 x i8]* @p_str25, [1 x i8]* @p_str25, [1 x i8]* @p_str25)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_17, [1 x i8]* @p_str26, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str26, i32 -1, [1 x i8]* @p_str26, [1 x i8]* @p_str26, [1 x i8]* @p_str26, [1 x i8]* @p_str26, [1 x i8]* @p_str26)
  %empty_22 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_18, [1 x i8]* @p_str27, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str27, i32 -1, [1 x i8]* @p_str27, [1 x i8]* @p_str27, [1 x i8]* @p_str27, [1 x i8]* @p_str27, [1 x i8]* @p_str27)
  %empty_23 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_19, [1 x i8]* @p_str28, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str28, i32 -1, [1 x i8]* @p_str28, [1 x i8]* @p_str28, [1 x i8]* @p_str28, [1 x i8]* @p_str28, [1 x i8]* @p_str28)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_20, [1 x i8]* @p_str29, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str29, i32 -1, [1 x i8]* @p_str29, [1 x i8]* @p_str29, [1 x i8]* @p_str29, [1 x i8]* @p_str29, [1 x i8]* @p_str29)
  %empty_25 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_21, [1 x i8]* @p_str30, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str30, i32 -1, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  %empty_26 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_22, [1 x i8]* @p_str31, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str31, i32 -1, [1 x i8]* @p_str31, [1 x i8]* @p_str31, [1 x i8]* @p_str31, [1 x i8]* @p_str31, [1 x i8]* @p_str31)
  %empty_27 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_23, [1 x i8]* @p_str32, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str32, i32 -1, [1 x i8]* @p_str32, [1 x i8]* @p_str32, [1 x i8]* @p_str32, [1 x i8]* @p_str32, [1 x i8]* @p_str32)
  %empty_28 = call i32 (...)* @_ssdm_op_SpecMemCore([288 x i32]* %weight_24, [1 x i8]* @p_str33, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str33, i32 -1, [1 x i8]* @p_str33, [1 x i8]* @p_str33, [1 x i8]* @p_str33, [1 x i8]* @p_str33, [1 x i8]* @p_str33)
  call void (...)* @_ssdm_op_SpecInterface([288 x i32]* %weight_0, [288 x i32]* %weight_1, [288 x i32]* %weight_2, [288 x i32]* %weight_3, [288 x i32]* %weight_4, [288 x i32]* %weight_5, [288 x i32]* %weight_6, [288 x i32]* %weight_7, [288 x i32]* %weight_8, [288 x i32]* %weight_9, [288 x i32]* %weight_10, [288 x i32]* %weight_11, [288 x i32]* %weight_12, [288 x i32]* %weight_13, [288 x i32]* %weight_14, [288 x i32]* %weight_15, [288 x i32]* %weight_16, [288 x i32]* %weight_17, [288 x i32]* %weight_18, [288 x i32]* %weight_19, [288 x i32]* %weight_20, [288 x i32]* %weight_21, [288 x i32]* %weight_22, [288 x i32]* %weight_23, [288 x i32]* %weight_24, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  %empty_29 = call i32 (...)* @_ssdm_op_SpecMemCore([50 x i32]* %bias, [1 x i8]* @p_str34, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str34, i32 -1, [1 x i8]* @p_str34, [1 x i8]* @p_str34, [1 x i8]* @p_str34, [1 x i8]* @p_str34, [1 x i8]* @p_str34)
  call void (...)* @_ssdm_op_SpecInterface([50 x i32]* %bias, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ctrl, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [5 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %1

; <label>:1                                       ; preds = %branch50, %0
  %i = phi i6 [ 0, %0 ], [ %i_1, %branch50 ]
  %result_0_load = load i32* %result_0
  %result_1_load = load i32* %result_1
  %result_2_load = load i32* %result_2
  %result_3_load = load i32* %result_3
  %result_4_load = load i32* %result_4
  %result_5_load = load i32* %result_5
  %result_6_load = load i32* %result_6
  %result_7_load = load i32* %result_7
  %result_8_load = load i32* %result_8
  %result_9_load = load i32* %result_9
  %result_10_load = load i32* %result_10
  %result_11_load = load i32* %result_11
  %result_12_load = load i32* %result_12
  %result_13_load = load i32* %result_13
  %result_14_load = load i32* %result_14
  %result_15_load = load i32* %result_15
  %result_16_load = load i32* %result_16
  %result_17_load = load i32* %result_17
  %result_18_load = load i32* %result_18
  %result_19_load = load i32* %result_19
  %result_20_load = load i32* %result_20
  %result_21_load = load i32* %result_21
  %result_22_load = load i32* %result_22
  %result_23_load = load i32* %result_23
  %result_24_load = load i32* %result_24
  %result_25_load = load i32* %result_25
  %result_26_load = load i32* %result_26
  %result_27_load = load i32* %result_27
  %result_28_load = load i32* %result_28
  %result_29_load = load i32* %result_29
  %result_30_load = load i32* %result_30
  %result_31_load = load i32* %result_31
  %result_32_load = load i32* %result_32
  %result_33_load = load i32* %result_33
  %result_34_load = load i32* %result_34
  %result_35_load = load i32* %result_35
  %result_36_load = load i32* %result_36
  %result_37_load = load i32* %result_37
  %result_38_load = load i32* %result_38
  %result_39_load = load i32* %result_39
  %result_40_load = load i32* %result_40
  %result_41_load = load i32* %result_41
  %result_42_load = load i32* %result_42
  %result_43_load = load i32* %result_43
  %result_44_load = load i32* %result_44
  %result_45_load = load i32* %result_45
  %result_46_load = load i32* %result_46
  %result_47_load = load i32* %result_47
  %result_48_load = load i32* %result_48
  %result_49_load = load i32* %result_49
  %exitcond1 = icmp eq i6 %i, -14
  %i_1 = add i6 %i, 1
  br i1 %exitcond1, label %.preheader73.preheader, label %2

.preheader73.preheader:                           ; preds = %1
  %result_49_3 = alloca i32
  %result_49_5 = alloca i32
  %result_49_6 = alloca i32
  %result_49_7 = alloca i32
  %result_49_8 = alloca i32
  %result_49_9 = alloca i32
  %result_49_10 = alloca i32
  %result_49_11 = alloca i32
  %result_49_12 = alloca i32
  %result_49_13 = alloca i32
  %result_49_14 = alloca i32
  %result_49_15 = alloca i32
  %result_49_16 = alloca i32
  %result_49_17 = alloca i32
  %result_49_18 = alloca i32
  %result_49_19 = alloca i32
  %result_49_20 = alloca i32
  %result_49_21 = alloca i32
  %result_49_22 = alloca i32
  %result_49_23 = alloca i32
  %result_49_24 = alloca i32
  %result_49_25 = alloca i32
  %result_49_26 = alloca i32
  %result_49_27 = alloca i32
  %result_49_28 = alloca i32
  %result_49_29 = alloca i32
  %result_49_30 = alloca i32
  %result_49_31 = alloca i32
  %result_49_32 = alloca i32
  %result_49_33 = alloca i32
  %result_49_34 = alloca i32
  %result_49_35 = alloca i32
  %result_49_36 = alloca i32
  %result_49_37 = alloca i32
  %result_49_38 = alloca i32
  %result_49_39 = alloca i32
  %result_49_40 = alloca i32
  %result_49_41 = alloca i32
  %result_49_42 = alloca i32
  %result_49_43 = alloca i32
  %result_49_44 = alloca i32
  %result_49_45 = alloca i32
  %result_49_46 = alloca i32
  %result_49_47 = alloca i32
  %result_49_48 = alloca i32
  %result_49_49 = alloca i32
  %result_49_50 = alloca i32
  %result_49_51 = alloca i32
  %result_49_52 = alloca i32
  %result_49_2 = alloca i32
  store i32 %result_49_load, i32* %result_49_2
  store i32 %result_48_load, i32* %result_49_52
  store i32 %result_47_load, i32* %result_49_51
  store i32 %result_46_load, i32* %result_49_50
  store i32 %result_45_load, i32* %result_49_49
  store i32 %result_44_load, i32* %result_49_48
  store i32 %result_43_load, i32* %result_49_47
  store i32 %result_42_load, i32* %result_49_46
  store i32 %result_41_load, i32* %result_49_45
  store i32 %result_40_load, i32* %result_49_44
  store i32 %result_39_load, i32* %result_49_43
  store i32 %result_38_load, i32* %result_49_42
  store i32 %result_37_load, i32* %result_49_41
  store i32 %result_36_load, i32* %result_49_40
  store i32 %result_35_load, i32* %result_49_39
  store i32 %result_34_load, i32* %result_49_38
  store i32 %result_33_load, i32* %result_49_37
  store i32 %result_32_load, i32* %result_49_36
  store i32 %result_31_load, i32* %result_49_35
  store i32 %result_30_load, i32* %result_49_34
  store i32 %result_29_load, i32* %result_49_33
  store i32 %result_28_load, i32* %result_49_32
  store i32 %result_27_load, i32* %result_49_31
  store i32 %result_26_load, i32* %result_49_30
  store i32 %result_25_load, i32* %result_49_29
  store i32 %result_24_load, i32* %result_49_28
  store i32 %result_23_load, i32* %result_49_27
  store i32 %result_22_load, i32* %result_49_26
  store i32 %result_21_load, i32* %result_49_25
  store i32 %result_20_load, i32* %result_49_24
  store i32 %result_19_load, i32* %result_49_23
  store i32 %result_18_load, i32* %result_49_22
  store i32 %result_17_load, i32* %result_49_21
  store i32 %result_16_load, i32* %result_49_20
  store i32 %result_15_load, i32* %result_49_19
  store i32 %result_14_load, i32* %result_49_18
  store i32 %result_13_load, i32* %result_49_17
  store i32 %result_12_load, i32* %result_49_16
  store i32 %result_11_load, i32* %result_49_15
  store i32 %result_10_load, i32* %result_49_14
  store i32 %result_9_load, i32* %result_49_13
  store i32 %result_8_load, i32* %result_49_12
  store i32 %result_7_load, i32* %result_49_11
  store i32 %result_6_load, i32* %result_49_10
  store i32 %result_5_load, i32* %result_49_9
  store i32 %result_4_load, i32* %result_49_8
  store i32 %result_3_load, i32* %result_49_7
  store i32 %result_2_load, i32* %result_49_6
  store i32 %result_1_load, i32* %result_49_5
  store i32 %result_0_load, i32* %result_49_3
  br label %.preheader73

; <label>:2                                       ; preds = %1
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  switch i6 %i, label %branch99 [
    i6 0, label %branch50.pre
    i6 1, label %branch51
    i6 2, label %branch52
    i6 3, label %branch53
    i6 4, label %branch54
    i6 5, label %branch55
    i6 6, label %branch56
    i6 7, label %branch57
    i6 8, label %branch58
    i6 9, label %branch59
    i6 10, label %branch60
    i6 11, label %branch61
    i6 12, label %branch62
    i6 13, label %branch63
    i6 14, label %branch64
    i6 15, label %branch65
    i6 16, label %branch66
    i6 17, label %branch67
    i6 18, label %branch68
    i6 19, label %branch69
    i6 20, label %branch70
    i6 21, label %branch71
    i6 22, label %branch72
    i6 23, label %branch73
    i6 24, label %branch74
    i6 25, label %branch75
    i6 26, label %branch76
    i6 27, label %branch77
    i6 28, label %branch78
    i6 29, label %branch79
    i6 30, label %branch80
    i6 31, label %branch81
    i6 -32, label %branch82
    i6 -31, label %branch83
    i6 -30, label %branch84
    i6 -29, label %branch85
    i6 -28, label %branch86
    i6 -27, label %branch87
    i6 -26, label %branch88
    i6 -25, label %branch89
    i6 -24, label %branch90
    i6 -23, label %branch91
    i6 -22, label %branch92
    i6 -21, label %branch93
    i6 -20, label %branch94
    i6 -19, label %branch95
    i6 -18, label %branch96
    i6 -17, label %branch97
    i6 -16, label %branch98
  ]

branch50.pre:                                     ; preds = %2
  store i32 0, i32* %result_0
  br label %branch50

branch50:                                         ; preds = %branch50.pre, %branch99, %branch98, %branch97, %branch96, %branch95, %branch94, %branch93, %branch92, %branch91, %branch90, %branch89, %branch88, %branch87, %branch86, %branch85, %branch84, %branch83, %branch82, %branch81, %branch80, %branch79, %branch78, %branch77, %branch76, %branch75, %branch74, %branch73, %branch72, %branch71, %branch70, %branch69, %branch68, %branch67, %branch66, %branch65, %branch64, %branch63, %branch62, %branch61, %branch60, %branch59, %branch58, %branch57, %branch56, %branch55, %branch54, %branch53, %branch52, %branch51
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_2)
  br label %1

.preheader73:                                     ; preds = %.preheader73.preheader, %branch0
  %i1 = phi i6 [ %i_2, %branch0 ], [ 0, %.preheader73.preheader ]
  %result_49_3_load = load i32* %result_49_3
  %result_49_5_load = load i32* %result_49_5
  %result_49_6_load = load i32* %result_49_6
  %result_49_7_load = load i32* %result_49_7
  %result_49_8_load = load i32* %result_49_8
  %result_49_9_load = load i32* %result_49_9
  %result_49_10_load = load i32* %result_49_10
  %result_49_11_load = load i32* %result_49_11
  %result_49_12_load = load i32* %result_49_12
  %result_49_13_load = load i32* %result_49_13
  %result_49_14_load = load i32* %result_49_14
  %result_49_15_load = load i32* %result_49_15
  %result_49_16_load = load i32* %result_49_16
  %result_49_17_load = load i32* %result_49_17
  %result_49_18_load = load i32* %result_49_18
  %result_49_19_load = load i32* %result_49_19
  %result_49_20_load = load i32* %result_49_20
  %result_49_21_load = load i32* %result_49_21
  %result_49_22_load = load i32* %result_49_22
  %result_49_23_load = load i32* %result_49_23
  %result_49_24_load = load i32* %result_49_24
  %result_49_25_load = load i32* %result_49_25
  %result_49_26_load = load i32* %result_49_26
  %result_49_27_load = load i32* %result_49_27
  %result_49_28_load = load i32* %result_49_28
  %result_49_29_load = load i32* %result_49_29
  %result_49_30_load = load i32* %result_49_30
  %result_49_31_load = load i32* %result_49_31
  %result_49_32_load = load i32* %result_49_32
  %result_49_33_load = load i32* %result_49_33
  %result_49_34_load = load i32* %result_49_34
  %result_49_35_load = load i32* %result_49_35
  %result_49_36_load = load i32* %result_49_36
  %result_49_37_load = load i32* %result_49_37
  %result_49_38_load = load i32* %result_49_38
  %result_49_39_load = load i32* %result_49_39
  %result_49_40_load = load i32* %result_49_40
  %result_49_41_load = load i32* %result_49_41
  %result_49_42_load = load i32* %result_49_42
  %result_49_43_load = load i32* %result_49_43
  %result_49_44_load = load i32* %result_49_44
  %result_49_45_load = load i32* %result_49_45
  %result_49_46_load = load i32* %result_49_46
  %result_49_47_load = load i32* %result_49_47
  %result_49_48_load = load i32* %result_49_48
  %result_49_49_load = load i32* %result_49_49
  %result_49_50_load = load i32* %result_49_50
  %result_49_51_load = load i32* %result_49_51
  %result_49_52_load = load i32* %result_49_52
  %result_49_2_load = load i32* %result_49_2
  %exitcond2 = icmp eq i6 %i1, -14
  %i_2 = add i6 %i1, 1
  br i1 %exitcond2, label %.preheader72.preheader, label %3

.preheader72.preheader:                           ; preds = %.preheader73
  br label %.preheader72

; <label>:3                                       ; preds = %.preheader73
  %i1_cast = zext i6 %i1 to i32
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50)
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %bias_addr = getelementptr [50 x i32]* %bias, i32 0, i32 %i1_cast
  %bias_load = load i32* %bias_addr, align 4
  %tmp_1 = call i32 @_ssdm_op_Mux.ap_auto.50i32.i6(i32 %result_49_3_load, i32 %result_49_5_load, i32 %result_49_6_load, i32 %result_49_7_load, i32 %result_49_8_load, i32 %result_49_9_load, i32 %result_49_10_load, i32 %result_49_11_load, i32 %result_49_12_load, i32 %result_49_13_load, i32 %result_49_14_load, i32 %result_49_15_load, i32 %result_49_16_load, i32 %result_49_17_load, i32 %result_49_18_load, i32 %result_49_19_load, i32 %result_49_20_load, i32 %result_49_21_load, i32 %result_49_22_load, i32 %result_49_23_load, i32 %result_49_24_load, i32 %result_49_25_load, i32 %result_49_26_load, i32 %result_49_27_load, i32 %result_49_28_load, i32 %result_49_29_load, i32 %result_49_30_load, i32 %result_49_31_load, i32 %result_49_32_load, i32 %result_49_33_load, i32 %result_49_34_load, i32 %result_49_35_load, i32 %result_49_36_load, i32 %result_49_37_load, i32 %result_49_38_load, i32 %result_49_39_load, i32 %result_49_40_load, i32 %result_49_41_load, i32 %result_49_42_load, i32 %result_49_43_load, i32 %result_49_44_load, i32 %result_49_45_load, i32 %result_49_46_load, i32 %result_49_47_load, i32 %result_49_48_load, i32 %result_49_49_load, i32 %result_49_50_load, i32 %result_49_51_load, i32 %result_49_52_load, i32 %result_49_2_load, i6 %i1)
  %result_0_3 = add i32 %bias_load, %tmp_1
  switch i6 %i1, label %branch49 [
    i6 0, label %branch0.pre
    i6 1, label %branch1
    i6 2, label %branch2
    i6 3, label %branch3
    i6 4, label %branch4
    i6 5, label %branch5
    i6 6, label %branch6
    i6 7, label %branch7
    i6 8, label %branch8
    i6 9, label %branch9
    i6 10, label %branch10
    i6 11, label %branch11
    i6 12, label %branch12
    i6 13, label %branch13
    i6 14, label %branch14
    i6 15, label %branch15
    i6 16, label %branch16
    i6 17, label %branch17
    i6 18, label %branch18
    i6 19, label %branch19
    i6 20, label %branch20
    i6 21, label %branch21
    i6 22, label %branch22
    i6 23, label %branch23
    i6 24, label %branch24
    i6 25, label %branch25
    i6 26, label %branch26
    i6 27, label %branch27
    i6 28, label %branch28
    i6 29, label %branch29
    i6 30, label %branch30
    i6 31, label %branch31
    i6 -32, label %branch32
    i6 -31, label %branch33
    i6 -30, label %branch34
    i6 -29, label %branch35
    i6 -28, label %branch36
    i6 -27, label %branch37
    i6 -26, label %branch38
    i6 -25, label %branch39
    i6 -24, label %branch40
    i6 -23, label %branch41
    i6 -22, label %branch42
    i6 -21, label %branch43
    i6 -20, label %branch44
    i6 -19, label %branch45
    i6 -18, label %branch46
    i6 -17, label %branch47
    i6 -16, label %branch48
  ]

branch0.pre:                                      ; preds = %3
  store i32 %result_0_3, i32* %result_49_3
  br label %branch0

branch0:                                          ; preds = %branch0.pre, %branch49, %branch48, %branch47, %branch46, %branch45, %branch44, %branch43, %branch42, %branch41, %branch40, %branch39, %branch38, %branch37, %branch36, %branch35, %branch34, %branch33, %branch32, %branch31, %branch30, %branch29, %branch28, %branch27, %branch26, %branch25, %branch24, %branch23, %branch22, %branch21, %branch20, %branch19, %branch18, %branch17, %branch16, %branch15, %branch14, %branch13, %branch12, %branch11, %branch10, %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1
  %empty_33 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_3)
  br label %.preheader73

.preheader72:                                     ; preds = %.preheader72.preheader, %4
  %result_49_4 = phi i32 [ %result_49_1, %4 ], [ %result_49_2_load, %.preheader72.preheader ]
  %result_48_4 = phi i32 [ %result_48_1, %4 ], [ %result_49_52_load, %.preheader72.preheader ]
  %result_47_4 = phi i32 [ %result_47_1, %4 ], [ %result_49_51_load, %.preheader72.preheader ]
  %result_46_4 = phi i32 [ %result_46_1, %4 ], [ %result_49_50_load, %.preheader72.preheader ]
  %result_45_4 = phi i32 [ %result_45_1, %4 ], [ %result_49_49_load, %.preheader72.preheader ]
  %result_44_4 = phi i32 [ %result_44_1, %4 ], [ %result_49_48_load, %.preheader72.preheader ]
  %result_43_4 = phi i32 [ %result_43_1, %4 ], [ %result_49_47_load, %.preheader72.preheader ]
  %result_42_4 = phi i32 [ %result_42_1, %4 ], [ %result_49_46_load, %.preheader72.preheader ]
  %result_41_4 = phi i32 [ %result_41_1, %4 ], [ %result_49_45_load, %.preheader72.preheader ]
  %result_40_4 = phi i32 [ %result_40_1, %4 ], [ %result_49_44_load, %.preheader72.preheader ]
  %result_39_4 = phi i32 [ %result_39_1, %4 ], [ %result_49_43_load, %.preheader72.preheader ]
  %result_38_4 = phi i32 [ %result_38_1, %4 ], [ %result_49_42_load, %.preheader72.preheader ]
  %result_37_4 = phi i32 [ %result_37_1, %4 ], [ %result_49_41_load, %.preheader72.preheader ]
  %result_36_4 = phi i32 [ %result_36_1, %4 ], [ %result_49_40_load, %.preheader72.preheader ]
  %result_35_4 = phi i32 [ %result_35_1, %4 ], [ %result_49_39_load, %.preheader72.preheader ]
  %result_34_4 = phi i32 [ %result_34_1, %4 ], [ %result_49_38_load, %.preheader72.preheader ]
  %result_33_4 = phi i32 [ %result_33_1, %4 ], [ %result_49_37_load, %.preheader72.preheader ]
  %result_32_4 = phi i32 [ %result_32_1, %4 ], [ %result_49_36_load, %.preheader72.preheader ]
  %result_31_4 = phi i32 [ %result_31_1, %4 ], [ %result_49_35_load, %.preheader72.preheader ]
  %result_30_4 = phi i32 [ %result_30_1, %4 ], [ %result_49_34_load, %.preheader72.preheader ]
  %result_29_4 = phi i32 [ %result_29_1, %4 ], [ %result_49_33_load, %.preheader72.preheader ]
  %result_28_4 = phi i32 [ %result_28_1, %4 ], [ %result_49_32_load, %.preheader72.preheader ]
  %result_27_4 = phi i32 [ %result_27_1, %4 ], [ %result_49_31_load, %.preheader72.preheader ]
  %result_26_4 = phi i32 [ %result_26_1, %4 ], [ %result_49_30_load, %.preheader72.preheader ]
  %result_25_4 = phi i32 [ %result_25_1, %4 ], [ %result_49_29_load, %.preheader72.preheader ]
  %result_24_4 = phi i32 [ %result_24_1, %4 ], [ %result_49_28_load, %.preheader72.preheader ]
  %result_23_4 = phi i32 [ %result_23_1, %4 ], [ %result_49_27_load, %.preheader72.preheader ]
  %result_22_4 = phi i32 [ %result_22_1, %4 ], [ %result_49_26_load, %.preheader72.preheader ]
  %result_21_4 = phi i32 [ %result_21_1, %4 ], [ %result_49_25_load, %.preheader72.preheader ]
  %result_20_4 = phi i32 [ %result_20_1, %4 ], [ %result_49_24_load, %.preheader72.preheader ]
  %result_19_4 = phi i32 [ %result_19_1, %4 ], [ %result_49_23_load, %.preheader72.preheader ]
  %result_18_4 = phi i32 [ %result_18_1, %4 ], [ %result_49_22_load, %.preheader72.preheader ]
  %result_17_4 = phi i32 [ %result_17_1, %4 ], [ %result_49_21_load, %.preheader72.preheader ]
  %result_16_4 = phi i32 [ %result_16_1, %4 ], [ %result_49_20_load, %.preheader72.preheader ]
  %result_15_4 = phi i32 [ %result_15_1, %4 ], [ %result_49_19_load, %.preheader72.preheader ]
  %result_14_4 = phi i32 [ %result_14_1, %4 ], [ %result_49_18_load, %.preheader72.preheader ]
  %result_13_4 = phi i32 [ %result_13_1, %4 ], [ %result_49_17_load, %.preheader72.preheader ]
  %result_12_4 = phi i32 [ %result_12_1, %4 ], [ %result_49_16_load, %.preheader72.preheader ]
  %result_11_4 = phi i32 [ %result_11_1, %4 ], [ %result_49_15_load, %.preheader72.preheader ]
  %result_10_4 = phi i32 [ %result_10_1, %4 ], [ %result_49_14_load, %.preheader72.preheader ]
  %result_9_4 = phi i32 [ %result_9_1, %4 ], [ %result_49_13_load, %.preheader72.preheader ]
  %result_8_4 = phi i32 [ %result_8_1, %4 ], [ %result_49_12_load, %.preheader72.preheader ]
  %result_7_4 = phi i32 [ %result_7_1, %4 ], [ %result_49_11_load, %.preheader72.preheader ]
  %result_6_4 = phi i32 [ %result_6_1, %4 ], [ %result_49_10_load, %.preheader72.preheader ]
  %result_5_4 = phi i32 [ %result_5_1, %4 ], [ %result_49_9_load, %.preheader72.preheader ]
  %result_4_4 = phi i32 [ %result_4_1, %4 ], [ %result_49_8_load, %.preheader72.preheader ]
  %result_3_4 = phi i32 [ %result_3_1, %4 ], [ %result_49_7_load, %.preheader72.preheader ]
  %result_2_4 = phi i32 [ %result_2_1, %4 ], [ %result_49_6_load, %.preheader72.preheader ]
  %result_1_4 = phi i32 [ %result_1_1, %4 ], [ %result_49_5_load, %.preheader72.preheader ]
  %result_0_4 = phi i32 [ %result_0_1, %4 ], [ %result_49_3_load, %.preheader72.preheader ]
  %row = phi i8 [ %row_1, %4 ], [ 0, %.preheader72.preheader ]
  %exitcond3 = icmp eq i8 %row, -112
  %row_1 = add i8 %row, 1
  br i1 %exitcond3, label %.preheader.preheader, label %4

.preheader.preheader:                             ; preds = %.preheader72
  %tmp_11 = trunc i32 %ctrl_read to i1
  br label %.preheader

; <label>:4                                       ; preds = %.preheader72
  %tmp_5 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %row, i1 false)
  %tmp_8 = zext i9 %tmp_5 to i32
  %weight_0_addr = getelementptr [288 x i32]* %weight_0, i32 0, i32 %tmp_8
  %tmp_9 = or i9 %tmp_5, 1
  %tmp_s = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 0, i9 %tmp_9)
  %weight_0_addr_1 = getelementptr [288 x i32]* %weight_0, i32 0, i32 %tmp_s
  %weight_1_addr = getelementptr [288 x i32]* %weight_1, i32 0, i32 %tmp_8
  %weight_1_addr_1 = getelementptr [288 x i32]* %weight_1, i32 0, i32 %tmp_s
  %weight_2_addr = getelementptr [288 x i32]* %weight_2, i32 0, i32 %tmp_8
  %weight_2_addr_1 = getelementptr [288 x i32]* %weight_2, i32 0, i32 %tmp_s
  %weight_3_addr = getelementptr [288 x i32]* %weight_3, i32 0, i32 %tmp_8
  %weight_3_addr_1 = getelementptr [288 x i32]* %weight_3, i32 0, i32 %tmp_s
  %weight_4_addr = getelementptr [288 x i32]* %weight_4, i32 0, i32 %tmp_8
  %weight_4_addr_1 = getelementptr [288 x i32]* %weight_4, i32 0, i32 %tmp_s
  %weight_5_addr = getelementptr [288 x i32]* %weight_5, i32 0, i32 %tmp_8
  %weight_5_addr_1 = getelementptr [288 x i32]* %weight_5, i32 0, i32 %tmp_s
  %weight_6_addr = getelementptr [288 x i32]* %weight_6, i32 0, i32 %tmp_8
  %weight_6_addr_1 = getelementptr [288 x i32]* %weight_6, i32 0, i32 %tmp_s
  %weight_7_addr = getelementptr [288 x i32]* %weight_7, i32 0, i32 %tmp_8
  %weight_7_addr_1 = getelementptr [288 x i32]* %weight_7, i32 0, i32 %tmp_s
  %weight_8_addr = getelementptr [288 x i32]* %weight_8, i32 0, i32 %tmp_8
  %weight_8_addr_1 = getelementptr [288 x i32]* %weight_8, i32 0, i32 %tmp_s
  %weight_9_addr = getelementptr [288 x i32]* %weight_9, i32 0, i32 %tmp_8
  %weight_9_addr_1 = getelementptr [288 x i32]* %weight_9, i32 0, i32 %tmp_s
  %weight_10_addr = getelementptr [288 x i32]* %weight_10, i32 0, i32 %tmp_8
  %weight_10_addr_1 = getelementptr [288 x i32]* %weight_10, i32 0, i32 %tmp_s
  %weight_11_addr = getelementptr [288 x i32]* %weight_11, i32 0, i32 %tmp_8
  %weight_11_addr_1 = getelementptr [288 x i32]* %weight_11, i32 0, i32 %tmp_s
  %weight_12_addr = getelementptr [288 x i32]* %weight_12, i32 0, i32 %tmp_8
  %weight_12_addr_1 = getelementptr [288 x i32]* %weight_12, i32 0, i32 %tmp_s
  %weight_13_addr = getelementptr [288 x i32]* %weight_13, i32 0, i32 %tmp_8
  %weight_13_addr_1 = getelementptr [288 x i32]* %weight_13, i32 0, i32 %tmp_s
  %weight_14_addr = getelementptr [288 x i32]* %weight_14, i32 0, i32 %tmp_8
  %weight_14_addr_1 = getelementptr [288 x i32]* %weight_14, i32 0, i32 %tmp_s
  %weight_15_addr = getelementptr [288 x i32]* %weight_15, i32 0, i32 %tmp_8
  %weight_15_addr_1 = getelementptr [288 x i32]* %weight_15, i32 0, i32 %tmp_s
  %weight_16_addr = getelementptr [288 x i32]* %weight_16, i32 0, i32 %tmp_8
  %weight_16_addr_1 = getelementptr [288 x i32]* %weight_16, i32 0, i32 %tmp_s
  %weight_17_addr = getelementptr [288 x i32]* %weight_17, i32 0, i32 %tmp_8
  %weight_17_addr_1 = getelementptr [288 x i32]* %weight_17, i32 0, i32 %tmp_s
  %weight_18_addr = getelementptr [288 x i32]* %weight_18, i32 0, i32 %tmp_8
  %weight_18_addr_1 = getelementptr [288 x i32]* %weight_18, i32 0, i32 %tmp_s
  %weight_19_addr = getelementptr [288 x i32]* %weight_19, i32 0, i32 %tmp_8
  %weight_19_addr_1 = getelementptr [288 x i32]* %weight_19, i32 0, i32 %tmp_s
  %weight_20_addr = getelementptr [288 x i32]* %weight_20, i32 0, i32 %tmp_8
  %weight_20_addr_1 = getelementptr [288 x i32]* %weight_20, i32 0, i32 %tmp_s
  %weight_21_addr = getelementptr [288 x i32]* %weight_21, i32 0, i32 %tmp_8
  %weight_21_addr_1 = getelementptr [288 x i32]* %weight_21, i32 0, i32 %tmp_s
  %weight_22_addr = getelementptr [288 x i32]* %weight_22, i32 0, i32 %tmp_8
  %weight_22_addr_1 = getelementptr [288 x i32]* %weight_22, i32 0, i32 %tmp_s
  %weight_23_addr = getelementptr [288 x i32]* %weight_23, i32 0, i32 %tmp_8
  %weight_23_addr_1 = getelementptr [288 x i32]* %weight_23, i32 0, i32 %tmp_s
  %weight_24_addr = getelementptr [288 x i32]* %weight_24, i32 0, i32 %tmp_8
  %weight_24_addr_1 = getelementptr [288 x i32]* %weight_24, i32 0, i32 %tmp_s
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 144, i64 144, i64 144)
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_35 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_1 = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_35, 0
  %weight_0_load = load i32* %weight_0_addr, align 4
  %tmp_7 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_0_load)
  %result_0_1_trunc_ex = sext i23 %tmp_7 to i32
  %result_0_1 = add i32 %result_0_4, %result_0_1_trunc_ex
  %weight_0_load_1 = load i32* %weight_0_addr_1, align 4
  %tmp_2_1 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_0_load_1)
  %result_1_1_trunc_ex = sext i23 %tmp_2_1 to i32
  %result_1_1 = add i32 %result_1_4, %result_1_1_trunc_ex
  %weight_1_load = load i32* %weight_1_addr, align 4
  %tmp_2_2 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_1_load)
  %result_2_1_trunc_ex = sext i23 %tmp_2_2 to i32
  %result_2_1 = add i32 %result_2_4, %result_2_1_trunc_ex
  %weight_1_load_1 = load i32* %weight_1_addr_1, align 4
  %tmp_2_3 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_1_load_1)
  %result_3_1_trunc_ex = sext i23 %tmp_2_3 to i32
  %result_3_1 = add i32 %result_3_4, %result_3_1_trunc_ex
  %weight_2_load = load i32* %weight_2_addr, align 4
  %tmp_2_4 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_2_load)
  %result_4_1_trunc_ex = sext i23 %tmp_2_4 to i32
  %result_4_1 = add i32 %result_4_4, %result_4_1_trunc_ex
  %weight_2_load_1 = load i32* %weight_2_addr_1, align 4
  %tmp_2_5 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_2_load_1)
  %result_5_1_trunc_ex = sext i23 %tmp_2_5 to i32
  %result_5_1 = add i32 %result_5_4, %result_5_1_trunc_ex
  %weight_3_load = load i32* %weight_3_addr, align 4
  %tmp_2_6 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_3_load)
  %result_6_1_trunc_ex = sext i23 %tmp_2_6 to i32
  %result_6_1 = add i32 %result_6_4, %result_6_1_trunc_ex
  %weight_3_load_1 = load i32* %weight_3_addr_1, align 4
  %tmp_2_7 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_3_load_1)
  %result_7_1_trunc_ex = sext i23 %tmp_2_7 to i32
  %result_7_1 = add i32 %result_7_4, %result_7_1_trunc_ex
  %weight_4_load = load i32* %weight_4_addr, align 4
  %tmp_2_8 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_4_load)
  %result_8_1_trunc_ex = sext i23 %tmp_2_8 to i32
  %result_8_1 = add i32 %result_8_4, %result_8_1_trunc_ex
  %weight_4_load_1 = load i32* %weight_4_addr_1, align 4
  %tmp_2_9 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_4_load_1)
  %result_9_1_trunc_ex = sext i23 %tmp_2_9 to i32
  %result_9_1 = add i32 %result_9_4, %result_9_1_trunc_ex
  %weight_5_load = load i32* %weight_5_addr, align 4
  %tmp_2_s = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_5_load)
  %result_10_1_trunc_e = sext i23 %tmp_2_s to i32
  %result_10_1 = add i32 %result_10_4, %result_10_1_trunc_e
  %weight_5_load_1 = load i32* %weight_5_addr_1, align 4
  %tmp_2_10 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_5_load_1)
  %result_11_1_trunc_e = sext i23 %tmp_2_10 to i32
  %result_11_1 = add i32 %result_11_4, %result_11_1_trunc_e
  %weight_6_load = load i32* %weight_6_addr, align 4
  %tmp_2_11 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_6_load)
  %result_12_1_trunc_e = sext i23 %tmp_2_11 to i32
  %result_12_1 = add i32 %result_12_4, %result_12_1_trunc_e
  %weight_6_load_1 = load i32* %weight_6_addr_1, align 4
  %tmp_2_12 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_6_load_1)
  %result_13_1_trunc_e = sext i23 %tmp_2_12 to i32
  %result_13_1 = add i32 %result_13_4, %result_13_1_trunc_e
  %weight_7_load = load i32* %weight_7_addr, align 4
  %tmp_2_13 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_7_load)
  %result_14_1_trunc_e = sext i23 %tmp_2_13 to i32
  %result_14_1 = add i32 %result_14_4, %result_14_1_trunc_e
  %weight_7_load_1 = load i32* %weight_7_addr_1, align 4
  %tmp_2_14 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_7_load_1)
  %result_15_1_trunc_e = sext i23 %tmp_2_14 to i32
  %result_15_1 = add i32 %result_15_4, %result_15_1_trunc_e
  %weight_8_load = load i32* %weight_8_addr, align 4
  %tmp_2_15 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_8_load)
  %result_16_1_trunc_e = sext i23 %tmp_2_15 to i32
  %result_16_1 = add i32 %result_16_4, %result_16_1_trunc_e
  %weight_8_load_1 = load i32* %weight_8_addr_1, align 4
  %tmp_2_16 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_8_load_1)
  %result_17_1_trunc_e = sext i23 %tmp_2_16 to i32
  %result_17_1 = add i32 %result_17_4, %result_17_1_trunc_e
  %weight_9_load = load i32* %weight_9_addr, align 4
  %tmp_2_17 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_9_load)
  %result_18_1_trunc_e = sext i23 %tmp_2_17 to i32
  %result_18_1 = add i32 %result_18_4, %result_18_1_trunc_e
  %weight_9_load_1 = load i32* %weight_9_addr_1, align 4
  %tmp_2_18 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_9_load_1)
  %result_19_1_trunc_e = sext i23 %tmp_2_18 to i32
  %result_19_1 = add i32 %result_19_4, %result_19_1_trunc_e
  %weight_10_load = load i32* %weight_10_addr, align 4
  %tmp_2_19 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_10_load)
  %result_20_1_trunc_e = sext i23 %tmp_2_19 to i32
  %result_20_1 = add i32 %result_20_4, %result_20_1_trunc_e
  %weight_10_load_1 = load i32* %weight_10_addr_1, align 4
  %tmp_2_20 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_10_load_1)
  %result_21_1_trunc_e = sext i23 %tmp_2_20 to i32
  %result_21_1 = add i32 %result_21_4, %result_21_1_trunc_e
  %weight_11_load = load i32* %weight_11_addr, align 4
  %tmp_2_21 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_11_load)
  %result_22_1_trunc_e = sext i23 %tmp_2_21 to i32
  %result_22_1 = add i32 %result_22_4, %result_22_1_trunc_e
  %weight_11_load_1 = load i32* %weight_11_addr_1, align 4
  %tmp_2_22 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_11_load_1)
  %result_23_1_trunc_e = sext i23 %tmp_2_22 to i32
  %result_23_1 = add i32 %result_23_4, %result_23_1_trunc_e
  %weight_12_load = load i32* %weight_12_addr, align 4
  %tmp_2_23 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_12_load)
  %result_24_1_trunc_e = sext i23 %tmp_2_23 to i32
  %result_24_1 = add i32 %result_24_4, %result_24_1_trunc_e
  %weight_12_load_1 = load i32* %weight_12_addr_1, align 4
  %tmp_2_24 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_12_load_1)
  %result_25_1_trunc_e = sext i23 %tmp_2_24 to i32
  %result_25_1 = add i32 %result_25_4, %result_25_1_trunc_e
  %weight_13_load = load i32* %weight_13_addr, align 4
  %tmp_2_25 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_13_load)
  %result_26_1_trunc_e = sext i23 %tmp_2_25 to i32
  %result_26_1 = add i32 %result_26_4, %result_26_1_trunc_e
  %weight_13_load_1 = load i32* %weight_13_addr_1, align 4
  %tmp_2_26 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_13_load_1)
  %result_27_1_trunc_e = sext i23 %tmp_2_26 to i32
  %result_27_1 = add i32 %result_27_4, %result_27_1_trunc_e
  %weight_14_load = load i32* %weight_14_addr, align 4
  %tmp_2_27 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_14_load)
  %result_28_1_trunc_e = sext i23 %tmp_2_27 to i32
  %result_28_1 = add i32 %result_28_4, %result_28_1_trunc_e
  %weight_14_load_1 = load i32* %weight_14_addr_1, align 4
  %tmp_2_28 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_14_load_1)
  %result_29_1_trunc_e = sext i23 %tmp_2_28 to i32
  %result_29_1 = add i32 %result_29_4, %result_29_1_trunc_e
  %weight_15_load = load i32* %weight_15_addr, align 4
  %tmp_2_29 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_15_load)
  %result_30_1_trunc_e = sext i23 %tmp_2_29 to i32
  %result_30_1 = add i32 %result_30_4, %result_30_1_trunc_e
  %weight_15_load_1 = load i32* %weight_15_addr_1, align 4
  %tmp_2_30 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_15_load_1)
  %result_31_1_trunc_e = sext i23 %tmp_2_30 to i32
  %result_31_1 = add i32 %result_31_4, %result_31_1_trunc_e
  %weight_16_load = load i32* %weight_16_addr, align 4
  %tmp_2_31 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_16_load)
  %result_32_1_trunc_e = sext i23 %tmp_2_31 to i32
  %result_32_1 = add i32 %result_32_4, %result_32_1_trunc_e
  %weight_16_load_1 = load i32* %weight_16_addr_1, align 4
  %tmp_2_32 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_16_load_1)
  %result_33_1_trunc_e = sext i23 %tmp_2_32 to i32
  %result_33_1 = add i32 %result_33_4, %result_33_1_trunc_e
  %weight_17_load = load i32* %weight_17_addr, align 4
  %tmp_2_33 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_17_load)
  %result_34_1_trunc_e = sext i23 %tmp_2_33 to i32
  %result_34_1 = add i32 %result_34_4, %result_34_1_trunc_e
  %weight_17_load_1 = load i32* %weight_17_addr_1, align 4
  %tmp_2_34 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_17_load_1)
  %result_35_1_trunc_e = sext i23 %tmp_2_34 to i32
  %result_35_1 = add i32 %result_35_4, %result_35_1_trunc_e
  %weight_18_load = load i32* %weight_18_addr, align 4
  %tmp_2_35 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_18_load)
  %result_36_1_trunc_e = sext i23 %tmp_2_35 to i32
  %result_36_1 = add i32 %result_36_4, %result_36_1_trunc_e
  %weight_18_load_1 = load i32* %weight_18_addr_1, align 4
  %tmp_2_36 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_18_load_1)
  %result_37_1_trunc_e = sext i23 %tmp_2_36 to i32
  %result_37_1 = add i32 %result_37_4, %result_37_1_trunc_e
  %weight_19_load = load i32* %weight_19_addr, align 4
  %tmp_2_37 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_19_load)
  %result_38_1_trunc_e = sext i23 %tmp_2_37 to i32
  %result_38_1 = add i32 %result_38_4, %result_38_1_trunc_e
  %weight_19_load_1 = load i32* %weight_19_addr_1, align 4
  %tmp_2_38 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_19_load_1)
  %result_39_1_trunc_e = sext i23 %tmp_2_38 to i32
  %result_39_1 = add i32 %result_39_4, %result_39_1_trunc_e
  %weight_20_load = load i32* %weight_20_addr, align 4
  %tmp_2_39 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_20_load)
  %result_40_1_trunc_e = sext i23 %tmp_2_39 to i32
  %result_40_1 = add i32 %result_40_4, %result_40_1_trunc_e
  %weight_20_load_1 = load i32* %weight_20_addr_1, align 4
  %tmp_2_40 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_20_load_1)
  %result_41_1_trunc_e = sext i23 %tmp_2_40 to i32
  %result_41_1 = add i32 %result_41_4, %result_41_1_trunc_e
  %weight_21_load = load i32* %weight_21_addr, align 4
  %tmp_2_41 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_21_load)
  %result_42_1_trunc_e = sext i23 %tmp_2_41 to i32
  %result_42_1 = add i32 %result_42_4, %result_42_1_trunc_e
  %weight_21_load_1 = load i32* %weight_21_addr_1, align 4
  %tmp_2_42 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_21_load_1)
  %result_43_1_trunc_e = sext i23 %tmp_2_42 to i32
  %result_43_1 = add i32 %result_43_4, %result_43_1_trunc_e
  %weight_22_load = load i32* %weight_22_addr, align 4
  %tmp_2_43 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_22_load)
  %result_44_1_trunc_e = sext i23 %tmp_2_43 to i32
  %result_44_1 = add i32 %result_44_4, %result_44_1_trunc_e
  %weight_22_load_1 = load i32* %weight_22_addr_1, align 4
  %tmp_2_44 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_22_load_1)
  %result_45_1_trunc_e = sext i23 %tmp_2_44 to i32
  %result_45_1 = add i32 %result_45_4, %result_45_1_trunc_e
  %weight_23_load = load i32* %weight_23_addr, align 4
  %tmp_2_45 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_23_load)
  %result_46_1_trunc_e = sext i23 %tmp_2_45 to i32
  %result_46_1 = add i32 %result_46_4, %result_46_1_trunc_e
  %weight_23_load_1 = load i32* %weight_23_addr_1, align 4
  %tmp_2_46 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_23_load_1)
  %result_47_1_trunc_e = sext i23 %tmp_2_46 to i32
  %result_47_1 = add i32 %result_47_4, %result_47_1_trunc_e
  %weight_24_load = load i32* %weight_24_addr, align 4
  %tmp_2_47 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_24_load)
  %result_48_1_trunc_e = sext i23 %tmp_2_47 to i32
  %result_48_1 = add i32 %result_48_4, %result_48_1_trunc_e
  %weight_24_load_1 = load i32* %weight_24_addr_1, align 4
  %tmp_2_48 = call fastcc i23 @fixed_point_mul(i32 %tmp_data_V_1, i32 %weight_24_load_1)
  %result_49_1_trunc_e = sext i23 %tmp_2_48 to i32
  %result_49_1 = add i32 %result_49_4, %result_49_1_trunc_e
  %empty_36 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_6)
  br label %.preheader72

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %writeCount_assign = phi i6 [ %col, %_ifconv ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i6 %writeCount_assign, -14
  %col = add i6 %writeCount_assign, 1
  br i1 %exitcond, label %5, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_last_V = icmp eq i6 %writeCount_assign, -15
  %data_1 = call i32 @_ssdm_op_Mux.ap_auto.50i32.i6(i32 %result_0_4, i32 %result_1_4, i32 %result_2_4, i32 %result_3_4, i32 %result_4_4, i32 %result_5_4, i32 %result_6_4, i32 %result_7_4, i32 %result_8_4, i32 %result_9_4, i32 %result_10_4, i32 %result_11_4, i32 %result_12_4, i32 %result_13_4, i32 %result_14_4, i32 %result_15_4, i32 %result_16_4, i32 %result_17_4, i32 %result_18_4, i32 %result_19_4, i32 %result_20_4, i32 %result_21_4, i32 %result_22_4, i32 %result_23_4, i32 %result_24_4, i32 %result_25_4, i32 %result_26_4, i32 %result_27_4, i32 %result_28_4, i32 %result_29_4, i32 %result_30_4, i32 %result_31_4, i32 %result_32_4, i32 %result_33_4, i32 %result_34_4, i32 %result_35_4, i32 %result_36_4, i32 %result_37_4, i32 %result_38_4, i32 %result_39_4, i32 %result_40_4, i32 %result_41_4, i32 %result_42_4, i32 %result_43_4, i32 %result_44_4, i32 %result_45_4, i32 %result_46_4, i32 %result_47_4, i32 %result_48_4, i32 %result_49_4, i6 %writeCount_assign)
  %tmp_12 = trunc i32 %data_1 to i31
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %data_1, i32 31)
  %data_2 = select i1 %tmp_13, i31 0, i31 %tmp_12
  %data_2_cast = zext i31 %data_2 to i32
  %data = select i1 %tmp_11, i32 %data_2_cast, i32 %data_1
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i32 %data, i4 -1, i4 0, i2 0, i1 %tmp_last_V, i5 0, i6 0)
  %empty_38 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp)
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  ret void

branch1:                                          ; preds = %3
  store i32 %result_0_3, i32* %result_49_5
  br label %branch0

branch2:                                          ; preds = %3
  store i32 %result_0_3, i32* %result_49_6
  br label %branch0

branch3:                                          ; preds = %3
  store i32 %result_0_3, i32* %result_49_7
  br label %branch0

branch4:                                          ; preds = %3
  store i32 %result_0_3, i32* %result_49_8
  br label %branch0

branch5:                                          ; preds = %3
  store i32 %result_0_3, i32* %result_49_9
  br label %branch0

branch6:                                          ; preds = %3
  store i32 %result_0_3, i32* %result_49_10
  br label %branch0

branch7:                                          ; preds = %3
  store i32 %result_0_3, i32* %result_49_11
  br label %branch0

branch8:                                          ; preds = %3
  store i32 %result_0_3, i32* %result_49_12
  br label %branch0

branch9:                                          ; preds = %3
  store i32 %result_0_3, i32* %result_49_13
  br label %branch0

branch10:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_14
  br label %branch0

branch11:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_15
  br label %branch0

branch12:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_16
  br label %branch0

branch13:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_17
  br label %branch0

branch14:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_18
  br label %branch0

branch15:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_19
  br label %branch0

branch16:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_20
  br label %branch0

branch17:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_21
  br label %branch0

branch18:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_22
  br label %branch0

branch19:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_23
  br label %branch0

branch20:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_24
  br label %branch0

branch21:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_25
  br label %branch0

branch22:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_26
  br label %branch0

branch23:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_27
  br label %branch0

branch24:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_28
  br label %branch0

branch25:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_29
  br label %branch0

branch26:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_30
  br label %branch0

branch27:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_31
  br label %branch0

branch28:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_32
  br label %branch0

branch29:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_33
  br label %branch0

branch30:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_34
  br label %branch0

branch31:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_35
  br label %branch0

branch32:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_36
  br label %branch0

branch33:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_37
  br label %branch0

branch34:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_38
  br label %branch0

branch35:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_39
  br label %branch0

branch36:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_40
  br label %branch0

branch37:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_41
  br label %branch0

branch38:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_42
  br label %branch0

branch39:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_43
  br label %branch0

branch40:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_44
  br label %branch0

branch41:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_45
  br label %branch0

branch42:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_46
  br label %branch0

branch43:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_47
  br label %branch0

branch44:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_48
  br label %branch0

branch45:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_49
  br label %branch0

branch46:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_50
  br label %branch0

branch47:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_51
  br label %branch0

branch48:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_52
  br label %branch0

branch49:                                         ; preds = %3
  store i32 %result_0_3, i32* %result_49_2
  br label %branch0

branch51:                                         ; preds = %2
  store i32 0, i32* %result_1
  br label %branch50

branch52:                                         ; preds = %2
  store i32 0, i32* %result_2
  br label %branch50

branch53:                                         ; preds = %2
  store i32 0, i32* %result_3
  br label %branch50

branch54:                                         ; preds = %2
  store i32 0, i32* %result_4
  br label %branch50

branch55:                                         ; preds = %2
  store i32 0, i32* %result_5
  br label %branch50

branch56:                                         ; preds = %2
  store i32 0, i32* %result_6
  br label %branch50

branch57:                                         ; preds = %2
  store i32 0, i32* %result_7
  br label %branch50

branch58:                                         ; preds = %2
  store i32 0, i32* %result_8
  br label %branch50

branch59:                                         ; preds = %2
  store i32 0, i32* %result_9
  br label %branch50

branch60:                                         ; preds = %2
  store i32 0, i32* %result_10
  br label %branch50

branch61:                                         ; preds = %2
  store i32 0, i32* %result_11
  br label %branch50

branch62:                                         ; preds = %2
  store i32 0, i32* %result_12
  br label %branch50

branch63:                                         ; preds = %2
  store i32 0, i32* %result_13
  br label %branch50

branch64:                                         ; preds = %2
  store i32 0, i32* %result_14
  br label %branch50

branch65:                                         ; preds = %2
  store i32 0, i32* %result_15
  br label %branch50

branch66:                                         ; preds = %2
  store i32 0, i32* %result_16
  br label %branch50

branch67:                                         ; preds = %2
  store i32 0, i32* %result_17
  br label %branch50

branch68:                                         ; preds = %2
  store i32 0, i32* %result_18
  br label %branch50

branch69:                                         ; preds = %2
  store i32 0, i32* %result_19
  br label %branch50

branch70:                                         ; preds = %2
  store i32 0, i32* %result_20
  br label %branch50

branch71:                                         ; preds = %2
  store i32 0, i32* %result_21
  br label %branch50

branch72:                                         ; preds = %2
  store i32 0, i32* %result_22
  br label %branch50

branch73:                                         ; preds = %2
  store i32 0, i32* %result_23
  br label %branch50

branch74:                                         ; preds = %2
  store i32 0, i32* %result_24
  br label %branch50

branch75:                                         ; preds = %2
  store i32 0, i32* %result_25
  br label %branch50

branch76:                                         ; preds = %2
  store i32 0, i32* %result_26
  br label %branch50

branch77:                                         ; preds = %2
  store i32 0, i32* %result_27
  br label %branch50

branch78:                                         ; preds = %2
  store i32 0, i32* %result_28
  br label %branch50

branch79:                                         ; preds = %2
  store i32 0, i32* %result_29
  br label %branch50

branch80:                                         ; preds = %2
  store i32 0, i32* %result_30
  br label %branch50

branch81:                                         ; preds = %2
  store i32 0, i32* %result_31
  br label %branch50

branch82:                                         ; preds = %2
  store i32 0, i32* %result_32
  br label %branch50

branch83:                                         ; preds = %2
  store i32 0, i32* %result_33
  br label %branch50

branch84:                                         ; preds = %2
  store i32 0, i32* %result_34
  br label %branch50

branch85:                                         ; preds = %2
  store i32 0, i32* %result_35
  br label %branch50

branch86:                                         ; preds = %2
  store i32 0, i32* %result_36
  br label %branch50

branch87:                                         ; preds = %2
  store i32 0, i32* %result_37
  br label %branch50

branch88:                                         ; preds = %2
  store i32 0, i32* %result_38
  br label %branch50

branch89:                                         ; preds = %2
  store i32 0, i32* %result_39
  br label %branch50

branch90:                                         ; preds = %2
  store i32 0, i32* %result_40
  br label %branch50

branch91:                                         ; preds = %2
  store i32 0, i32* %result_41
  br label %branch50

branch92:                                         ; preds = %2
  store i32 0, i32* %result_42
  br label %branch50

branch93:                                         ; preds = %2
  store i32 0, i32* %result_43
  br label %branch50

branch94:                                         ; preds = %2
  store i32 0, i32* %result_44
  br label %branch50

branch95:                                         ; preds = %2
  store i32 0, i32* %result_45
  br label %branch50

branch96:                                         ; preds = %2
  store i32 0, i32* %result_46
  br label %branch50

branch97:                                         ; preds = %2
  store i32 0, i32* %result_47
  br label %branch50

branch98:                                         ; preds = %2
  store i32 0, i32* %result_48
  br label %branch50

branch99:                                         ; preds = %2
  store i32 0, i32* %result_49
  br label %branch50
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
  %empty_39 = load i4* %1
  %empty_40 = load i4* %2
  %empty_41 = load i2* %3
  %empty_42 = load i1* %4
  %empty_43 = load i5* %5
  %empty_44 = load i6* %6
  %mrv_0 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv_0, i4 %empty_39, 1
  %mrv2 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv1, i4 %empty_40, 2
  %mrv3 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv2, i2 %empty_41, 3
  %mrv4 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv3, i1 %empty_42, 4
  %mrv5 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv4, i5 %empty_43, 5
  %mrv6 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv5, i6 %empty_44, 6
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
  %empty_45 = trunc i32 %empty to i22
  ret i22 %empty_45
}

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_Mux.ap_auto.50i32.i6(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i6) {
entry:
  switch i6 %50, label %case49 [
    i6 0, label %case0
    i6 1, label %case1
    i6 2, label %case2
    i6 3, label %case3
    i6 4, label %case4
    i6 5, label %case5
    i6 6, label %case6
    i6 7, label %case7
    i6 8, label %case8
    i6 9, label %case9
    i6 10, label %case10
    i6 11, label %case11
    i6 12, label %case12
    i6 13, label %case13
    i6 14, label %case14
    i6 15, label %case15
    i6 16, label %case16
    i6 17, label %case17
    i6 18, label %case18
    i6 19, label %case19
    i6 20, label %case20
    i6 21, label %case21
    i6 22, label %case22
    i6 23, label %case23
    i6 24, label %case24
    i6 25, label %case25
    i6 26, label %case26
    i6 27, label %case27
    i6 28, label %case28
    i6 29, label %case29
    i6 30, label %case30
    i6 31, label %case31
    i6 -32, label %case32
    i6 -31, label %case33
    i6 -30, label %case34
    i6 -29, label %case35
    i6 -28, label %case36
    i6 -27, label %case37
    i6 -26, label %case38
    i6 -25, label %case39
    i6 -24, label %case40
    i6 -23, label %case41
    i6 -22, label %case42
    i6 -21, label %case43
    i6 -20, label %case44
    i6 -19, label %case45
    i6 -18, label %case46
    i6 -17, label %case47
    i6 -16, label %case48
  ]

case0:                                            ; preds = %case49, %case48, %case47, %case46, %case45, %case44, %case43, %case42, %case41, %case40, %case39, %case38, %case37, %case36, %case35, %case34, %case33, %case32, %case31, %case30, %case29, %case28, %case27, %case26, %case25, %case24, %case23, %case22, %case21, %case20, %case19, %case18, %case17, %case16, %case15, %case14, %case13, %case12, %case11, %case10, %case9, %case8, %case7, %case6, %case5, %case4, %case3, %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ], [ %4, %case4 ], [ %5, %case5 ], [ %6, %case6 ], [ %7, %case7 ], [ %8, %case8 ], [ %9, %case9 ], [ %10, %case10 ], [ %11, %case11 ], [ %12, %case12 ], [ %13, %case13 ], [ %14, %case14 ], [ %15, %case15 ], [ %16, %case16 ], [ %17, %case17 ], [ %18, %case18 ], [ %19, %case19 ], [ %20, %case20 ], [ %21, %case21 ], [ %22, %case22 ], [ %23, %case23 ], [ %24, %case24 ], [ %25, %case25 ], [ %26, %case26 ], [ %27, %case27 ], [ %28, %case28 ], [ %29, %case29 ], [ %30, %case30 ], [ %31, %case31 ], [ %32, %case32 ], [ %33, %case33 ], [ %34, %case34 ], [ %35, %case35 ], [ %36, %case36 ], [ %37, %case37 ], [ %38, %case38 ], [ %39, %case39 ], [ %40, %case40 ], [ %41, %case41 ], [ %42, %case42 ], [ %43, %case43 ], [ %44, %case44 ], [ %45, %case45 ], [ %46, %case46 ], [ %47, %case47 ], [ %48, %case48 ], [ %49, %case49 ]
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

case10:                                           ; preds = %entry
  br label %case0

case11:                                           ; preds = %entry
  br label %case0

case12:                                           ; preds = %entry
  br label %case0

case13:                                           ; preds = %entry
  br label %case0

case14:                                           ; preds = %entry
  br label %case0

case15:                                           ; preds = %entry
  br label %case0

case16:                                           ; preds = %entry
  br label %case0

case17:                                           ; preds = %entry
  br label %case0

case18:                                           ; preds = %entry
  br label %case0

case19:                                           ; preds = %entry
  br label %case0

case20:                                           ; preds = %entry
  br label %case0

case21:                                           ; preds = %entry
  br label %case0

case22:                                           ; preds = %entry
  br label %case0

case23:                                           ; preds = %entry
  br label %case0

case24:                                           ; preds = %entry
  br label %case0

case25:                                           ; preds = %entry
  br label %case0

case26:                                           ; preds = %entry
  br label %case0

case27:                                           ; preds = %entry
  br label %case0

case28:                                           ; preds = %entry
  br label %case0

case29:                                           ; preds = %entry
  br label %case0

case30:                                           ; preds = %entry
  br label %case0

case31:                                           ; preds = %entry
  br label %case0

case32:                                           ; preds = %entry
  br label %case0

case33:                                           ; preds = %entry
  br label %case0

case34:                                           ; preds = %entry
  br label %case0

case35:                                           ; preds = %entry
  br label %case0

case36:                                           ; preds = %entry
  br label %case0

case37:                                           ; preds = %entry
  br label %case0

case38:                                           ; preds = %entry
  br label %case0

case39:                                           ; preds = %entry
  br label %case0

case40:                                           ; preds = %entry
  br label %case0

case41:                                           ; preds = %entry
  br label %case0

case42:                                           ; preds = %entry
  br label %case0

case43:                                           ; preds = %entry
  br label %case0

case44:                                           ; preds = %entry
  br label %case0

case45:                                           ; preds = %entry
  br label %case0

case46:                                           ; preds = %entry
  br label %case0

case47:                                           ; preds = %entry
  br label %case0

case48:                                           ; preds = %entry
  br label %case0

case49:                                           ; preds = %entry
  br label %case0
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_46 = and i32 %0, %empty
  %empty_47 = icmp ne i32 %empty_46, 0
  ret i1 %empty_47
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_48 = zext i1 %1 to i9
  %empty_49 = shl i9 %empty, 1
  %empty_50 = or i9 %empty_49, %empty_48
  ret i9 %empty_50
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23, i9) nounwind readnone {
entry:
  %empty = zext i23 %0 to i32
  %empty_51 = zext i9 %1 to i32
  %empty_52 = shl i32 %empty, 9
  %empty_53 = or i32 %empty_52, %empty_51
  ret i32 %empty_53
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !25, !25, !16, !16, !27, !29, !29, !16, !16, !31, !29, !29, !16, !16, !33, !29, !29, !16, !16, !35, !29, !29, !16, !16, !37, !16, !16, !39, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !41}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!47}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<axiu32_t> &", metadata !"hls::stream<axiu32_t> &", metadata !"uint32_t [50]*", metadata !"uint32_t*", metadata !"uint32_t"}
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
!59 = metadata !{i32 0, i32 143, i32 1}
!60 = metadata !{i32 48, i32 49, i32 1}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"weight", metadata !65, metadata !"unsigned int", i32 0, i32 31}
!65 = metadata !{metadata !59, metadata !66}
!66 = metadata !{i32 46, i32 47, i32 1}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"weight", metadata !71, metadata !"unsigned int", i32 0, i32 31}
!71 = metadata !{metadata !59, metadata !72}
!72 = metadata !{i32 44, i32 45, i32 1}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 31, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"weight", metadata !77, metadata !"unsigned int", i32 0, i32 31}
!77 = metadata !{metadata !59, metadata !78}
!78 = metadata !{i32 42, i32 43, i32 1}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"weight", metadata !83, metadata !"unsigned int", i32 0, i32 31}
!83 = metadata !{metadata !59, metadata !84}
!84 = metadata !{i32 40, i32 41, i32 1}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 31, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"weight", metadata !89, metadata !"unsigned int", i32 0, i32 31}
!89 = metadata !{metadata !59, metadata !90}
!90 = metadata !{i32 38, i32 39, i32 1}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 31, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"weight", metadata !95, metadata !"unsigned int", i32 0, i32 31}
!95 = metadata !{metadata !59, metadata !96}
!96 = metadata !{i32 36, i32 37, i32 1}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 31, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"weight", metadata !101, metadata !"unsigned int", i32 0, i32 31}
!101 = metadata !{metadata !59, metadata !102}
!102 = metadata !{i32 34, i32 35, i32 1}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 31, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"weight", metadata !107, metadata !"unsigned int", i32 0, i32 31}
!107 = metadata !{metadata !59, metadata !108}
!108 = metadata !{i32 32, i32 33, i32 1}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 0, i32 31, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"weight", metadata !113, metadata !"unsigned int", i32 0, i32 31}
!113 = metadata !{metadata !59, metadata !114}
!114 = metadata !{i32 30, i32 31, i32 1}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 31, metadata !117}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !"weight", metadata !119, metadata !"unsigned int", i32 0, i32 31}
!119 = metadata !{metadata !59, metadata !120}
!120 = metadata !{i32 28, i32 29, i32 1}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 31, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"weight", metadata !125, metadata !"unsigned int", i32 0, i32 31}
!125 = metadata !{metadata !59, metadata !126}
!126 = metadata !{i32 26, i32 27, i32 1}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 31, metadata !129}
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !"weight", metadata !131, metadata !"unsigned int", i32 0, i32 31}
!131 = metadata !{metadata !59, metadata !132}
!132 = metadata !{i32 24, i32 25, i32 1}
!133 = metadata !{metadata !134}
!134 = metadata !{i32 0, i32 31, metadata !135}
!135 = metadata !{metadata !136}
!136 = metadata !{metadata !"weight", metadata !137, metadata !"unsigned int", i32 0, i32 31}
!137 = metadata !{metadata !59, metadata !138}
!138 = metadata !{i32 22, i32 23, i32 1}
!139 = metadata !{metadata !140}
!140 = metadata !{i32 0, i32 31, metadata !141}
!141 = metadata !{metadata !142}
!142 = metadata !{metadata !"weight", metadata !143, metadata !"unsigned int", i32 0, i32 31}
!143 = metadata !{metadata !59, metadata !144}
!144 = metadata !{i32 20, i32 21, i32 1}
!145 = metadata !{metadata !146}
!146 = metadata !{i32 0, i32 31, metadata !147}
!147 = metadata !{metadata !148}
!148 = metadata !{metadata !"weight", metadata !149, metadata !"unsigned int", i32 0, i32 31}
!149 = metadata !{metadata !59, metadata !150}
!150 = metadata !{i32 18, i32 19, i32 1}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 31, metadata !153}
!153 = metadata !{metadata !154}
!154 = metadata !{metadata !"weight", metadata !155, metadata !"unsigned int", i32 0, i32 31}
!155 = metadata !{metadata !59, metadata !156}
!156 = metadata !{i32 16, i32 17, i32 1}
!157 = metadata !{metadata !158}
!158 = metadata !{i32 0, i32 31, metadata !159}
!159 = metadata !{metadata !160}
!160 = metadata !{metadata !"weight", metadata !161, metadata !"unsigned int", i32 0, i32 31}
!161 = metadata !{metadata !59, metadata !162}
!162 = metadata !{i32 14, i32 15, i32 1}
!163 = metadata !{metadata !164}
!164 = metadata !{i32 0, i32 31, metadata !165}
!165 = metadata !{metadata !166}
!166 = metadata !{metadata !"weight", metadata !167, metadata !"unsigned int", i32 0, i32 31}
!167 = metadata !{metadata !59, metadata !168}
!168 = metadata !{i32 12, i32 13, i32 1}
!169 = metadata !{metadata !170}
!170 = metadata !{i32 0, i32 31, metadata !171}
!171 = metadata !{metadata !172}
!172 = metadata !{metadata !"weight", metadata !173, metadata !"unsigned int", i32 0, i32 31}
!173 = metadata !{metadata !59, metadata !174}
!174 = metadata !{i32 10, i32 11, i32 1}
!175 = metadata !{metadata !176}
!176 = metadata !{i32 0, i32 31, metadata !177}
!177 = metadata !{metadata !178}
!178 = metadata !{metadata !"weight", metadata !179, metadata !"unsigned int", i32 0, i32 31}
!179 = metadata !{metadata !59, metadata !180}
!180 = metadata !{i32 8, i32 9, i32 1}
!181 = metadata !{metadata !182}
!182 = metadata !{i32 0, i32 31, metadata !183}
!183 = metadata !{metadata !184}
!184 = metadata !{metadata !"weight", metadata !185, metadata !"unsigned int", i32 0, i32 31}
!185 = metadata !{metadata !59, metadata !186}
!186 = metadata !{i32 6, i32 7, i32 1}
!187 = metadata !{metadata !188}
!188 = metadata !{i32 0, i32 31, metadata !189}
!189 = metadata !{metadata !190}
!190 = metadata !{metadata !"weight", metadata !191, metadata !"unsigned int", i32 0, i32 31}
!191 = metadata !{metadata !59, metadata !192}
!192 = metadata !{i32 4, i32 5, i32 1}
!193 = metadata !{metadata !194}
!194 = metadata !{i32 0, i32 31, metadata !195}
!195 = metadata !{metadata !196}
!196 = metadata !{metadata !"weight", metadata !197, metadata !"unsigned int", i32 0, i32 31}
!197 = metadata !{metadata !59, metadata !198}
!198 = metadata !{i32 2, i32 3, i32 1}
!199 = metadata !{metadata !200}
!200 = metadata !{i32 0, i32 31, metadata !201}
!201 = metadata !{metadata !202}
!202 = metadata !{metadata !"weight", metadata !203, metadata !"unsigned int", i32 0, i32 31}
!203 = metadata !{metadata !59, metadata !204}
!204 = metadata !{i32 0, i32 1, i32 1}
!205 = metadata !{metadata !206}
!206 = metadata !{i32 0, i32 31, metadata !207}
!207 = metadata !{metadata !208}
!208 = metadata !{metadata !"inStream.V.data.V", metadata !52, metadata !"uint32", i32 0, i32 31}
!209 = metadata !{metadata !210}
!210 = metadata !{i32 0, i32 3, metadata !211}
!211 = metadata !{metadata !212}
!212 = metadata !{metadata !"inStream.V.keep.V", metadata !52, metadata !"uint4", i32 0, i32 3}
!213 = metadata !{metadata !214}
!214 = metadata !{i32 0, i32 3, metadata !215}
!215 = metadata !{metadata !216}
!216 = metadata !{metadata !"inStream.V.strb.V", metadata !52, metadata !"uint4", i32 0, i32 3}
!217 = metadata !{metadata !218}
!218 = metadata !{i32 0, i32 1, metadata !219}
!219 = metadata !{metadata !220}
!220 = metadata !{metadata !"inStream.V.user.V", metadata !52, metadata !"uint2", i32 0, i32 1}
!221 = metadata !{metadata !222}
!222 = metadata !{i32 0, i32 0, metadata !223}
!223 = metadata !{metadata !224}
!224 = metadata !{metadata !"inStream.V.last.V", metadata !52, metadata !"uint1", i32 0, i32 0}
!225 = metadata !{metadata !226}
!226 = metadata !{i32 0, i32 4, metadata !227}
!227 = metadata !{metadata !228}
!228 = metadata !{metadata !"inStream.V.id.V", metadata !52, metadata !"uint5", i32 0, i32 4}
!229 = metadata !{metadata !230}
!230 = metadata !{i32 0, i32 5, metadata !231}
!231 = metadata !{metadata !232}
!232 = metadata !{metadata !"inStream.V.dest.V", metadata !52, metadata !"uint6", i32 0, i32 5}
!233 = metadata !{metadata !234}
!234 = metadata !{i32 0, i32 31, metadata !235}
!235 = metadata !{metadata !236}
!236 = metadata !{metadata !"outStream.V.data.V", metadata !52, metadata !"uint32", i32 0, i32 31}
!237 = metadata !{metadata !238}
!238 = metadata !{i32 0, i32 3, metadata !239}
!239 = metadata !{metadata !240}
!240 = metadata !{metadata !"outStream.V.keep.V", metadata !52, metadata !"uint4", i32 0, i32 3}
!241 = metadata !{metadata !242}
!242 = metadata !{i32 0, i32 3, metadata !243}
!243 = metadata !{metadata !244}
!244 = metadata !{metadata !"outStream.V.strb.V", metadata !52, metadata !"uint4", i32 0, i32 3}
!245 = metadata !{metadata !246}
!246 = metadata !{i32 0, i32 1, metadata !247}
!247 = metadata !{metadata !248}
!248 = metadata !{metadata !"outStream.V.user.V", metadata !52, metadata !"uint2", i32 0, i32 1}
!249 = metadata !{metadata !250}
!250 = metadata !{i32 0, i32 0, metadata !251}
!251 = metadata !{metadata !252}
!252 = metadata !{metadata !"outStream.V.last.V", metadata !52, metadata !"uint1", i32 0, i32 0}
!253 = metadata !{metadata !254}
!254 = metadata !{i32 0, i32 4, metadata !255}
!255 = metadata !{metadata !256}
!256 = metadata !{metadata !"outStream.V.id.V", metadata !52, metadata !"uint5", i32 0, i32 4}
!257 = metadata !{metadata !258}
!258 = metadata !{i32 0, i32 5, metadata !259}
!259 = metadata !{metadata !260}
!260 = metadata !{metadata !"outStream.V.dest.V", metadata !52, metadata !"uint6", i32 0, i32 5}
!261 = metadata !{metadata !262}
!262 = metadata !{i32 0, i32 31, metadata !263}
!263 = metadata !{metadata !264}
!264 = metadata !{metadata !"bias", metadata !265, metadata !"unsigned int", i32 0, i32 31}
!265 = metadata !{metadata !266}
!266 = metadata !{i32 0, i32 49, i32 1}
!267 = metadata !{metadata !268}
!268 = metadata !{i32 0, i32 31, metadata !269}
!269 = metadata !{metadata !270}
!270 = metadata !{metadata !"ctrl", metadata !271, metadata !"unsigned int", i32 0, i32 31}
!271 = metadata !{metadata !272}
!272 = metadata !{i32 0, i32 0, i32 0}
