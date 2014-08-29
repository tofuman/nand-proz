module processor (enable);
input wire enable;
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
	.enable		(enable)
);

                                                                                                                            
alu alu1 (
	.a1, 
	.a2, 
	.o, 
	.status, 
	.control, 
	.enable 	(enable)
);

