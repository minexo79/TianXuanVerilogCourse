`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Create Date: 07/06/2022 09:00:07 AM
// Design Name: 
// Module Name: penc8_tb
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

module penc8_tb();
    reg [7:0] in;
    wire vaild;
    wire [2:0] out;
    
    penc8 _penc(in, out, vaild);
    
    reg [7:0] i;
    
    initial begin
        in = 0;
        
        for(i=1;i<256;i=i+1) 
            #1 in = i;
            
        #1 $stop;
        #1 $finish;
    end
    
endmodule