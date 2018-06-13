#module lab4_3B
#(
#    input  [WIDTH-1:0] A,
#    input  [WIDTH-1:0] B,
#    output [3*WIDTH-1:0] F,
#    output [2:0] S
#);

# SWitches
#Bank = 34, Pin name = IO_L21P_T3_DQS_34,					Sch name = SW0
set_property PACKAGE_PIN U9 [get_ports {A[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]
#Bank = 34, Pin name = IO_25_34,							Sch name = SW1
set_property PACKAGE_PIN U8 [get_ports {A[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]
#Bank = 34, Pin name = IO_L23P_T3_34,						Sch name = SW2
set_property PACKAGE_PIN R7 [get_ports {A[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]
#Bank = 34, Pin name = IO_L19P_T3_34,						Sch name = SW3
set_property PACKAGE_PIN R6 [get_ports {B[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]
#Bank = 34, Pin name = IO_L19N_T3_VREF_34,					Sch name = SW4
set_property PACKAGE_PIN R5 [get_ports {B[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]
#Bank = 34, Pin name = IO_L20P_T3_34,						Sch name = SW5
set_property PACKAGE_PIN V7 [get_ports {B[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]

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
#Bank = 34, Pin name = IO_L23N_T3_34,						Sch name = LED3
set_property PACKAGE_PIN T6 [get_ports {F[3]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {F[3]}]
#Bank = 34, Pin name = IO_L12P_T1_MRCC_34,					Sch name = LED4
set_property PACKAGE_PIN T5 [get_ports {F[4]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {F[4]}]
#Bank = 34, Pin name = IO_L12N_T1_MRCC_34,					Sch	name = LED5
set_property PACKAGE_PIN T4 [get_ports {F[5]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {F[5]}]
#Bank = 34, Pin name = IO_L22P_T3_34,                        Sch name = LED6
set_property PACKAGE_PIN U7 [get_ports {F[6]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {F[6]}]
#Bank = 34, Pin name = IO_L22N_T3_34,                        Sch name = LED7
set_property PACKAGE_PIN U6 [get_ports {F[7]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {F[7]}]
#Bank = 34, Pin name = IO_L10N_T1_34,                        Sch name = LED8
set_property PACKAGE_PIN V4 [get_ports {F[8]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {F[8]}]
#Bank = 34, Pin name = IO_L8N_T1_34,                        Sch name = LED9
set_property PACKAGE_PIN U3 [get_ports {S[0]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {S[0]}]
#Bank = 34, Pin name = IO_L7N_T1_34,                        Sch name = LED10
set_property PACKAGE_PIN V1 [get_ports {S[1]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {S[1]}]
#Bank = 34, Pin name = IO_L17P_T2_34,                        Sch name = LED11
set_property PACKAGE_PIN R1 [get_ports {S[2]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {S[2]}]
