set_property SRC_FILE_INFO {cfile:d:/FPGA/MicroBlaze_GPIO_Timer_Interrupt/MicroBlaze_GPIO_Timer_Interrupt.srcs/sources_1/bd/design_Timer_Interrupt/ip/design_Timer_Interrupt_dlmb_bram_if_cntlr_0/design_Timer_Interrupt_dlmb_bram_if_cntlr_0/design_Timer_Interrupt_dlmb_bram_if_cntlr_0_in_context.xdc rfile:../../../MicroBlaze_GPIO_Timer_Interrupt.srcs/sources_1/bd/design_Timer_Interrupt/ip/design_Timer_Interrupt_dlmb_bram_if_cntlr_0/design_Timer_Interrupt_dlmb_bram_if_cntlr_0/design_Timer_Interrupt_dlmb_bram_if_cntlr_0_in_context.xdc id:1 order:EARLY scoped_inst:design_Timer_Interrupt_i/microblaze_0_local_memory/dlmb_bram_if_cntlr} [current_design]
set_property SRC_FILE_INFO {cfile:d:/FPGA/MicroBlaze_GPIO_Timer_Interrupt/MicroBlaze_GPIO_Timer_Interrupt.srcs/sources_1/bd/design_Timer_Interrupt/ip/design_Timer_Interrupt_ilmb_bram_if_cntlr_0/design_Timer_Interrupt_ilmb_bram_if_cntlr_0/design_Timer_Interrupt_ilmb_bram_if_cntlr_0_in_context.xdc rfile:../../../MicroBlaze_GPIO_Timer_Interrupt.srcs/sources_1/bd/design_Timer_Interrupt/ip/design_Timer_Interrupt_ilmb_bram_if_cntlr_0/design_Timer_Interrupt_ilmb_bram_if_cntlr_0/design_Timer_Interrupt_ilmb_bram_if_cntlr_0_in_context.xdc id:2 order:EARLY scoped_inst:design_Timer_Interrupt_i/microblaze_0_local_memory/ilmb_bram_if_cntlr} [current_design]
set_property SRC_FILE_INFO {cfile:d:/FPGA/MicroBlaze_GPIO_Timer_Interrupt/MicroBlaze_GPIO_Timer_Interrupt.srcs/sources_1/bd/design_Timer_Interrupt/ip/design_Timer_Interrupt_mdm_1_0/design_Timer_Interrupt_mdm_1_0/design_Timer_Interrupt_mdm_1_0_in_context.xdc rfile:../../../MicroBlaze_GPIO_Timer_Interrupt.srcs/sources_1/bd/design_Timer_Interrupt/ip/design_Timer_Interrupt_mdm_1_0/design_Timer_Interrupt_mdm_1_0/design_Timer_Interrupt_mdm_1_0_in_context.xdc id:3 order:EARLY scoped_inst:design_Timer_Interrupt_i/mdm_1} [current_design]
set_property SRC_FILE_INFO {cfile:d:/FPGA/MicroBlaze_GPIO_Timer_Interrupt/MicroBlaze_GPIO_Timer_Interrupt.srcs/sources_1/bd/design_Timer_Interrupt/ip/design_Timer_Interrupt_clk_wiz_1_0/design_Timer_Interrupt_clk_wiz_1_0/design_Timer_Interrupt_clk_wiz_1_0_in_context.xdc rfile:../../../MicroBlaze_GPIO_Timer_Interrupt.srcs/sources_1/bd/design_Timer_Interrupt/ip/design_Timer_Interrupt_clk_wiz_1_0/design_Timer_Interrupt_clk_wiz_1_0/design_Timer_Interrupt_clk_wiz_1_0_in_context.xdc id:4 order:EARLY scoped_inst:design_Timer_Interrupt_i/clk_wiz_1} [current_design]
set_property SRC_FILE_INFO {cfile:D:/FPGA/MicroBlaze_GPIO_Timer_Interrupt/MicroBlaze_GPIO_Timer_Interrupt.srcs/constrs_1/imports/Basys3_XDC/MY_Basys-3-Master.xdc rfile:../../../MicroBlaze_GPIO_Timer_Interrupt.srcs/constrs_1/imports/Basys3_XDC/MY_Basys-3-Master.xdc id:5} [current_design]
current_instance design_Timer_Interrupt_i/microblaze_0_local_memory/dlmb_bram_if_cntlr
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
current_instance design_Timer_Interrupt_i/microblaze_0_local_memory/ilmb_bram_if_cntlr
set_property src_info {type:SCOPED_XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
current_instance design_Timer_Interrupt_i/mdm_1
set_property src_info {type:SCOPED_XDC file:3 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 33.333 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:3 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 33.333 [get_ports {}]
current_instance
current_instance design_Timer_Interrupt_i/clk_wiz_1
set_property src_info {type:SCOPED_XDC file:4 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:4 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 0.000 0.000} [get_ports {}]
current_instance
set_property src_info {type:XDC file:5 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports { sys_clock }]; #IO_L12P_T1_MRCC_34 ,Sch=CLK100MHZ
set_property src_info {type:XDC file:5 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U16  IOSTANDARD LVCMOS33 } [get_ports { LED_tri_io[0]  }]; #IO_L23N_T3_A02_D18_14        ,Sch=LED0
set_property src_info {type:XDC file:5 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E19  IOSTANDARD LVCMOS33 } [get_ports { LED_tri_io[1]  }]; #IO_L3N_T0_DQS_EMCCLK_14      ,Sch=LED1
set_property src_info {type:XDC file:5 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U19  IOSTANDARD LVCMOS33 } [get_ports { LED_tri_io[2]  }]; #IO_L15P_T2_DQS_RDWR_B_14     ,Sch=LED2
set_property src_info {type:XDC file:5 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V19  IOSTANDARD LVCMOS33 } [get_ports { LED_tri_io[3]  }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 ,Sch=LED3
set_property src_info {type:XDC file:5 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W18  IOSTANDARD LVCMOS33 } [get_ports { LED_tri_io[4]  }]; #IO_L16P_T2_CSI_B_14          ,Sch=LED4
set_property src_info {type:XDC file:5 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U15  IOSTANDARD LVCMOS33 } [get_ports { LED_tri_io[5]  }]; #IO_L23P_T3_A03_D19_14        ,Sch=LED5
set_property src_info {type:XDC file:5 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U14  IOSTANDARD LVCMOS33 } [get_ports { LED_tri_io[6]  }]; #IO_25_14                     ,Sch=LED6
set_property src_info {type:XDC file:5 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V14  IOSTANDARD LVCMOS33 } [get_ports { LED_tri_io[7]  }]; #IO_L24N_T3_A00_D16_14        ,Sch=LED7
set_property src_info {type:XDC file:5 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U18  IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L18N_T2_A11_D27_14 ,Sch=BTNC
set_property src_info {type:XDC file:5 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T18  IOSTANDARD LVCMOS33 } [get_ports { BTM_tri_io[0] }]; #IO_L17N_T2_A13_D29_14 ,Sch=BTNU
set_property src_info {type:XDC file:5 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W19  IOSTANDARD LVCMOS33 } [get_ports { BTM_tri_io[1] }]; #IO_L16N_T2_A15_D31_14 ,Sch=BTNL
set_property src_info {type:XDC file:5 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T17  IOSTANDARD LVCMOS33 } [get_ports { BTM_tri_io[2] }]; #IO_L17P_T2_A14_D30_14 ,Sch=BTNR
set_property src_info {type:XDC file:5 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U17  IOSTANDARD LVCMOS33 } [get_ports { BTM_tri_io[3] }]; #IO_L18P_T2_A12_D28_14 ,Sch=BTND
