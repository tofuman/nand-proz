module memman (addr, word, clk, dataIsPresent, rnw, enable, addrMem, wordMem);
input wire clk, dataIsPresent, rnw, enable;
inout reg [15:0] word, wordMem;
inout wire [14:0] addr, addrMem;


always @ (posedge clk) begin
	if(enable) begin
		if(rnw) begin
			addrMem = addr;
			if(dataIsPresent) begin
				word = wordMem;
			end
		end else begin
			addrMem = addr;
			wordMem = word;
			//TODO Abfangen wenn datat da ist
		end
	end

end

endmodule
