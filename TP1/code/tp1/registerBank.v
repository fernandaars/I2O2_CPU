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
	 
	 if(fsm == 3) begin
		always @(posedge clk) begin
			assign a = registers[addrARead];
			assign b = registers[addrBRead];
		end
	 end
	//fsm = 4;
	
	 if(fsm == 1) begin
		always @(posedge clk) begin
        if (r_w) begin
            registers[addrCWrite] = data;
        end
		end
	end
	//fsm = 1;
endmodule
