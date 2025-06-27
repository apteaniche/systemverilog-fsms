`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/27/2025 01:37:25 PM
// Design Name: 
// Module Name: elevator_control_tb
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


module elevator_control_tb(

    );
    
    logic clk, reset, direction, door_open;
    logic req0, req1, req2;
    logic [1:0] current_floor;
    
    elevator_controller dut (
                           .clk,
                           .reset,
                           .req0,
                           .req1,
                           .req2,
                           .direction,
                           .door_open,
                           .current_floor);
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        reset = 1; #5;
        reset = 0; req0 = 0; req1 = 0; req2 = 0; #10;
        
        req1 = 1; req2 = 1; #40;
        req0 = 1; req1 = 0; #50;
        req2 = 0;
        
        #100;
        $finish;
        
        
    end
                               
endmodule
