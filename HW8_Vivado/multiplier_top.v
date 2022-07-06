//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2022 08:58:55 AM
// Design Name: 
// Module Name: multiplier_top
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


module multiplier_top(
    input [3:0] a,
    input [3:0] b,
    output [7:0] out
    );
    
    wire [3:0] and0, and1, and2, and3;
    wire [3:0] cla_sum0, cla_sum1, cla_sum2;
    wire c0, c1, c2;
    
    multiplier_and mu_and0 (a, b[0], and0);
    multiplier_and mu_and1 (a, b[1], and1);
    multiplier_and mu_and2 (a, b[2], and2);
    multiplier_and mu_and3 (a, b[3], and3);
    
    cla4 cla_0 ({1'b0, and0[3:1]},   and1, 0, cla_sum0, c0);
    cla4 cla_1 ({c0, cla_sum0[3:1]}, and2, 0, cla_sum1, c1);
    cla4 cla_2 ({c1, cla_sum1[3:1]}, and3, 0, cla_sum2, c2);
    
    assign out[0] = and0[0];
    assign out[1] = cla_sum0[0];
    assign out[2] = cla_sum1[0];
    assign out[6:3] = cla_sum2;
    assign out[7] = c2;
    
endmodule
