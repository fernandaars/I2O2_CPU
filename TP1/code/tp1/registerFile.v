// .: Register File Module :.
//
// INPUTS:
// - clk: clock;
// - fsm: finite state machine status -> [1] WriteBack,[2] Fetch, [3]Decode, [4]Execute;
// - RWsignal: Read or Write signal;
// - addrARead: 4 bits register address;
// - addrBRead: 4 bits register address or 4 bits immediate value;
// - addrARead: 4 bits register address;
// - data: 16 bits value.

// OUTPUTS:
// - a: 16 bits register value;
// - b: 16 bits register value.

module registerFile (
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
