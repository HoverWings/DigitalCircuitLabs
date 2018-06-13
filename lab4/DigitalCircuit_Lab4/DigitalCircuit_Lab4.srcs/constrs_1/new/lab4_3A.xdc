#module lab4_3A
#(
#    input A,
#    input B,
#    output reg [2:0] F
#);


# SWitches
#Bank = 34, Pin name = IO_L21P_T3_DQS_34,					Sch name = SW0
set_property PACKAGE_PIN U9 [get_ports {A}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A}]
#Bank = 34, Pin name = IO_L19P_T3_34,						Sch name = SW3
set_property PACKAGE_PIN R6 [get_ports {B}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {B}]

# LEDs
#Bank = 34, Pin name = IO_L24N_T3_34,						Sch name = LED0
set_property PACKAGE_PIN T8 [get_ports {F[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {F[0]}]
#Bank = 34, Pin name = IO_L21N_T3_DQS_34,					Sch name = LED1
set_property PACKAGE_PIN V9 [get_ports {F[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {F[1]}]
#Bank = 34, Pin name = IO_L24P_T3_34,						Sch name = LED2
set_property PACKAGE_PIN R8 [get_ports {F[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {F[2]}]

	