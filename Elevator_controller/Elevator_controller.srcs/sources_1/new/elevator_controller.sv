`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/27/2025 10:02:43 AM
// Design Name: 
// Module Name: elevator_controller
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


module elevator_controller(
    input logic clk, reset,
    input logic req0, req1, req2,
    output logic direction, door_open,
    output logic [1:0] current_floor
    );
    
    typedef enum logic [2:0] {IDLE, MOVING_UP, MOVING_DOWN, DOOR_OPEN, DOOR_CLOSE} state_t;
    state_t state, next_state;
    
    logic [1:0] floor;
    
    //State Registor
    always_ff @(posedge clk, posedge reset) begin
        if (reset) begin
            current_floor <= 0;
            state <= IDLE;
        end
        else begin
            state <= next_state;
            current_floor <= floor;
        end
    end
    
    //State Transition
    always_comb begin
        next_state = state;
        floor = current_floor;
        door_open = 0;
        direction = 1; //Default Up
        case (state)
            IDLE: begin
                if ((req1 && floor == 2'd0) || (req2 && floor < 2'd2)) next_state = MOVING_UP;
                else if ((req0 && floor > 2'd0) || (req1 && floor == 2'd2)) next_state = MOVING_DOWN;
                end
            MOVING_UP: begin
                direction = 1;
                if ((req1 && floor == 2'd1) || (req2 && floor == 2'd2)) next_state = DOOR_OPEN;
                else if ((req1 && floor == 2'd0) || (req2 && floor < 2'd2)) floor = floor + 1;
            end
            MOVING_DOWN: begin
                direction = 0;
                if ((req1 && floor == 2'd2) || (req0 && floor > 2'd0)) floor = floor - 1;
                else if ((req1 && floor == 2'd1) || (req0 && floor == 2'd0)) next_state = DOOR_OPEN;
            end
            DOOR_OPEN: begin
                door_open = 1;
                next_state = DOOR_CLOSE;
            end
            DOOR_CLOSE: begin
                door_open = 0;
                next_state = IDLE;
            end
        endcase           
    end
endmodule
