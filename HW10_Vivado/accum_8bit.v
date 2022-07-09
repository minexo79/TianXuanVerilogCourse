//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2022 10:29:38 PM
// Design Name: 
// Module Name: accum_8bit
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


module accum_8bit(
    input w_en,
    input clk,
    input rst,
    output reg [7:0] dout
    );
    
    always@(negedge clk) begin
        if (!rst)
            dout <= 8'b0;
        else begin
            dout <= (w_en) ? dout + 1'b1 : dout;
        end
    end
    
endmodule
