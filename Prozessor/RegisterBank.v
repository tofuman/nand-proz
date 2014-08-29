/*this module will realise the 8 Registers the processor provides.
Tofu tries not to create a bus system. The Idea is to hardwire everything, this will prevent floating wires.
*/
module regbank (addr1, addr2, addrdest, data1, data2, datadest, control, enable);
input wire [2:0] addr1, addr2, addrdest;
output wire [7:0] data1, data2, datadest;
input wire [2:0] control;
input wire enable;
reg [7:0] r0,r1,r2,r3,r4,r5,r6,r7;

always @ (posedge enable) begin
	
	if (controll[0]) begin
		case(addr1)
			0 : data1 = r0;
			default : data1 = r3;
		endcase
	end
end

endmodule

