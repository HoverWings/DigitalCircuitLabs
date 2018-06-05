#Bank = 35, Pin name = IO_L12P_T1_MRCC_35,					Sch name = CLK100MHZ
set_property PACKAGE_PIN E3 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

# SWitches
#Bank = 34, Pin name = IO_L21P_T3_DQS_34,					Sch name = SW0
set_property PACKAGE_PIN U9 [get_ports {A}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A}]
#Bank = 34, PiXLn name = IO_25_34,							Sch name = SW1
set_property PACKAGE_PIN U8 [get_ports {B}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {B}]
#Bank = 34, Pin name = IO_L23P_T3_34,						Sch name = SW2
set_property PACKAGE_PIN R7 [get_ports {C}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {C}]
#Bank = 34, Pin name = IO_L19P_T3_34,						Sch name = SW3
set_property PACKAGE_PIN R6 [get_ports {D}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {D}]
#Bank = 34, Pin name = IO_L19N_T3_VREF_34,					Sch name = SW4
set_property PACKAGE_PIN R5 [get_ports {LD}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LD}]
#Bank = 34, Pin name = IO_L20P_T3_34,						Sch name = SW5
set_property PACKAGE_PIN V7 [get_ports {CLR}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {CLR}]
#Bank = 34, Pin name = IO_L20N_T3_34,						Sch name = SW6
set_property PACKAGE_PIN V6 [get_ports {M}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {M}]


	
# LEDs
#Bank = 34, Pin name = IO_L24N_T3_34,                        Sch name = LED0
set_property PACKAGE_PIN T8 [get_ports {Qa}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {Qa}]
#Bank = 34, Pin name = IO_L21N_T3_DQS_34,                    Sch name = LED1
set_property PACKAGE_PIN V9 [get_ports {Qb}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {Qb}]
#Bank = 34, Pin name = IO_L24P_T3_34,                        Sch name = LED2
set_property PACKAGE_PIN R8 [get_ports {Qc}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {Qc}]
#Bank = 34, Pin name = IO_L23N_T3_34,                        Sch name = LED3
set_property PACKAGE_PIN T6 [get_ports {Qd}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {Qd}]
#Bank = 34, Pin name = IO_L12P_T1_MRCC_34,                    Sch name = LED4
set_property PACKAGE_PIN T5 [get_ports {Qcc}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {Qcc}]