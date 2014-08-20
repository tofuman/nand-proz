module regbank (addr1, addr2, addrdest, data1, data2, datadest, control, enable);
input [2:0] wire addr1, adr2, addrdest;
output [7:0] wire data1, data2, datadest;
input [2:0] wire control;
input wire enable;
reg [7:0] r0,r1,r2,r3,r4,r5,r6,r7;

always @ (posedge enable) begin
	
	if
	case(addr1)
		0 : data1 = r0;
		1 : $display ("I am feeling sleepy");
		2 : $display  ("Let me skip this tutorial");
		default : $display  ("Need to complete");
	endcase

end

endmodule

