module fibonacciICache(address,data_out);
	parameter WIDTH = 32;
	parameter SIZE = 60;
	parameter WIDTH_ADD = 6;
	parameter BYTE = 8;
	
	input [WIDTH_ADD-1:0] address;
	
	output [WIDTH-1:0] data_out;
	
	reg [BYTE-1:0] mem [SIZE-1:0];
	
	assign	data_out = {{mem[address+3]},{mem[address+2]},{mem[address+1]},{mem[address]}};
	
	initial 
	begin
		mem[3][BYTE-1:0] = 8'b11100000;
mem[2][BYTE-1:0] = 8'b00100001;
mem[1][BYTE-1:0] = 8'b00000000;
mem[0][BYTE-1:0] = 8'b00000001;
mem[7][BYTE-1:0] = 8'b11101000;
mem[6][BYTE-1:0] = 8'b00000001;
mem[5][BYTE-1:0] = 8'b00000000;
mem[4][BYTE-1:0] = 8'b00000000;
mem[11][BYTE-1:0] = 8'b11100000;
mem[10][BYTE-1:0] = 8'b01000010;
mem[9][BYTE-1:0] = 8'b00000000;
mem[8][BYTE-1:0] = 8'b00000001;
mem[15][BYTE-1:0] = 8'b11101000;
mem[14][BYTE-1:0] = 8'b00000001;
mem[13][BYTE-1:0] = 8'b00000000;
mem[12][BYTE-1:0] = 8'b00000100;
mem[19][BYTE-1:0] = 8'b11100000;
mem[18][BYTE-1:0] = 8'b10000100;
mem[17][BYTE-1:0] = 8'b00000000;
mem[16][BYTE-1:0] = 8'b00000010;
mem[23][BYTE-1:0] = 8'b11100000;
mem[22][BYTE-1:0] = 8'b10100101;
mem[21][BYTE-1:0] = 8'b00000000;
mem[20][BYTE-1:0] = 8'b00000110;
mem[27][BYTE-1:0] = 8'b11001100;
mem[26][BYTE-1:0] = 8'b10100100;
mem[25][BYTE-1:0] = 8'b00000000;
mem[24][BYTE-1:0] = 8'b00000111;
mem[31][BYTE-1:0] = 8'b11100000;
mem[30][BYTE-1:0] = 8'b00100011;
mem[29][BYTE-1:0] = 8'b00000000;
mem[28][BYTE-1:0] = 8'b00000000;
mem[35][BYTE-1:0] = 8'b11100000;
mem[34][BYTE-1:0] = 8'b01000001;
mem[33][BYTE-1:0] = 8'b00000000;
mem[32][BYTE-1:0] = 8'b00000000;
mem[39][BYTE-1:0] = 8'b00000000;
mem[38][BYTE-1:0] = 8'b00100011;
mem[37][BYTE-1:0] = 8'b00010000;
mem[36][BYTE-1:0] = 8'b00000000;
mem[43][BYTE-1:0] = 8'b00000000;
mem[42][BYTE-1:0] = 8'b10000000;
mem[41][BYTE-1:0] = 8'b00000000;
mem[40][BYTE-1:0] = 8'b10001100;
mem[47][BYTE-1:0] = 8'b11101000;
mem[46][BYTE-1:0] = 8'b00000010;
mem[45][BYTE-1:0] = 8'b00000000;
mem[44][BYTE-1:0] = 8'b00000000;
mem[51][BYTE-1:0] = 8'b11100000;
mem[50][BYTE-1:0] = 8'b10000100;
mem[49][BYTE-1:0] = 8'b00000000;
mem[48][BYTE-1:0] = 8'b00000001;
mem[55][BYTE-1:0] = 8'b10000000;
mem[54][BYTE-1:0] = 8'b00000000;
mem[53][BYTE-1:0] = 8'b00000000;
mem[52][BYTE-1:0] = 8'b00000110;
mem[59][BYTE-1:0] = 8'b11111111;
mem[58][BYTE-1:0] = 8'b11111111;
mem[57][BYTE-1:0] = 8'b11111111;
mem[56][BYTE-1:0] = 8'b11111111;

	end
endmodule 