`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2022 01:06:19 PM
// Design Name: 
// Module Name: penc8
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


module penc8(
    input [7:0] in,
    output [2:0] out
    );
    
    reg [2:0] _out;
    
    always@(*) begin
        casez (in)
            8'b1???????:    _out = 7;
            8'b01??????:    _out = 6;   
            8'b001?????:    _out = 5;
            8'b0001????:    _out = 4;
            8'b00001???:    _out = 3;
            8'b000001??:    _out = 2;
            8'b0000001?:    _out = 1;
            8'b00000001:    _out = 0;
            default:        _out = 0;
        endcase
    end
    
    assign out = _out;
    
endmodule
