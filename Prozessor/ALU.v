module alu (a1, a2, o, status, control, enable);
input wire [7:0] a1, a2;
output reg [7:0] o;
input wire [4:0] control;
output reg [2:0] status;
input wire enable;

always  @ (posedge enable )
begin
	case (control)
		2'b00000 :begin
				o = a1 + a2;
				control[0] = a1[7] & a2[7];	
			end
		2'b00001 : o = a1 - a2;
		2'b00010 : o = a1 | a2;
		2'b00011 : o = a1 & a2;
		2'b00100 : o = a1 ^ a2;
		2'b00101 : o = ~a2;
                2'b00110 : o = a1 << a2;
                2'b00111 : o = a1 >> a2;
                2'b01000 : o = a1 >>> a2;
                2'b01001 : o = (a1 << a2) | (a1 >> (8-a2));
                2'b01010 : o = (a1 >> a2) | (a1 >> (8-a2));
                2'b01011 : o = a2;
                2'b01100 : o = 2'b00000000;
                2'b01101 : o = 2'b00000000;
		2'b01111 : o = a2 + a1 +control[0];
		2'b01111 : o = a2 - a1 - control[0];
		default : o = 2'b00000000;
	endcase






end

endmodule
