set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sig_nsyn]
# SWitches
#Bank = 34, Pin name = IO_L21P_T3_DQS_34,					Sch name = SW0
set_property PACKAGE_PIN U9 [get_ports {sig_nsyn}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sig_nsyn}]
	
#CLOCK
    set_property PACKAGE_PIN E3 [get_ports clk]                            
        set_property IOSTANDARD LVCMOS33 [get_ports clk]
        create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk] 	
	
# LEDs
#Bank = 34, Pin name = IO_L24N_T3_34,                        Sch name = LED0
set_property PACKAGE_PIN T8 [get_ports {led[0]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
#Bank = 34, Pin name = IO_L21N_T3_DQS_34,                    Sch name = LED1
set_property PACKAGE_PIN V9 [get_ports {led[1]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
#Bank = 34, Pin name = IO_L24P_T3_34,                        Sch name = LED2
set_property PACKAGE_PIN R8 [get_ports {led[2]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
