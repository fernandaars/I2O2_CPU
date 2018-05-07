module aula3(
input CLOCK_50,
input[3:0] KEY,
input[17:0] SW,
output[8:0] LEDG,
output[6:0] HEX0
);


reg [31:0] clk;
reg [2:0] out [1:0];

assign LEDG[0] = clk[25];
assign LEDG[1] = clk[23];

displayDecoder Display1(.entrada(out[0][2:0]),.saida(HEX0));

always@(posedge CLOCK_50)
begin
	clk = clk + 1;
end

always@(posedge clk[25])
begin
	if (KEY[0] == 0)
	begin
		out[0] = 3'b001;
		if(SW[0] == 1)
		begin
			out[0] = 3'b010;
		end
	end
	else
	begin
		out[0] = 3'b111;
	end
	
end

endmodule 