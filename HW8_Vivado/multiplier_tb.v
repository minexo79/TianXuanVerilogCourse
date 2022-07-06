`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Create Date: 07/06/2022 09:00:07 AM
// Design Name: 
// Module Name: multiplier_tb
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


module multiplier_tb();
    reg [3:0] a;
    reg [3:0] b;
    wire [7:0] out;
    
    initial begin
        a = 0; b = 0;
        #1 a = 3; b = 2;
        #1 a = 5; b = 4;
        #1 a = 8; b = 6;
        #1 a = 11; b = 11;
        #1 a = 15; b = 15;
        #1 $stop;
    end
    
    multiplier_top mu_top(a, b, out);
    
endmodule
