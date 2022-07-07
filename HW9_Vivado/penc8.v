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
    output [2:0] out,
    output vaild
    );
    
    reg _vaild;
    reg [2:0] _out;
    
    always@(*) begin
        casez (in)
            8'b1???????: begin
                _out = 7; _vaild = 1;
            end
            8'b01??????: begin
                _out = 6; _vaild = 1;  
            end
            8'b001?????: begin
                _out = 5; _vaild = 1;
            end
            8'b0001????: begin
                _out = 4; _vaild = 1;
            end
            8'b00001???: begin
                _out = 3; _vaild = 1;
            end
            8'b000001??: begin
                _out = 2; _vaild = 1;
            end
            8'b0000001?: begin
                _out = 1; _vaild = 1;
            end
            8'b00000001: begin
                _out = 0; _vaild = 1;
            end
            default: begin
                _out = 0; _vaild = 0;
            end
        endcase
    end
    
    assign out = _out;
    assign vaild = _vaild;
    
endmodule
