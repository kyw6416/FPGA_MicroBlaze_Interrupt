//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Fri Oct 21 10:48:26 2022
//Host        : 603-21 running 64-bit major release  (build 9200)
//Command     : generate_target design_Timer_Interrupt_wrapper.bd
//Design      : design_Timer_Interrupt_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_Timer_Interrupt_wrapper
   (BTM_tri_io,
    LED_tri_io,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  inout [3:0]BTM_tri_io;
  inout [7:0]LED_tri_io;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [0:0]BTM_tri_i_0;
  wire [1:1]BTM_tri_i_1;
  wire [2:2]BTM_tri_i_2;
  wire [3:3]BTM_tri_i_3;
  wire [0:0]BTM_tri_io_0;
  wire [1:1]BTM_tri_io_1;
  wire [2:2]BTM_tri_io_2;
  wire [3:3]BTM_tri_io_3;
  wire [0:0]BTM_tri_o_0;
  wire [1:1]BTM_tri_o_1;
  wire [2:2]BTM_tri_o_2;
  wire [3:3]BTM_tri_o_3;
  wire [0:0]BTM_tri_t_0;
  wire [1:1]BTM_tri_t_1;
  wire [2:2]BTM_tri_t_2;
  wire [3:3]BTM_tri_t_3;
  wire [0:0]LED_tri_i_0;
  wire [1:1]LED_tri_i_1;
  wire [2:2]LED_tri_i_2;
  wire [3:3]LED_tri_i_3;
  wire [4:4]LED_tri_i_4;
  wire [5:5]LED_tri_i_5;
  wire [6:6]LED_tri_i_6;
  wire [7:7]LED_tri_i_7;
  wire [0:0]LED_tri_io_0;
  wire [1:1]LED_tri_io_1;
  wire [2:2]LED_tri_io_2;
  wire [3:3]LED_tri_io_3;
  wire [4:4]LED_tri_io_4;
  wire [5:5]LED_tri_io_5;
  wire [6:6]LED_tri_io_6;
  wire [7:7]LED_tri_io_7;
  wire [0:0]LED_tri_o_0;
  wire [1:1]LED_tri_o_1;
  wire [2:2]LED_tri_o_2;
  wire [3:3]LED_tri_o_3;
  wire [4:4]LED_tri_o_4;
  wire [5:5]LED_tri_o_5;
  wire [6:6]LED_tri_o_6;
  wire [7:7]LED_tri_o_7;
  wire [0:0]LED_tri_t_0;
  wire [1:1]LED_tri_t_1;
  wire [2:2]LED_tri_t_2;
  wire [3:3]LED_tri_t_3;
  wire [4:4]LED_tri_t_4;
  wire [5:5]LED_tri_t_5;
  wire [6:6]LED_tri_t_6;
  wire [7:7]LED_tri_t_7;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  IOBUF BTM_tri_iobuf_0
       (.I(BTM_tri_o_0),
        .IO(BTM_tri_io[0]),
        .O(BTM_tri_i_0),
        .T(BTM_tri_t_0));
  IOBUF BTM_tri_iobuf_1
       (.I(BTM_tri_o_1),
        .IO(BTM_tri_io[1]),
        .O(BTM_tri_i_1),
        .T(BTM_tri_t_1));
  IOBUF BTM_tri_iobuf_2
       (.I(BTM_tri_o_2),
        .IO(BTM_tri_io[2]),
        .O(BTM_tri_i_2),
        .T(BTM_tri_t_2));
  IOBUF BTM_tri_iobuf_3
       (.I(BTM_tri_o_3),
        .IO(BTM_tri_io[3]),
        .O(BTM_tri_i_3),
        .T(BTM_tri_t_3));
  IOBUF LED_tri_iobuf_0
       (.I(LED_tri_o_0),
        .IO(LED_tri_io[0]),
        .O(LED_tri_i_0),
        .T(LED_tri_t_0));
  IOBUF LED_tri_iobuf_1
       (.I(LED_tri_o_1),
        .IO(LED_tri_io[1]),
        .O(LED_tri_i_1),
        .T(LED_tri_t_1));
  IOBUF LED_tri_iobuf_2
       (.I(LED_tri_o_2),
        .IO(LED_tri_io[2]),
        .O(LED_tri_i_2),
        .T(LED_tri_t_2));
  IOBUF LED_tri_iobuf_3
       (.I(LED_tri_o_3),
        .IO(LED_tri_io[3]),
        .O(LED_tri_i_3),
        .T(LED_tri_t_3));
  IOBUF LED_tri_iobuf_4
       (.I(LED_tri_o_4),
        .IO(LED_tri_io[4]),
        .O(LED_tri_i_4),
        .T(LED_tri_t_4));
  IOBUF LED_tri_iobuf_5
       (.I(LED_tri_o_5),
        .IO(LED_tri_io[5]),
        .O(LED_tri_i_5),
        .T(LED_tri_t_5));
  IOBUF LED_tri_iobuf_6
       (.I(LED_tri_o_6),
        .IO(LED_tri_io[6]),
        .O(LED_tri_i_6),
        .T(LED_tri_t_6));
  IOBUF LED_tri_iobuf_7
       (.I(LED_tri_o_7),
        .IO(LED_tri_io[7]),
        .O(LED_tri_i_7),
        .T(LED_tri_t_7));
  design_Timer_Interrupt design_Timer_Interrupt_i
       (.BTM_tri_i({BTM_tri_i_3,BTM_tri_i_2,BTM_tri_i_1,BTM_tri_i_0}),
        .BTM_tri_o({BTM_tri_o_3,BTM_tri_o_2,BTM_tri_o_1,BTM_tri_o_0}),
        .BTM_tri_t({BTM_tri_t_3,BTM_tri_t_2,BTM_tri_t_1,BTM_tri_t_0}),
        .LED_tri_i({LED_tri_i_7,LED_tri_i_6,LED_tri_i_5,LED_tri_i_4,LED_tri_i_3,LED_tri_i_2,LED_tri_i_1,LED_tri_i_0}),
        .LED_tri_o({LED_tri_o_7,LED_tri_o_6,LED_tri_o_5,LED_tri_o_4,LED_tri_o_3,LED_tri_o_2,LED_tri_o_1,LED_tri_o_0}),
        .LED_tri_t({LED_tri_t_7,LED_tri_t_6,LED_tri_t_5,LED_tri_t_4,LED_tri_t_3,LED_tri_t_2,LED_tri_t_1,LED_tri_t_0}),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
