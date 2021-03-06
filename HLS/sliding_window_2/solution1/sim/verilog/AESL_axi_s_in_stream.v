// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

`define TV_IN_in_stream_TDATA "../tv/cdatafile/c.my_filter_buffer.autotvin_in_stream_V_data_V.dat"
`define INGRESS_STATUS_in_stream_TDATA "../tv/stream_size/stream_ingress_status_in_stream_V_data_V.dat"
`define TV_IN_in_stream_TKEEP "../tv/cdatafile/c.my_filter_buffer.autotvin_in_stream_V_keep_V.dat"
`define INGRESS_STATUS_in_stream_TKEEP "../tv/stream_size/stream_ingress_status_in_stream_V_keep_V.dat"
`define TV_IN_in_stream_TSTRB "../tv/cdatafile/c.my_filter_buffer.autotvin_in_stream_V_strb_V.dat"
`define INGRESS_STATUS_in_stream_TSTRB "../tv/stream_size/stream_ingress_status_in_stream_V_strb_V.dat"
`define TV_IN_in_stream_TUSER "../tv/cdatafile/c.my_filter_buffer.autotvin_in_stream_V_user_V.dat"
`define INGRESS_STATUS_in_stream_TUSER "../tv/stream_size/stream_ingress_status_in_stream_V_user_V.dat"
`define TV_IN_in_stream_TLAST "../tv/cdatafile/c.my_filter_buffer.autotvin_in_stream_V_last_V.dat"
`define INGRESS_STATUS_in_stream_TLAST "../tv/stream_size/stream_ingress_status_in_stream_V_last_V.dat"
`define TV_IN_in_stream_TID "../tv/cdatafile/c.my_filter_buffer.autotvin_in_stream_V_id_V.dat"
`define INGRESS_STATUS_in_stream_TID "../tv/stream_size/stream_ingress_status_in_stream_V_id_V.dat"
`define TV_IN_in_stream_TDEST "../tv/cdatafile/c.my_filter_buffer.autotvin_in_stream_V_dest_V.dat"
`define INGRESS_STATUS_in_stream_TDEST "../tv/stream_size/stream_ingress_status_in_stream_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_in_stream (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_in_stream_TDATA,
    output [4 - 1:0] TRAN_in_stream_TKEEP,
    output [4 - 1:0] TRAN_in_stream_TSTRB,
    output [2 - 1:0] TRAN_in_stream_TUSER,
    output TRAN_in_stream_TLAST,
    output [5 - 1:0] TRAN_in_stream_TID,
    output [6 - 1:0] TRAN_in_stream_TDEST,
    output TRAN_in_stream_TVALID,
    input TRAN_in_stream_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_in_stream_TVALID_temp;
    wire in_stream_TDATA_full;
    wire in_stream_TDATA_empty;
    reg in_stream_TDATA_write_en;
    reg [32 - 1:0] in_stream_TDATA_write_data;
    reg in_stream_TDATA_read_en;
    wire [32 - 1:0] in_stream_TDATA_read_data;
    
    fifo #(262144, 32) fifo_in_stream_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(in_stream_TDATA_write_en),
        .write_data(in_stream_TDATA_write_data),
        .read_clock(clk),
        .read_en(in_stream_TDATA_read_en),
        .read_data(in_stream_TDATA_read_data),
        .full(in_stream_TDATA_full),
        .empty(in_stream_TDATA_empty));
    
    always @ (*) begin
        in_stream_TDATA_write_en <= 0;
        in_stream_TDATA_read_en <= TRAN_in_stream_TREADY & TRAN_in_stream_TVALID;
    end
    
    assign TRAN_in_stream_TDATA = in_stream_TDATA_read_data;
    wire in_stream_TKEEP_full;
    wire in_stream_TKEEP_empty;
    reg in_stream_TKEEP_write_en;
    reg [4 - 1:0] in_stream_TKEEP_write_data;
    reg in_stream_TKEEP_read_en;
    wire [4 - 1:0] in_stream_TKEEP_read_data;
    
    fifo #(262144, 4) fifo_in_stream_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(in_stream_TKEEP_write_en),
        .write_data(in_stream_TKEEP_write_data),
        .read_clock(clk),
        .read_en(in_stream_TKEEP_read_en),
        .read_data(in_stream_TKEEP_read_data),
        .full(in_stream_TKEEP_full),
        .empty(in_stream_TKEEP_empty));
    
    always @ (*) begin
        in_stream_TKEEP_write_en <= 0;
        in_stream_TKEEP_read_en <= TRAN_in_stream_TREADY & TRAN_in_stream_TVALID;
    end
    
    assign TRAN_in_stream_TKEEP = in_stream_TKEEP_read_data;
    wire in_stream_TSTRB_full;
    wire in_stream_TSTRB_empty;
    reg in_stream_TSTRB_write_en;
    reg [4 - 1:0] in_stream_TSTRB_write_data;
    reg in_stream_TSTRB_read_en;
    wire [4 - 1:0] in_stream_TSTRB_read_data;
    
    fifo #(262144, 4) fifo_in_stream_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(in_stream_TSTRB_write_en),
        .write_data(in_stream_TSTRB_write_data),
        .read_clock(clk),
        .read_en(in_stream_TSTRB_read_en),
        .read_data(in_stream_TSTRB_read_data),
        .full(in_stream_TSTRB_full),
        .empty(in_stream_TSTRB_empty));
    
    always @ (*) begin
        in_stream_TSTRB_write_en <= 0;
        in_stream_TSTRB_read_en <= TRAN_in_stream_TREADY & TRAN_in_stream_TVALID;
    end
    
    assign TRAN_in_stream_TSTRB = in_stream_TSTRB_read_data;
    wire in_stream_TUSER_full;
    wire in_stream_TUSER_empty;
    reg in_stream_TUSER_write_en;
    reg [2 - 1:0] in_stream_TUSER_write_data;
    reg in_stream_TUSER_read_en;
    wire [2 - 1:0] in_stream_TUSER_read_data;
    
    fifo #(262144, 2) fifo_in_stream_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(in_stream_TUSER_write_en),
        .write_data(in_stream_TUSER_write_data),
        .read_clock(clk),
        .read_en(in_stream_TUSER_read_en),
        .read_data(in_stream_TUSER_read_data),
        .full(in_stream_TUSER_full),
        .empty(in_stream_TUSER_empty));
    
    always @ (*) begin
        in_stream_TUSER_write_en <= 0;
        in_stream_TUSER_read_en <= TRAN_in_stream_TREADY & TRAN_in_stream_TVALID;
    end
    
    assign TRAN_in_stream_TUSER = in_stream_TUSER_read_data;
    wire in_stream_TLAST_full;
    wire in_stream_TLAST_empty;
    reg in_stream_TLAST_write_en;
    reg [1 - 1:0] in_stream_TLAST_write_data;
    reg in_stream_TLAST_read_en;
    wire [1 - 1:0] in_stream_TLAST_read_data;
    
    fifo #(262144, 1) fifo_in_stream_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(in_stream_TLAST_write_en),
        .write_data(in_stream_TLAST_write_data),
        .read_clock(clk),
        .read_en(in_stream_TLAST_read_en),
        .read_data(in_stream_TLAST_read_data),
        .full(in_stream_TLAST_full),
        .empty(in_stream_TLAST_empty));
    
    always @ (*) begin
        in_stream_TLAST_write_en <= 0;
        in_stream_TLAST_read_en <= TRAN_in_stream_TREADY & TRAN_in_stream_TVALID;
    end
    
    assign TRAN_in_stream_TLAST = in_stream_TLAST_read_data;
    wire in_stream_TID_full;
    wire in_stream_TID_empty;
    reg in_stream_TID_write_en;
    reg [5 - 1:0] in_stream_TID_write_data;
    reg in_stream_TID_read_en;
    wire [5 - 1:0] in_stream_TID_read_data;
    
    fifo #(262144, 5) fifo_in_stream_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(in_stream_TID_write_en),
        .write_data(in_stream_TID_write_data),
        .read_clock(clk),
        .read_en(in_stream_TID_read_en),
        .read_data(in_stream_TID_read_data),
        .full(in_stream_TID_full),
        .empty(in_stream_TID_empty));
    
    always @ (*) begin
        in_stream_TID_write_en <= 0;
        in_stream_TID_read_en <= TRAN_in_stream_TREADY & TRAN_in_stream_TVALID;
    end
    
    assign TRAN_in_stream_TID = in_stream_TID_read_data;
    wire in_stream_TDEST_full;
    wire in_stream_TDEST_empty;
    reg in_stream_TDEST_write_en;
    reg [6 - 1:0] in_stream_TDEST_write_data;
    reg in_stream_TDEST_read_en;
    wire [6 - 1:0] in_stream_TDEST_read_data;
    
    fifo #(262144, 6) fifo_in_stream_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(in_stream_TDEST_write_en),
        .write_data(in_stream_TDEST_write_data),
        .read_clock(clk),
        .read_en(in_stream_TDEST_read_en),
        .read_data(in_stream_TDEST_read_data),
        .full(in_stream_TDEST_full),
        .empty(in_stream_TDEST_empty));
    
    always @ (*) begin
        in_stream_TDEST_write_en <= 0;
        in_stream_TDEST_read_en <= TRAN_in_stream_TREADY & TRAN_in_stream_TVALID;
    end
    
    assign TRAN_in_stream_TDEST = in_stream_TDEST_read_data;
    assign TRAN_in_stream_TVALID = TRAN_in_stream_TVALID_temp;

    
    reg in_stream_TDATA_valid = 0; // ingress buffer indicator: in_stream_TDATA
    reg in_stream_TKEEP_valid = 0; // ingress buffer indicator: in_stream_TKEEP
    reg in_stream_TSTRB_valid = 0; // ingress buffer indicator: in_stream_TSTRB
    reg in_stream_TUSER_valid = 0; // ingress buffer indicator: in_stream_TUSER
    reg in_stream_TLAST_valid = 0; // ingress buffer indicator: in_stream_TLAST
    reg in_stream_TID_valid = 0; // ingress buffer indicator: in_stream_TID
    reg in_stream_TDEST_valid = 0; // ingress buffer indicator: in_stream_TDEST
    
    assign TRAN_in_stream_TVALID_temp = ~(in_stream_TDATA_empty || in_stream_TKEEP_empty || in_stream_TSTRB_empty || in_stream_TUSER_empty || in_stream_TLAST_empty || in_stream_TID_empty || in_stream_TDEST_empty) || (in_stream_TDATA_valid && in_stream_TKEEP_valid && in_stream_TSTRB_valid && in_stream_TUSER_valid && in_stream_TLAST_valid && in_stream_TID_valid && in_stream_TDEST_valid);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [215:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [215:0] rm_0x(input [215:0] token);
        reg [215:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg [31:0] transaction_load_in_stream_TDATA;
    
    assign transaction = transaction_load_in_stream_TDATA;
    
    initial begin : AXI_stream_driver_in_stream_TDATA
        integer fp;
        reg [215:0] token;
        reg [32 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_in_stream_TDATA = 0;
        fifo_in_stream_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_in_stream_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_in_stream_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_in_stream_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_in_stream_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_in_stream_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_in_stream_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_in_stream_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    in_stream_TDATA_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_in_stream_TDATA.snapshot();
                end else begin
                    fifo_in_stream_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_in_stream_TDATA = transaction_load_in_stream_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_in_stream_TKEEP;
    
    initial begin : AXI_stream_driver_in_stream_TKEEP
        integer fp;
        reg [215:0] token;
        reg [4 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_in_stream_TKEEP = 0;
        fifo_in_stream_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_in_stream_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_in_stream_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_in_stream_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_in_stream_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_in_stream_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_in_stream_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_in_stream_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    in_stream_TKEEP_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_in_stream_TKEEP.snapshot();
                end else begin
                    fifo_in_stream_TKEEP.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_in_stream_TKEEP = transaction_load_in_stream_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_in_stream_TSTRB;
    
    initial begin : AXI_stream_driver_in_stream_TSTRB
        integer fp;
        reg [215:0] token;
        reg [4 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_in_stream_TSTRB = 0;
        fifo_in_stream_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_in_stream_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_in_stream_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_in_stream_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_in_stream_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_in_stream_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_in_stream_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_in_stream_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    in_stream_TSTRB_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_in_stream_TSTRB.snapshot();
                end else begin
                    fifo_in_stream_TSTRB.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_in_stream_TSTRB = transaction_load_in_stream_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_in_stream_TUSER;
    
    initial begin : AXI_stream_driver_in_stream_TUSER
        integer fp;
        reg [215:0] token;
        reg [2 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_in_stream_TUSER = 0;
        fifo_in_stream_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_in_stream_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_in_stream_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_in_stream_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_in_stream_TUSER);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_in_stream_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_in_stream_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_in_stream_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    in_stream_TUSER_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_in_stream_TUSER.snapshot();
                end else begin
                    fifo_in_stream_TUSER.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_in_stream_TUSER = transaction_load_in_stream_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_in_stream_TLAST;
    
    initial begin : AXI_stream_driver_in_stream_TLAST
        integer fp;
        reg [215:0] token;
        reg [1 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_in_stream_TLAST = 0;
        fifo_in_stream_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_in_stream_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_in_stream_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_in_stream_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_in_stream_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_in_stream_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_in_stream_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_in_stream_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    in_stream_TLAST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_in_stream_TLAST.snapshot();
                end else begin
                    fifo_in_stream_TLAST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_in_stream_TLAST = transaction_load_in_stream_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_in_stream_TID;
    
    initial begin : AXI_stream_driver_in_stream_TID
        integer fp;
        reg [215:0] token;
        reg [5 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_in_stream_TID = 0;
        fifo_in_stream_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_in_stream_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_in_stream_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_in_stream_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_in_stream_TID);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_in_stream_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_in_stream_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_in_stream_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    in_stream_TID_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_in_stream_TID.snapshot();
                end else begin
                    fifo_in_stream_TID.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_in_stream_TID = transaction_load_in_stream_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_in_stream_TDEST;
    
    initial begin : AXI_stream_driver_in_stream_TDEST
        integer fp;
        reg [215:0] token;
        reg [6 - 1:0] data;
        integer fp_ingress_status;
        reg [215:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_in_stream_TDEST = 0;
        fifo_in_stream_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_in_stream_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_in_stream_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_in_stream_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_in_stream_TDEST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_in_stream_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_in_stream_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data);
                        fifo_in_stream_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    in_stream_TDEST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_in_stream_TDEST.snapshot();
                end else begin
                    fifo_in_stream_TDEST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_in_stream_TDEST = transaction_load_in_stream_TDEST + 1;
            end
        end
    end

endmodule
