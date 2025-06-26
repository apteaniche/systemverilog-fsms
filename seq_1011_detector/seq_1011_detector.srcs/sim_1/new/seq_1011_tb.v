`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2025 01:40:10 AM
// Design Name: 
// Module Name: seq_1011_tb
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


module seq_1011_tb(

    );
    
    logic clk, reset;
    logic in;
    logic detected;
    
    seq_1011_detector dut (.clk(clk),
                           .reset(reset),
                           .in(in),
                           .detected(detected)
                           );
    
    //clock generation
    always #5 clk = ~clk;
    
    initial begin 
    clk = 0; reset = 1; in = 0; #10;
    reset = 0;
    
    in = 1; #10;
    in = 0; #10;
    in = 1; #10;
    in = 1; #10;
    #20;
    $finish;
    end
    
endmodule
