module DCache2(data_out,data0,data4,data8,data12,data16,data20,data24,data28,address,data_in,write_enable,clk);
	parameter WIDTH = 32;
	parameter SIZE = 32;
	parameter WIDTH_ADD = 5;
	parameter BYTE = 8;
	
	input [WIDTH_ADD-1:0] address;
	input [WIDTH-1:0] data_in;
	input write_enable,clk;
	
	output [WIDTH-1:0] data_out;
	output [WIDTH-1:0] data0;
	output [WIDTH-1:0] data4;
	output [WIDTH-1:0] data8;
	output [WIDTH-1:0] data12;
	output [WIDTH-1:0] data16;
	output [WIDTH-1:0] data20;
	output [WIDTH-1:0] data24;
	output [WIDTH-1:0] data28;
	
	reg [BYTE-1:0] mem [SIZE-1:0];
	integer ff;
	
	assign	data_out = {{mem[address+3]},{mem[address+2]},{mem[address+1]},{mem[address]}};
	
	assign data0 = {mem[3],mem[2],mem[1],mem[0]};
	assign data4 = {mem[7],mem[6],mem[5],mem[4]};
	assign data8 = {mem[11],mem[10],mem[9],mem[8]};
	assign data12 = {mem[15],mem[14],mem[13],mem[12]};
	assign data16 = {mem[19],mem[18],mem[17],mem[16]};
	assign data20 = {mem[23],mem[22],mem[21],mem[20]};
	assign data24 = {mem[27],mem[26],mem[25],mem[24]};
	assign data28 = {mem[31],mem[30],mem[29],mem[28]};
	
	
	always @(posedge clk)
	begin
		if(write_enable)
		begin
			{{mem[address+3]},{mem[address+2]},{mem[address+1]},{mem[address]}} = data_in;
		end
	end
	
endmodule
