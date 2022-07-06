//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2022 08:58:55 AM
// Design Name: 
// Module Name: multiplier_and
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


module multiplier_and(
    input [3:0] a,
    input b,
    output [3:0] out
    );
    
    assign out[3:0] = a[3:0] & {4{b}};
    
endmodule
