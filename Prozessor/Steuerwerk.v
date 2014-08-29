module steuerwerk(addr1, addr2, addrdest, control, status, instructionbusi, clk);
input wire [8:0] status;
output wire [8:0] control;
input wire [15:0] instructionbus;
output wire [2:0] addr1, addr2, addrdest; 
reg [15:0] instructioncounter;

always @ (posedge clk) 
begin
	



endmodule
