module tp1(
input CLOCK_50,
input[3:0] KEY,
input[17:0] SW,

output[8:0] LEDG,
output[6:0] HEX0,
output[6:0] HEX1,
output[6:0] HEX2,
output[6:0] HEX3,
output[6:0] HEX4,
output[6:0] HEX5,
output[6:0] HEX6,
output[6:0] HEX7
);

reg [31:0] clk;
reg [3:0] out [9:0];

assign LEDG[0] = clk[25];
assign LEDG[1] = clk[23];

displayDecoder Display0(.entrada(out[7][3:0]),.saida(HEX0));
displayDecoder Display1(.entrada(out[6][3:0]),.saida(HEX1));
displayDecoder Display2(.entrada(out[5][3:0]),.saida(HEX2));
displayDecoder Display3(.entrada(out[4][3:0]),.saida(HEX3));
displayDecoder Display4(.entrada(out[3][3:0]),.saida(HEX4));
displayDecoder Display5(.entrada(out[2][3:0]),.saida(HEX5));
displayDecoder Display6(.entrada(out[1][3:0]),.saida(HEX6));
displayDecoder Display7(.entrada(out[0][3:0]),.saida(HEX7));

always@(posedge CLOCK_50)
begin
	clk = clk + 1;
end

always@(posedge clk[25])
begin
	
	integer i;
	for(i = 0; i < 8; i = i+1) begin
		if(SW[i] == 0) begin
			out[i] = 4'b0000;
		end
	end
	
	if(SW[0] == 1) begin
		out[0] = 4'b0000;
	end
	if(SW[1] == 1) begin
		out[1] = 4'b0001;
	end
	if(SW[2] == 1) begin
		out[2] = 4'b0010;
	end
	if(SW[3] == 1) begin
		out[3] = 4'b0011;
	end
	if(SW[4] == 1) begin
		out[4] = 4'b0100;
	end
	if(SW[5] == 1) begin
		out[5] = 4'b0101;
	end
	if(SW[6] == 1) begin
		out[6] = 4'b0110;
	end
	if(SW[7] == 1) begin
		out[7] = 4'b0111;
	end
	
end
endmodule 