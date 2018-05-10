// .: Arithmetic Logic Unit [ALU] Module :.
//
// INPUTS:
// - clk: clock;
// - fsm: finite state machine status -> [1] WriteBack,[2] Fetch, [3]Decode, [4]Execute;
// - a: 16 bits value of first register;
// - b: 16 bits value of second register;
// - codop: 4 bits instruction opcode.

// OUTPUTS:
// - neg: shows if the ALU has produced a negative result;
// - zero: shows if the ALU has produced a zero;
// - overflow: shows if the ALU has produced a overflow;
// - out: 16 bits value of the ALU execution result.

module alu (
	 input clk,
	 input fsm,
    input [15:0] a,
    input [15:0] b,
	 input [3:0] codop,
	 
    output neg,
    output zero,
    output overflow,
	 output reg [15:0] out
);
    wire [15:0] add_ab;
    assign add_ab = a + b;

    assign neg = out[15];
    assign zero = out == 0 ? 1'd1 : 1'd0;
    assign overflow = (((codop == 4'd0 || codop == 4'd9) && (add_ab < a || add_ab < b)) ||
                      (codop == 4'd1 && a > b) || (codop == 4'd10 && a < b)) ? 1'd1 : 1'd0;					 
							 
	always @(posedge clk) begin
		if(fsm == 4) begin						 
        case (codop)
           4'd0: out = b + a; // add
           4'd1: out = b - a; // sub
           4'd2: out = a > b ? 16'd1 : 16'd0; // slti
           4'd3: out = b & a; // and
           4'd4: out = b | a; // or
           4'd5: out = b ^ a; // xor
           4'd6: out = a & b; // andi
           4'd7: out = a | b; // ori
           4'd8: out = a ^ b; // xori
           4'd9: out = a + b; // addi
           4'd10: out = a - b; // subi
           default: out = 16'd0;
        endcase
		 end
    end
endmodule
