/*
    __  _____    __        ___
   / / / /   |  / /       <  /
  / /_/ / /| | / /  ______/ /
 / __  / ___ |/ /__/_____/ /
/_/ /_/_/  |_/_____/    /_/

 [ Register Dump mode (KEY0) ]
    Dumps $(sw11_8) in left hex display.
    Dumps $(sw7_4) in right hex display.

 [ Instruction mode (KEY3)   ]
    Executes an instruction.
    Formats:
    (1) reg, reg, reg ($s4, $s3, $s2)
    (2) reg, imm, reg ($s4, imm, $s2)
    Signals:
    - $s2       = sw3_0
    - $s3/imm   = sw7_4
    - $s4       = sw11_8
    - opcode    = sw15_12
    - hex{6,7}  = view(sw11_8)
    - hex{4,5}  = view(sw7_4)
    - hex{0..3} = view(out)
*/

module hal_1 (
    input  clk,
    input  key0,
    input  key3,
    input  [3:0] sw3_0,
    input  [3:0] sw7_4,    // reg p/ hex5_4
    input  [3:0] sw11_8,    // reg p/ hex7_6
    input  [3:0] sw15_12,
    output [6:0] hex7,
    output [6:0] hex6,
    output [6:0] hex5,
    output [6:0] hex4,
    output [6:0] hex3,
    output [6:0] hex2,
    output [6:0] hex1,
    output [6:0] hex0
);

    wire key_0;
    wire key_3;

    wire clk_reg_bank = ~key_0 || ~key_3;
    wire [3:0] addr_a = key0_3 ? sw3_0 : sw11_8;


    wire [15:0] out;
    wire [15:0] data_a;
    wire [15:0] oper_b;
    wire [15:0] data_b = (
        sw15_12[3] ||
        sw15_12[1] && (~sw15_12[0] || sw15_12[2])
    ) ? {12'd0, sw7_4[3:0]} : oper_b;

    wire ground = 1'd0;

    wire [7:0] hex7_6 = data_a [7:0];
    wire [7:0] hex5_4 = oper_b [7:0];
    wire [15:0] hex3_0 = out;

    reg key0_3;

    always @(negedge key0 or negedge key3) begin
        if (~key0)
            key0_3 = 0;
        else if (~key3)
            key0_3 = 1;
    end

    register_bank r_bank (
        .clk(clk_reg_bank),
        .addr_a(addr_a),
        .addr_b(sw7_4),
        .reg_data(out),
        .write_reg(sw11_8),
        .r_w(~key_3),
        .reg_a(data_a),
        .reg_b(oper_b)
    );

    alu alu_0 (
        .codop(sw15_12),
        .data_a(data_a),
        .data_b(data_b),
        .out(out),
        .neg(ground),
        .zero(ground),
        .overflow(ground)
    );

    bcd_7seg hex_7 (
        .hex_value(hex7_6[7:4]),
        .disp_value(hex7)
    );

    bcd_7seg hex_6 (
        .hex_value(hex7_6[3:0]),
        .disp_value(hex6)
    );

    bcd_7seg hex_5 (
        .hex_value(hex5_4[7:4]),
        .disp_value(hex5)
    );

    bcd_7seg hex_4 (
        .hex_value(hex5_4[3:0]),
        .disp_value(hex4)
    );

    bcd_7seg hex_3 (
        .hex_value(hex3_0[15:12]),
        .disp_value(hex3)
    );

    bcd_7seg hex_2 (
        .hex_value(hex3_0[11:8]),
        .disp_value(hex2)
    );

    bcd_7seg hex_1 (
        .hex_value(hex3_0[7:4]),
        .disp_value(hex1)
    );

    bcd_7seg hex_0 (
        .hex_value(hex3_0[3:0]),
        .disp_value(hex0)
    );

    debouncer dbk0 (
        .clk(clk),
        .PB(~key0),
        .PB_state(key_0)
    );

    debouncer dbk3 (
        .clk(clk),
        .PB(~key3),
        .PB_state(key_3)
    );

endmodule
