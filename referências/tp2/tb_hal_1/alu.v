module alu(
	input						clk,
	input			[3:0]		codop,
	input			[15:0]	data_a, // $s2
	input			[15:0]	data_b, // $s3
	output reg	[15:0]	out,
	output					neg,
	output					zero,
	output					overflow
);

	wire [15:0] add_ab;

	assign neg = out[15];
	assign zero = (out == 0) ? 1'd1 : 1'd0;
	assign overflow = (((codop == 4'd0 ||codop == 4'd9) && add_ab < data_a && add_ab < data_b) || (codop == 4'd1 && data_a < data_b) || (codop == 4'd10 && data_a > data_b)) ? 1'd1 : 1'd0;
	assign add_ab = data_a + data_b;
	//overflow soma se(soma < a && soma < b)
	//overflow sub a-b se(a < b)
	
	always @(posedge clk) begin
		case (codop)
			4'd0: out = data_b + data_a; // add
			4'd1: out = data_b - data_a; // sub
//			4'd2: out = (data_a > {12'd0, data_b[3:0]}) ? 16'd1 : 16'd0; // slti
			4'd2: out = (data_a > data_b) ? 16'd1 : 16'd0; // slti
			4'd3: out = data_b & data_a; // and
			4'd4: out = data_b | data_a; // or
			4'd5: out = data_b ^ data_a; // xor
//			4'd6: out = data_a & {12'd0, data_b[3:0]}; // andi
			4'd6: out = data_a & data_b; // andi
//			4'd7: out = data_a | {12'd0, data_b[3:0]}; // ori
			4'd7: out = data_a | data_b; // ori
//			4'd8: out = data_a ^ {12'd0, data_b[3:0]}; // xori
			4'd8: out = data_a ^ data_b; // xori
//			4'd9: out = data_a + {12'd0, data_b[3:0]}; // addi
			4'd9: out = data_a + data_b; // addi
//			4'd10: out = data_a - {12'd0, data_b[3:0]}; // subi
			4'd10: out = data_a - data_b; // subi
			default: out = 16'd0; //tratativa
		endcase
//		$display("[ALU] %d %d %d => %d", codop, data_a, data_b, out);
	end

endmodule
