// .: Register File Module :.

module registerFile (
    input clk,
	 input RWsignal,
	 input [3:0] codop,
    input [3:0] addrARead,
    input [3:0] addrBRead,
    input [3:0] addrCWrite,
	 input  [15:0] data,
    output [15:0] a,
    output [15:0] b
);
   reg [15:0] registers[15:0];
	 
	assign a = registers[addrARead];
	assign b = registers[addrBRead];
	
	always @(posedge clk) begin
	  if (RWsignal) begin
			registers[addrCWrite] = data;
	  end
	end
endmodule
