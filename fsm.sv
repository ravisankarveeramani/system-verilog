module simple_fsm (
    input  wire clk,
    input  wire resetn,       // Active-low synchronous reset
    input  wire input_signal,
    output reg  busy          // Moore output
);

    // State encoding using localparam
    localparam [1:0] IDLE    = 2'b00,
                     STATE_1 = 2'b01,
                     STATE_2 = 2'b10;

    reg [1:0] cur_state, next_state;

    // 1. Sequential State Register
    always @(posedge clk) begin
        if (!resetn)
            cur_state <= IDLE;
        else
            cur_state <= next_state;
    end

    // 2. Combinational Next-State Logic
    always @(*) begin
        next_state = cur_state; // Default assignment prevents latches
        case (cur_state)
            IDLE: begin
                if (input_signal)
                    next_state = STATE_1;
            end
            STATE_1: begin
                if (!input_signal)
                    next_state = STATE_2;
            end
            STATE_2: begin
                next_state = IDLE;
            end
            default: begin
                next_state = IDLE;
            end
        endcase
    end

    // 3. Combinational Output Logic
    always @(*) begin
        case (cur_state)
            IDLE:    busy = 1'b0;
            STATE_1: busy = 1'b1;
            STATE_2: busy = 1'b1;
            default: busy = 1'b0;
        endcase
    end

endmodule

