// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Tue Sep 16 00:45:20 2025
// Host        : zenbook running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/siddharth/Project-Demo/matmul-ip/matrixmaltiplication/matrixmaltiplication.gen/sources_1/bd/design_1/ip/design_1_matmul_hls_0_0/design_1_matmul_hls_0_0_stub.v
// Design      : design_1_matmul_hls_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "matmul_hls,Vivado 2024.1" *)
module design_1_matmul_hls_0_0(s_axi_control_ARADDR, 
  s_axi_control_ARREADY, s_axi_control_ARVALID, s_axi_control_AWADDR, 
  s_axi_control_AWREADY, s_axi_control_AWVALID, s_axi_control_BREADY, 
  s_axi_control_BRESP, s_axi_control_BVALID, s_axi_control_RDATA, s_axi_control_RREADY, 
  s_axi_control_RRESP, s_axi_control_RVALID, s_axi_control_WDATA, s_axi_control_WREADY, 
  s_axi_control_WSTRB, s_axi_control_WVALID, ap_clk, ap_rst_n, interrupt, stream_in_TDATA, 
  stream_in_TKEEP, stream_in_TLAST, stream_in_TREADY, stream_in_TSTRB, stream_in_TVALID, 
  stream_out_TDATA, stream_out_TKEEP, stream_out_TLAST, stream_out_TREADY, 
  stream_out_TSTRB, stream_out_TVALID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_ARADDR[3:0],s_axi_control_ARREADY,s_axi_control_ARVALID,s_axi_control_AWADDR[3:0],s_axi_control_AWREADY,s_axi_control_AWVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_RDATA[31:0],s_axi_control_RREADY,s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_WDATA[31:0],s_axi_control_WREADY,s_axi_control_WSTRB[3:0],s_axi_control_WVALID,ap_rst_n,interrupt,stream_in_TDATA[31:0],stream_in_TKEEP[3:0],stream_in_TLAST[0:0],stream_in_TREADY,stream_in_TSTRB[3:0],stream_in_TVALID,stream_out_TDATA[31:0],stream_out_TKEEP[3:0],stream_out_TLAST[0:0],stream_out_TREADY,stream_out_TSTRB[3:0],stream_out_TVALID" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input [3:0]s_axi_control_ARADDR;
  output s_axi_control_ARREADY;
  input s_axi_control_ARVALID;
  input [3:0]s_axi_control_AWADDR;
  output s_axi_control_AWREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  output [31:0]s_axi_control_RDATA;
  input s_axi_control_RREADY;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input [31:0]s_axi_control_WDATA;
  output s_axi_control_WREADY;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  output interrupt;
  input [31:0]stream_in_TDATA;
  input [3:0]stream_in_TKEEP;
  input [0:0]stream_in_TLAST;
  output stream_in_TREADY;
  input [3:0]stream_in_TSTRB;
  input stream_in_TVALID;
  output [31:0]stream_out_TDATA;
  output [3:0]stream_out_TKEEP;
  output [0:0]stream_out_TLAST;
  input stream_out_TREADY;
  output [3:0]stream_out_TSTRB;
  output stream_out_TVALID;
endmodule
