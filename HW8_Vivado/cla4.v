//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2022 09:16:40 AM
// Design Name: 
// Module Name: cla4
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


module cla4(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
    
    wire [2:0] _cin;
    
    fa fa0(a[0], b[0], cin, sum[0], _cin[0]);
    fa fa1(a[1], b[1], _cin[0], sum[1], _cin[1]);
    fa fa2(a[2], b[2], _cin[1], sum[2], _cin[2]);
    fa fa3(a[3], b[3], _cin[2], sum[3], cout);
    
endmodule
