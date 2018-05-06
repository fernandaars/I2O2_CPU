module mult(
	input [15:0]data_a,
	input [15:0]data_b,
	output [31:0] out,
	output zero,
	output neg
);
	wire [31:0]oper_a = (data_a[15]) ? {{16{1'd1}}, data_a} : {16'd0, data_a};
	wire [31:0]oper_b = (data_b[15]) ? {{16{1'd1}}, data_b} : {16'd0, data_b};
	assign out = oper_a * oper_b;

	assign zero = (out == 32'd0);
	assign neg = out[31];

endmodule
