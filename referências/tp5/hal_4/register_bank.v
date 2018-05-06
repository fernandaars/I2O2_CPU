module register_bank(
	input clk,
	input rst,
	input [3:0] addr_a,
	input [3:0] addr_b,
	input [15:0] reg_data,
	input [3:0] write_reg,
	input r_w,
	output [15:0] reg_a,
	output [15:0] reg_b
);
	integer i;
	reg [15:0] registers[15:0];

	assign reg_a = registers[addr_a];
	assign reg_b = registers[addr_b];

	always@(negedge clk or posedge rst) begin
// synopsys translate_off
		$display("reg_0 reg_1 reg_2 reg_3 reg_4 reg_5 reg_6 reg_7 reg_8 reg_9 reg_10 reg_11 reg_12 reg_13 reg_14 reg_15 time");
		$monitor("%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d", registers[0], registers[1], registers[2], registers[3], registers[4], registers[5], registers[6], registers[7], registers[8], registers[9], registers[10], registers[11], registers[12], registers[13], registers[14], registers[15], $time);
// synopsys translate_on
		if(rst) begin //inicializa registradores
			for(i = 0; i < 16; i = i+1)
				registers[i] = 0;
		end else if(r_w)
			registers[write_reg] <= reg_data;
		else
			i = 0; //evitar laches
	end

endmodule
