// .: Arithmetic Logic Unit tesbench :.

// http://www.syssec.ethz.ch/content/dam/ethz/special-interest/infk/inst-infsec/system-security-group-dam/education/Digitaltechnik_14/14_Verilog_Testbenches.pdf
// Self checking testbench

module alu_tb();
	reg clk;
	reg [3:0] codop;
	reg [15:0] a,b;
	wire neg, zero, overflow;
	wire [15:0] out;

	// Device Under Test - ALU
	alu dut(
		.clk(clk),
		.codop(codop),
		.a(a),
		.b(b)
		)

	always begin
		clk = ~clk
		#5
	end

	initial begin
		a = 16'd0000000010101010 //	170
		b = 16'd0000000011111111 // 255

		codop = 4'd0; // add
		#20
		if(out != 425)
			$display("Codop 0000 failed");

		codop = 4'd1; // sub
		#20
		if(out != 85)
			$display("Codop 0001 failed");

		codop = 4'd2; // slti
		#20
		if(out != 0)
			$display("Codop 0010 failed");

		codop = 4'd3; // and 
		#20
		if(out != 170)
			$display("Codop 0011 failed");

		codop = 4'd4; // or
		#20
		if(out != 255)
			$display("Codop 0100 failed");

		codop = 4'd5; // xor
		#20
		if(out != 85)
			$display("Codop 0101 failed");

		codop = 4'd6; // andi
		#20
		if(out != 170)
			$display("Codop 0110 failed");

		codop = 4'd7; // ori
		#20
		if(out != 255)
			$display("Codop 0111 failed");

		codop = 4'd8; // xori
		#20
		if(out != 85)
			$display("Codop 1000 failed");

		codop = 4'd9; // addi
		#20
		if(out != 425)
			$display("Codop 1001 failed");

		codop = 4'd10; // subi
		#20
		if(out != 85)
			$display("Codop 1010 failed");

	end
endmodule