module processor (clk);
input wire clk;
wire [7:0] data1,data2,datadest;
wire control;




regbank regb (
	.addr1,
	.addr2, 
	.addrdest, 
	.data1		(data1), 
	.data2		(data2), 
	.datadest	(datadest), 
	.control	(control), 
	.enable		(clk)
);

                                                                                                                            
alu alu1 (
	.a1, 
	.a2, 
	.o, 
	.status, 
	.control, 
	.enable 	(clk)
);


steuerwerk str (
	.addr1		(addr1),
	.addr2		(addr2), 
	.addrdest	(addrdest),
	.control	(control),
	.status, 
	.instructionbus,
	.clk		(clk)
);
