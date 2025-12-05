set SynModuleInfo {
  {SRCNAME matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2 MODELNAME matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2 RTLNAME matmul_hls_matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2
    SUBMODULES {
      {MODELNAME matmul_hls_flow_control_loop_pipe_sequential_init RTLNAME matmul_hls_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matmul_hls_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME matmul_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4 MODELNAME matmul_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4 RTLNAME matmul_hls_matmul_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4}
  {SRCNAME matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6 MODELNAME matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6 RTLNAME matmul_hls_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6
    SUBMODULES {
      {MODELNAME matmul_hls_mul_32s_32s_32_2_1 RTLNAME matmul_hls_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matmul_hls_Pipeline_VITIS_LOOP_64_8_VITIS_LOOP_65_9 MODELNAME matmul_hls_Pipeline_VITIS_LOOP_64_8_VITIS_LOOP_65_9 RTLNAME matmul_hls_matmul_hls_Pipeline_VITIS_LOOP_64_8_VITIS_LOOP_65_9
    SUBMODULES {
      {MODELNAME matmul_hls_sparsemux_33_4_32_1_1 RTLNAME matmul_hls_sparsemux_33_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME matmul_hls MODELNAME matmul_hls RTLNAME matmul_hls IS_TOP 1
    SUBMODULES {
      {MODELNAME matmul_hls_A_RAM_2P_BRAM_1R1W RTLNAME matmul_hls_A_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matmul_hls_C_RAM_2P_BRAM_1R1W RTLNAME matmul_hls_C_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matmul_hls_control_s_axi RTLNAME matmul_hls_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME matmul_hls_regslice_both RTLNAME matmul_hls_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
