module mux_2( //2 entradas
	input clt,
	input [15:0]sig_0,
	input [15:0]sig_1,
	output [15:0]out
);
	assign out = (clt == 2'd1) ? sig_1 : sig_0;
endmodule

module mux_3( //3 entradas
	input [1:0]clt,
	input [15:0]sig_0,
	input [15:0]sig_1,
	input [15:0]sig_2,
	output [15:0]out
);
	assign out = (clt == 2'd2) ? sig_2 :
					(clt == 2'd1) ? sig_1 :
					sig_0;
endmodule
