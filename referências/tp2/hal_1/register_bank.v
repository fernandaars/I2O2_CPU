/*
    ____  ________________  ___    _   ____ __
   / __ \/ ____/ ____/ __ )/   |  / | / / //_/
  / /_/ / __/ / / __/ __  / /| | /  |/ / ,<
 / _, _/ /___/ /_/ / /_/ / ___ |/ /|  / /| |
/_/ |_/_____/\____/_____/_/  |_/_/ |_/_/ |_|

*/

module register_bank (
    input clk,
    input [3:0] addr_a,
    input [3:0] addr_b,
    input [15:0] reg_data,
    input [3:0] write_reg,
    input r_w,
    output [15:0] reg_a,
    output [15:0] reg_b
);

    integer i;
    reg [15:0] registers[15:0];

    assign reg_a = registers[addr_a];
    assign reg_b = registers[addr_b];

    always @(posedge clk) begin
        if (r_w) begin
            registers[write_reg] = reg_data;
        end
    end

endmodule
