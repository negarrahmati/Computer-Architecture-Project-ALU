module DCache(data_out,address,data_in,write_enable,clk);
	parameter WIDTH = 32;
	parameter SIZE = 32;
	parameter WIDTH_ADD = 32;
	parameter BYTE = 8;
	
	input [WIDTH_ADD-1:0] address;
	input [WIDTH-1:0] data_in;
	input write_enable,clk;
	
	output [WIDTH-1:0] data_out;
	
	reg [BYTE-1:0] mem [SIZE-1:0];
	integer ff;
	
	assign	data_out = {{mem[address+3]},{mem[address+2]},{mem[address+1]},{mem[address]}};
	
	
	always @(posedge clk)
	begin
		if(write_enable)
		begin
			{{mem[address+3]},{mem[address+2]},{mem[address+1]},{mem[address]}} = data_in;
		end
	end
	
endmodule
