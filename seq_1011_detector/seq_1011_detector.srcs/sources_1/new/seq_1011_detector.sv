`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2025 12:12:53 AM
// Design Name: 
// Module Name: seq_1011_detector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seq_1011_detector(
    input logic clk, reset,
    input logic in,
    output logic detected
    );
    
    typedef enum logic [1:0] {S0, S1, S2, S3} state_t;
    state_t state, next_state;
    
    //State Register
    always_ff @(posedge clk, posedge reset) begin
        if (reset) state <= S0;
        else state <= next_state;
        
    end 
    
    //Next State Logic
    always_comb begin
        case (state)
            S0 : next_state = (in == 1) ? S1 : S0;
            S1 : next_state = (in == 0) ? S2 : S1;
            S2 : next_state = (in == 1) ? S3 : S0;
            S3 : next_state = (in == 1) ? S1 : S2;
        endcase 
    end 
    
    //Meanly Output Logic
    always_comb begin
        detected = 0;
        if (state == S3 && in == 1) detected = 1;
    end
    
       
endmodule
