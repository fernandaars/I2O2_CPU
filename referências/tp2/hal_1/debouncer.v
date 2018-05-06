/*
     ____       __
    / __ \___  / /_  ____  __  ______  ________  _____
   / / / / _ \/ __ \/ __ \/ / / / __ \/ ___/ _ \/ ___/
  / /_/ /  __/ /_/ / /_/ / /_/ / / / / /__/  __/ /
 /_____/\___/_.___/\____/\__,_/_/ /_/\___/\___/_/

First use two flip-flops to synchronize the PB signal.
After that, the counter has to be maxed out to change state.
 
*/

module debouncer (
    input clk,
    input PB,
    output reg PB_state
);

    reg PB_sync_0;

    always @(posedge clk) begin
        PB_sync_0 <= ~PB;	
    end

    reg PB_sync_1;

    always @(posedge clk) begin
        PB_sync_1 <= PB_sync_0;
    end

    reg [17:0] PB_cnt; // 2^18/50MHz = 5.2ms

    wire PB_idle = PB_state == PB_sync_1;
    wire PB_cnt_max =& PB_cnt;

    always @(posedge clk) begin
        if (PB_idle)
             PB_cnt <= 0;
        else begin
             PB_cnt <= PB_cnt + 18'd1;
             if(PB_cnt_max) PB_state <= ~PB_state;
        end
    end

endmodule
