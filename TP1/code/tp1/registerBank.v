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





module registerBank (
    input clk,
	 input fsm,
	 input RWsignal,
    input [3:0] addrARead,
    input [3:0] addrBRead,
    input [3:0] addrCWrite,
	 input  [15:0] data,
    output [15:0] a,
    output [15:0] b
);

    integer i;
    reg [15:0] registers[15:0];
	 
	 assign a = registers[addrARead];
	 assign b = registers[addrBRead];
	 
//	 always @(posedge clk) begin
//		if(fsm == 3) begin
//			assign a = registers[addrARead];
//			assign b = registers[addrBRead];
//		end
//	 end
	//fsm = 4;
	
	always @(posedge clk) begin
		if(fsm == 1) begin
        if (RWsignal) begin
            registers[addrCWrite] = data;
        end
		end
	end
	//fsm = 1;
endmodule
