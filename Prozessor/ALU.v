module alu (a1, a2, o, status, control);
input wire [7:0] a1, a2;
output reg [7:0] o;
input wire [2:0] control;
output reg [2:0] status;

always  @ (posedge control[0] )
begin
	if (control[1] && !control[2] ) begin	
		o = a1 + a2;
	end else if(control[1] && control[2]) begin
		o = a1 - a2;
	end else if(!control[1] && control[2]) begin
		o = a1 * a2;
	end else if(!control[1] && !control[2]) begin
		o = a1 | a2;
	end
end

endmodule
