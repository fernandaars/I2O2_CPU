module alu (
	input [3:0] codop,
	input [15:0] data_a, // $s2
	input [15:0] data_b, // $s3
	output reg [15:0] out,
	output neg,
	output zero,
	output overflow
);

	wire [15:0] add_ab = data_a + data_b;
	wire [15:0] sub_ab = data_a - data_b;
	wire [15:0] sub_ba = data_b - data_a;
	
	
	assign neg = out[15];
	assign zero = (out == 0 || codop == 4'd12 && data_b == 0) ? 1'd1 : 1'd0;
	assign overflow = (((codop == 4'd0 || codop == 4'd9) && (~data_a[15] && ~data_b[15] && add_ab[15])) ||
							(codop == 4'd1 && ((~data_b[15] && data_a[15] && sub_ba[15]) || (data_b[15] && ~data_a[15] && ~sub_ba[15]))) || 
							(codop == 4'd10 && ((~data_a[15] && data_b[15] && sub_ab[15]) || (data_a[15] && ~data_b[15] && ~sub_ab[15])))) ? 1'd1 : 1'd0;

	always @(codop or data_a or data_b) begin
		case (codop)
			4'd0: out = data_b + data_a; // add
			4'd1: out = data_b - data_a; // sub
			4'd2: out = ((data_b - data_a) & 16'h8000) ? 16'd1 : 16'd0; // slti (and com o msb)
			4'd3: out = data_b & data_a; // and
			4'd4: out = data_b | data_a; // or
			4'd5: out = data_b ^ data_a; // xor
			4'd6: out = data_a & data_b; // andi
			4'd7: out = data_a | data_b; // ori
			4'd8: out = data_a ^ data_b; // xori
			4'd9: out = data_a + data_b; // addi
			4'd10: out = data_a - data_b; // subi
			4'd12: out = (data_b == 0) ? data_a : 16'hffff; // bez
            default: out = 16'd0;
		endcase
	end

endmodule
