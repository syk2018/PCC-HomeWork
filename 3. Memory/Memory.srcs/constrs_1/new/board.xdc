set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

# Switch??????
set_property PULLDOWN true [get_ports myInput]
set_property IOSTANDARD LVCMOS18 [get_ports myInput]
set_property PACKAGE_PIN T3  [get_ports {myInput[31]}]
set_property PACKAGE_PIN U3  [get_ports {myInput[30]}]
set_property PACKAGE_PIN T4  [get_ports {myInput[29]}]
set_property PACKAGE_PIN V3  [get_ports {myInput[28]}]
set_property PACKAGE_PIN V4  [get_ports {myInput[27]}]
set_property PACKAGE_PIN W4  [get_ports {myInput[26]}]
set_property PACKAGE_PIN Y4  [get_ports {myInput[25]}]
set_property PACKAGE_PIN Y6  [get_ports {myInput[24]}]
set_property PACKAGE_PIN W7  [get_ports {myInput[23]}]
set_property PACKAGE_PIN Y8  [get_ports {myInput[22]}]
set_property PACKAGE_PIN Y7  [get_ports {myInput[21]}]
set_property PACKAGE_PIN T1  [get_ports {myInput[20]}]
set_property PACKAGE_PIN U1  [get_ports {myInput[19]}]
set_property PACKAGE_PIN U2  [get_ports {myInput[18]}]
set_property PACKAGE_PIN W1  [get_ports {myInput[17]}]
set_property PACKAGE_PIN W2  [get_ports {myInput[16]}]
set_property PACKAGE_PIN Y1  [get_ports {myInput[15]}]
set_property PACKAGE_PIN AA1 [get_ports {myInput[14]}]
set_property PACKAGE_PIN V2  [get_ports {myInput[13]}]
set_property PACKAGE_PIN Y2  [get_ports {myInput[12]}]
set_property PACKAGE_PIN AB1 [get_ports {myInput[11]}]
set_property PACKAGE_PIN AB2 [get_ports {myInput[10]}]
set_property PACKAGE_PIN AB3 [get_ports {myInput[9]}]
set_property PACKAGE_PIN AB5 [get_ports {myInput[8]}]
set_property PACKAGE_PIN AA6 [get_ports {myInput[7]}]
set_property PACKAGE_PIN R2  [get_ports {myInput[6]}]
set_property PACKAGE_PIN R3  [get_ports {myInput[5]}]
set_property PACKAGE_PIN T6  [get_ports {myInput[4]}]
set_property PACKAGE_PIN R6  [get_ports {myInput[3]}]
set_property PACKAGE_PIN U7  [get_ports {myInput[2]}]
set_property PACKAGE_PIN AB7 [get_ports {myInput[1]}]
set_property PACKAGE_PIN AB8 [get_ports {myInput[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports swb]
set_property PACKAGE_PIN R4  [get_ports {swb[5]}]
set_property PACKAGE_PIN AA4 [get_ports {swb[4]}]
set_property PACKAGE_PIN AB6 [get_ports {swb[3]}]
set_property PACKAGE_PIN T5  [get_ports {swb[2]}]
set_property PACKAGE_PIN V8  [get_ports {swb[1]}]
set_property PACKAGE_PIN AA8 [get_ports {swb[0]}]

# LED
set_property IOSTANDARD LVCMOS18 [get_ports led]
set_property PACKAGE_PIN R1 [get_ports {led[31]}]
set_property PACKAGE_PIN P2 [get_ports {led[30]}]
set_property PACKAGE_PIN P1 [get_ports {led[29]}]
set_property PACKAGE_PIN N2 [get_ports {led[28]}]
set_property PACKAGE_PIN M1 [get_ports {led[27]}]
set_property PACKAGE_PIN M2 [get_ports {led[26]}]
set_property PACKAGE_PIN L1 [get_ports {led[25]}]
set_property PACKAGE_PIN J2 [get_ports {led[24]}]
set_property PACKAGE_PIN G1 [get_ports {led[23]}]
set_property PACKAGE_PIN E1 [get_ports {led[22]}]
set_property PACKAGE_PIN D2 [get_ports {led[21]}]
set_property PACKAGE_PIN A1 [get_ports {led[20]}]
set_property PACKAGE_PIN L3 [get_ports {led[19]}]
set_property PACKAGE_PIN G3 [get_ports {led[18]}]
set_property PACKAGE_PIN K4 [get_ports {led[17]}]
set_property PACKAGE_PIN G4 [get_ports {led[16]}]
set_property PACKAGE_PIN K1 [get_ports {led[15]}]
set_property PACKAGE_PIN J1 [get_ports {led[14]}]
set_property PACKAGE_PIN H2 [get_ports {led[13]}]
set_property PACKAGE_PIN G2 [get_ports {led[12]}]
set_property PACKAGE_PIN F1 [get_ports {led[11]}]
set_property PACKAGE_PIN E2 [get_ports {led[10]}]
set_property PACKAGE_PIN D1 [get_ports {led[9]}]
set_property PACKAGE_PIN B1 [get_ports {led[8]}]
set_property PACKAGE_PIN B2 [get_ports {led[7]}]
set_property PACKAGE_PIN N3 [get_ports {led[6]}]
set_property PACKAGE_PIN M3 [get_ports {led[5]}]
set_property PACKAGE_PIN K3 [get_ports {led[4]}]
set_property PACKAGE_PIN H3 [get_ports {led[3]}]
set_property PACKAGE_PIN N4 [get_ports {led[2]}]
set_property PACKAGE_PIN L4 [get_ports {led[1]}]
set_property PACKAGE_PIN J4 [get_ports {led[0]}]