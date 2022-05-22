module clock_generator (
  output wire p2d_b,
  output wire p2d,
  output wire p2_b,
  output wire p2,
  output wire p1d_b,
  output wire p1d,
  output wire p1_b,
  output wire p1,
  output wire Ad_b,
  output wire Ad,
  output wire A_b,
  output wire A,
  output wire Bd_b,
  output wire Bd,
  output wire B_b,
  output wire B,
  input wire clk
);
parameter VDD = VDD ;
parameter VSS = VSS ;
wire net160  ;
wire net147  ;
wire net53  ;
wire net161  ;
wire latch_out  ;
wire net148  ;
wire net54  ;
wire net162  ;
wire net149  ;
wire net55  ;
wire net163  ;
wire net56  ;
wire net164  ;
wire net57  ;
wire net70  ;
wire net165  ;
wire net58  ;
wire net71  ;
wire net166  ;
wire net59  ;
wire net72  ;
wire net180  ;
wire net167  ;
wire net200  ;
wire net73  ;
wire net181  ;
wire net168  ;
wire net201  ;
wire net74  ;
wire net182  ;
wire net1  ;
wire net169  ;
wire net202  ;
wire net75  ;
wire net183  ;
wire net2  ;
wire net203  ;
wire net76  ;
wire net184  ;
wire net3  ;
wire net204  ;
wire net90  ;
wire net77  ;
wire net185  ;
wire net4  ;
wire net205  ;
wire net91  ;
wire net78  ;
wire net186  ;
wire net5  ;
wire net206  ;
wire net92  ;
wire net79  ;
wire net187  ;
wire net6  ;
wire net220  ;
wire net207  ;
wire net93  ;
wire net188  ;
wire net7  ;
wire net221  ;
wire net208  ;
wire net94  ;
wire net189  ;
wire net8  ;
wire clk_div  ;
wire net222  ;
wire net209  ;
wire net95  ;
wire net9  ;
wire net223  ;
wire net96  ;
wire net224  ;
wire net97  ;
wire net225  ;
wire net98  ;
wire net226  ;
wire net99  ;
wire net227  ;
wire net228  ;
wire net229  ;
wire net110  ;
wire net111  ;
wire net112  ;
wire net113  ;
wire net20  ;
wire net114  ;
wire net21  ;
wire net115  ;
wire net22  ;
wire net116  ;
wire net23  ;
wire net130  ;
wire net117  ;
wire net24  ;
wire net131  ;
wire net118  ;
wire net25  ;
wire net132  ;
wire net119  ;
wire net26  ;
wire net133  ;
wire net40  ;
wire net27  ;
wire net134  ;
wire net41  ;
wire net28  ;
wire net135  ;
wire net42  ;
wire net29  ;
wire net136  ;
wire net43  ;
wire net150  ;
wire net137  ;
wire net44  ;
wire net151  ;
wire net138  ;
wire net45  ;
wire net152  ;
wire net139  ;
wire net46  ;
wire net153  ;
wire net47  ;
wire net154  ;
wire net60  ;
wire net48  ;
wire net155  ;
wire net61  ;
wire net49  ;
wire net156  ;
wire net62  ;
wire net170  ;
wire net157  ;
wire net63  ;
wire net171  ;
wire net158  ;
wire net64  ;
wire net172  ;
wire net159  ;
wire net65  ;
wire net173  ;
wire net66  ;
wire net174  ;
wire net67  ;
wire net80  ;
wire net175  ;
wire net68  ;
wire net81  ;
wire net176  ;
wire net69  ;
wire net82  ;
wire net190  ;
wire net177  ;
wire net210  ;
wire net83  ;
wire net191  ;
wire net178  ;
wire net211  ;
wire net84  ;
wire net192  ;
wire net179  ;
wire net212  ;
wire net85  ;
wire net193  ;
wire net213  ;
wire net86  ;
wire net194  ;
wire net214  ;
wire net87  ;
wire net195  ;
wire net215  ;
wire net88  ;
wire net196  ;
wire net216  ;
wire net89  ;
wire net197  ;
wire net230  ;
wire net217  ;
wire net198  ;
wire net218  ;
wire net199  ;
wire net219  ;
wire latch_in  ;
wire net100  ;
wire net101  ;
wire net102  ;
wire net103  ;
wire net10  ;
wire net104  ;
wire net11  ;
wire net105  ;
wire net12  ;
wire net106  ;
wire net13  ;
wire net120  ;
wire net107  ;
wire net14  ;
wire net121  ;
wire net108  ;
wire net15  ;
wire net122  ;
wire net109  ;
wire net16  ;
wire net123  ;
wire net30  ;
wire net17  ;
wire net124  ;
wire net31  ;
wire net18  ;
wire net125  ;
wire net32  ;
wire net19  ;
wire net126  ;
wire net33  ;
wire net140  ;
wire net127  ;
wire net34  ;
wire net141  ;
wire net128  ;
wire net35  ;
wire net142  ;
wire net129  ;
wire net36  ;
wire net143  ;
wire net37  ;
wire net144  ;
wire net50  ;
wire net38  ;
wire net145  ;
wire net51  ;
wire net39  ;
wire net146  ;
wire net52  ;

nand2_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x2 ( 
 .A( latch_out ),
 .B( clk ),
 .Y( net1 )
);


nand2_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x3 ( 
 .A( net3 ),
 .B( net6 ),
 .Y( net4 )
);


clkinv_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x4 ( 
 .A( net1 ),
 .Y( net2 )
);


clkinv_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x6 ( 
 .A( net2 ),
 .Y( net34 )
);


clkinv_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x9 ( 
 .A( net4 ),
 .Y( net5 )
);


clkinv_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x11 ( 
 .A( net5 ),
 .Y( net35 )
);


clkinv_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x1 ( 
 .A( clk ),
 .Y( net3 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x20 ( 
 .A( net36 ),
 .X( latch_in )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x21 ( 
 .A( net37 ),
 .X( net6 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x22 ( 
 .A( net34 ),
 .X( net38 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x25 ( 
 .A( net35 ),
 .X( net39 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x7 ( 
 .A( net40 ),
 .X( net36 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x12 ( 
 .A( net41 ),
 .X( net37 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x14 ( 
 .A( net38 ),
 .X( net42 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x15 ( 
 .A( net39 ),
 .X( net43 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x16 ( 
 .A( net44 ),
 .X( net40 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x17 ( 
 .A( net45 ),
 .X( net41 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x18 ( 
 .A( net42 ),
 .X( net46 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x19 ( 
 .A( net43 ),
 .X( net47 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x23 ( 
 .A( net48 ),
 .X( net44 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x24 ( 
 .A( net49 ),
 .X( net45 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x26 ( 
 .A( net46 ),
 .X( net7 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x27 ( 
 .A( net47 ),
 .X( net8 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x28 ( 
 .A( net50 ),
 .X( net48 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x29 ( 
 .A( net51 ),
 .X( net49 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x32 ( 
 .A( net52 ),
 .X( net50 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x33 ( 
 .A( net53 ),
 .X( net51 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x36 ( 
 .A( net54 ),
 .X( net52 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x37 ( 
 .A( net55 ),
 .X( net53 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x40 ( 
 .A( net56 ),
 .X( net54 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x41 ( 
 .A( net57 ),
 .X( net55 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x44 ( 
 .A( net58 ),
 .X( net56 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x45 ( 
 .A( net59 ),
 .X( net57 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x48 ( 
 .A( net60 ),
 .X( net58 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x49 ( 
 .A( net61 ),
 .X( net59 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x52 ( 
 .A( net62 ),
 .X( net60 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x53 ( 
 .A( net63 ),
 .X( net61 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x56 ( 
 .A( net64 ),
 .X( net62 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x57 ( 
 .A( net65 ),
 .X( net63 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x60 ( 
 .A( net66 ),
 .X( net64 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x61 ( 
 .A( net67 ),
 .X( net65 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x64 ( 
 .A( net68 ),
 .X( net66 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x65 ( 
 .A( net69 ),
 .X( net67 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x68 ( 
 .A( net70 ),
 .X( net68 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x69 ( 
 .A( net71 ),
 .X( net69 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x72 ( 
 .A( net72 ),
 .X( net70 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x73 ( 
 .A( net73 ),
 .X( net71 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x76 ( 
 .A( net74 ),
 .X( net72 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x77 ( 
 .A( net75 ),
 .X( net73 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x80 ( 
 .A( net76 ),
 .X( net74 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x81 ( 
 .A( net77 ),
 .X( net75 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x84 ( 
 .A( net78 ),
 .X( net76 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x85 ( 
 .A( net79 ),
 .X( net77 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x86 ( 
 .A( net80 ),
 .X( net78 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x87 ( 
 .A( net81 ),
 .X( net79 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x88 ( 
 .A( net82 ),
 .X( net80 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x89 ( 
 .A( net83 ),
 .X( net81 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x90 ( 
 .A( net84 ),
 .X( net82 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x91 ( 
 .A( net85 ),
 .X( net83 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x92 ( 
 .A( net86 ),
 .X( net84 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x93 ( 
 .A( net87 ),
 .X( net85 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x94 ( 
 .A( net88 ),
 .X( net86 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x95 ( 
 .A( net89 ),
 .X( net87 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x96 ( 
 .A( net90 ),
 .X( net88 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x97 ( 
 .A( net91 ),
 .X( net89 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x98 ( 
 .A( net92 ),
 .X( net90 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x99 ( 
 .A( net93 ),
 .X( net91 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x100 ( 
 .A( net94 ),
 .X( net92 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x101 ( 
 .A( net95 ),
 .X( net93 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x102 ( 
 .A( net96 ),
 .X( net94 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x103 ( 
 .A( net97 ),
 .X( net95 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x104 ( 
 .A( net98 ),
 .X( net96 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x105 ( 
 .A( net99 ),
 .X( net97 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x106 ( 
 .A( net100 ),
 .X( net98 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x107 ( 
 .A( net101 ),
 .X( net99 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x108 ( 
 .A( net102 ),
 .X( net100 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x109 ( 
 .A( net103 ),
 .X( net101 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x110 ( 
 .A( net104 ),
 .X( net102 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x111 ( 
 .A( net105 ),
 .X( net103 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x112 ( 
 .A( net106 ),
 .X( net104 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x113 ( 
 .A( net107 ),
 .X( net105 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x114 ( 
 .A( net108 ),
 .X( net106 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x115 ( 
 .A( net109 ),
 .X( net107 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x8 ( 
 .A( net110 ),
 .X( net108 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x13 ( 
 .A( net111 ),
 .X( net109 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x118 ( 
 .A( net112 ),
 .X( net110 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x119 ( 
 .A( net113 ),
 .X( net111 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x120 ( 
 .A( net114 ),
 .X( net112 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x121 ( 
 .A( net115 ),
 .X( net113 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x122 ( 
 .A( net116 ),
 .X( net114 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x123 ( 
 .A( net117 ),
 .X( net115 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x124 ( 
 .A( net118 ),
 .X( net116 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x125 ( 
 .A( net119 ),
 .X( net117 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x126 ( 
 .A( net120 ),
 .X( net118 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x127 ( 
 .A( net121 ),
 .X( net119 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x128 ( 
 .A( net122 ),
 .X( net120 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x129 ( 
 .A( net123 ),
 .X( net121 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x78 ( 
 .A( net124 ),
 .X( net122 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x79 ( 
 .A( net125 ),
 .X( net123 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x82 ( 
 .A( net126 ),
 .X( net124 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x83 ( 
 .A( net127 ),
 .X( net125 )
);


nand2_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x30 ( 
 .A( clk_div ),
 .B( net17 ),
 .Y( net9 )
);


nand2_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x31 ( 
 .A( net16 ),
 .B( net12 ),
 .Y( net13 )
);


clkinv_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x34 ( 
 .A( net9 ),
 .Y( net10 )
);


clkinv_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x35 ( 
 .A( net10 ),
 .Y( net128 )
);


clkinv_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x38 ( 
 .A( net13 ),
 .Y( net14 )
);


clkinv_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x39 ( 
 .A( net14 ),
 .Y( net129 )
);


clkinv_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x42 ( 
 .A( clk_div ),
 .Y( net12 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x43 ( 
 .A( net130 ),
 .X( net17 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x46 ( 
 .A( net131 ),
 .X( net16 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x47 ( 
 .A( net128 ),
 .X( net132 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x50 ( 
 .A( net129 ),
 .X( net133 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x51 ( 
 .A( net134 ),
 .X( net130 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x54 ( 
 .A( net135 ),
 .X( net131 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x55 ( 
 .A( net132 ),
 .X( net136 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x58 ( 
 .A( net133 ),
 .X( net137 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x59 ( 
 .A( net138 ),
 .X( net134 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x62 ( 
 .A( net139 ),
 .X( net135 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x63 ( 
 .A( net136 ),
 .X( net140 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x66 ( 
 .A( net137 ),
 .X( net141 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x67 ( 
 .A( net142 ),
 .X( net138 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x70 ( 
 .A( net143 ),
 .X( net139 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x71 ( 
 .A( net140 ),
 .X( net18 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x74 ( 
 .A( net141 ),
 .X( net20 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x75 ( 
 .A( net144 ),
 .X( net142 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x136 ( 
 .A( net145 ),
 .X( net143 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x137 ( 
 .A( net146 ),
 .X( net144 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x138 ( 
 .A( net147 ),
 .X( net145 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x139 ( 
 .A( net148 ),
 .X( net146 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x140 ( 
 .A( net149 ),
 .X( net147 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x141 ( 
 .A( net150 ),
 .X( net148 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x142 ( 
 .A( net151 ),
 .X( net149 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x143 ( 
 .A( net152 ),
 .X( net150 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x144 ( 
 .A( net153 ),
 .X( net151 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x145 ( 
 .A( net154 ),
 .X( net152 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x146 ( 
 .A( net155 ),
 .X( net153 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x147 ( 
 .A( net156 ),
 .X( net154 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x148 ( 
 .A( net157 ),
 .X( net155 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x149 ( 
 .A( net158 ),
 .X( net156 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x150 ( 
 .A( net159 ),
 .X( net157 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x151 ( 
 .A( net160 ),
 .X( net158 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x152 ( 
 .A( net161 ),
 .X( net159 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x153 ( 
 .A( net162 ),
 .X( net160 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x154 ( 
 .A( net163 ),
 .X( net161 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x155 ( 
 .A( net164 ),
 .X( net162 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x156 ( 
 .A( net165 ),
 .X( net163 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x157 ( 
 .A( net166 ),
 .X( net164 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x158 ( 
 .A( net167 ),
 .X( net165 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x159 ( 
 .A( net168 ),
 .X( net166 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x160 ( 
 .A( net169 ),
 .X( net167 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x161 ( 
 .A( net170 ),
 .X( net168 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x162 ( 
 .A( net171 ),
 .X( net169 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x163 ( 
 .A( net172 ),
 .X( net170 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x164 ( 
 .A( net173 ),
 .X( net171 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x165 ( 
 .A( net174 ),
 .X( net172 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x166 ( 
 .A( net175 ),
 .X( net173 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x167 ( 
 .A( net176 ),
 .X( net174 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x168 ( 
 .A( net177 ),
 .X( net175 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x169 ( 
 .A( net178 ),
 .X( net176 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x170 ( 
 .A( net179 ),
 .X( net177 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x171 ( 
 .A( net180 ),
 .X( net178 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x172 ( 
 .A( net181 ),
 .X( net179 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x173 ( 
 .A( net182 ),
 .X( net180 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x174 ( 
 .A( net183 ),
 .X( net181 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x175 ( 
 .A( net184 ),
 .X( net182 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x176 ( 
 .A( net185 ),
 .X( net183 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x177 ( 
 .A( net186 ),
 .X( net184 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x178 ( 
 .A( net187 ),
 .X( net185 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x179 ( 
 .A( net188 ),
 .X( net186 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x180 ( 
 .A( net189 ),
 .X( net187 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x181 ( 
 .A( net190 ),
 .X( net188 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x182 ( 
 .A( net191 ),
 .X( net189 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x183 ( 
 .A( net192 ),
 .X( net190 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x184 ( 
 .A( net193 ),
 .X( net191 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x185 ( 
 .A( net194 ),
 .X( net192 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x186 ( 
 .A( net195 ),
 .X( net193 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x187 ( 
 .A( net196 ),
 .X( net194 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x188 ( 
 .A( net197 ),
 .X( net195 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x189 ( 
 .A( net198 ),
 .X( net196 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x190 ( 
 .A( net199 ),
 .X( net197 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x191 ( 
 .A( net200 ),
 .X( net198 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x192 ( 
 .A( net201 ),
 .X( net199 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x193 ( 
 .A( net202 ),
 .X( net200 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x194 ( 
 .A( net203 ),
 .X( net201 )
);


nand2_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x195 ( 
 .A( net9 ),
 .B( net18 ),
 .Y( net23 )
);


clkinv_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x196 ( 
 .A( net10 ),
 .Y( net22 )
);


clkinv_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x197 ( 
 .A( net14 ),
 .Y( net21 )
);


nand2_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x198 ( 
 .A( net13 ),
 .B( net20 ),
 .Y( net19 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x199 ( 
 .A( net204 ),
 .X( net202 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x200 ( 
 .A( net205 ),
 .X( net203 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x201 ( 
 .A( net206 ),
 .X( net204 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x202 ( 
 .A( net207 ),
 .X( net205 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x203 ( 
 .A( net208 ),
 .X( net206 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x204 ( 
 .A( net209 ),
 .X( net207 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x205 ( 
 .A( net210 ),
 .X( net208 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x206 ( 
 .A( net211 ),
 .X( net209 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x207 ( 
 .A( net212 ),
 .X( net210 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x208 ( 
 .A( net213 ),
 .X( net211 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x209 ( 
 .A( net214 ),
 .X( net212 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x210 ( 
 .A( net215 ),
 .X( net213 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x211 ( 
 .A( net216 ),
 .X( net214 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x212 ( 
 .A( net217 ),
 .X( net215 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x213 ( 
 .A( net15 ),
 .X( net218 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x214 ( 
 .A( net11 ),
 .X( net219 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x215 ( 
 .A( net220 ),
 .X( net216 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x216 ( 
 .A( net221 ),
 .X( net217 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x217 ( 
 .A( net222 ),
 .X( net220 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x218 ( 
 .A( net223 ),
 .X( net221 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x219 ( 
 .A( net224 ),
 .X( net222 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x220 ( 
 .A( net225 ),
 .X( net223 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x221 ( 
 .A( net218 ),
 .X( net224 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x222 ( 
 .A( net219 ),
 .X( net225 )
);


dfxbp_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x223 ( 
 .CLK( clk ),
 .D( net24 ),
 .Q( clk_div ),
 .Q_N( net24 )
);


dfxbp_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x224 ( 
 .CLK( p2 ),
 .D( clk_div ),
 .Q( net25 ),
 .Q_N( net226 )
);


mux2_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x225 ( 
 .A0( Ad_b ),
 .A1( Bd_b ),
 .S( net25 ),
 .X( net26 )
);


nand2_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x226 ( 
 .A( net26 ),
 .B( latch_in ),
 .Y( net27 )
);


clkinv_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x227 ( 
 .A( net27 ),
 .Y( latch_out )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x232 ( 
 .A( net22 ),
 .X( A_b )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x233 ( 
 .A( net10 ),
 .X( A )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x234 ( 
 .A( net11 ),
 .X( Ad_b )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x235 ( 
 .A( net23 ),
 .X( Ad )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x236 ( 
 .A( net19 ),
 .X( Bd )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x237 ( 
 .A( net15 ),
 .X( Bd_b )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x238 ( 
 .A( net14 ),
 .X( B )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x239 ( 
 .A( net21 ),
 .X( B_b )
);


clkinv_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x228 ( 
 .A( net23 ),
 .Y( net11 )
);


clkinv_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x229 ( 
 .A( net19 ),
 .Y( net15 )
);


nand2_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x5 ( 
 .A( net1 ),
 .B( net7 ),
 .Y( net33 )
);


clkinv_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x10 ( 
 .A( net2 ),
 .Y( net32 )
);


clkinv_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x116 ( 
 .A( net5 ),
 .Y( net31 )
);


nand2_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x117 ( 
 .A( net4 ),
 .B( net8 ),
 .Y( net30 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x130 ( 
 .A( net29 ),
 .X( net227 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x131 ( 
 .A( net28 ),
 .X( net228 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x132 ( 
 .A( net229 ),
 .X( net126 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x133 ( 
 .A( net230 ),
 .X( net127 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x134 ( 
 .A( net227 ),
 .X( net229 )
);


clkdlybuf4s50_1
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x135 ( 
 .A( net228 ),
 .X( net230 )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x230 ( 
 .A( net32 ),
 .X( p2_b )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x231 ( 
 .A( net2 ),
 .X( p2 )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x240 ( 
 .A( net28 ),
 .X( p2d_b )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x241 ( 
 .A( net33 ),
 .X( p2d )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x242 ( 
 .A( net30 ),
 .X( p1d )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x243 ( 
 .A( net29 ),
 .X( p1d_b )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x244 ( 
 .A( net5 ),
 .X( p1 )
);


clkbuf_16
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x245 ( 
 .A( net31 ),
 .X( p1_b )
);


clkinv_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x246 ( 
 .A( net33 ),
 .Y( net28 )
);


clkinv_4
#(
.VGND ( VSS ) ,
.VNB ( VSS ) ,
.VPB ( VDD ) ,
.VPWR ( VDD ) ,
.prefix ( sky130_fd_sc_hd__ )
)
x247 ( 
 .A( net30 ),
 .Y( net29 )
);

endmodule
