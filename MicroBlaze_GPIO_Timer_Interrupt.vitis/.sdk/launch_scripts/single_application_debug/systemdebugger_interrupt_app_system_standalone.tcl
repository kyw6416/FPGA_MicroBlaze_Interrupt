connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183B31B50A" && level==0 && jtag_device_ctx=="jsn-Basys3-210183B31B50A-0362d093-0"}
fpga -file D:/FPGA/MicroBlaze_GPIO_Timer_Interrupt/MicroBlaze_GPIO_Timer_Interrupt.vitis/interrupt_app/_ide/bitstream/design_Timer_Interrupt_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw D:/FPGA/MicroBlaze_GPIO_Timer_Interrupt/MicroBlaze_GPIO_Timer_Interrupt.vitis/design_Timer_Interrupt_wrapper/export/design_Timer_Interrupt_wrapper/hw/design_Timer_Interrupt_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow D:/FPGA/MicroBlaze_GPIO_Timer_Interrupt/MicroBlaze_GPIO_Timer_Interrupt.vitis/interrupt_app/Debug/interrupt_app.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
