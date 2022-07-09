`timescale 1ns / 1ps

module accum_8bit_tb();
    reg w_en;
    reg clk;
    reg rst;
    wire [7:0] dout;
    
    accum_8bit accum (w_en, clk, rst, dout);
    
    initial begin
        // initial
        clk     = 0; 
        w_en    = 0; 
        rst     = 0;
        
        #2      rst = 1;
        #2      w_en = 1;
        #2500   $stop;
    end
    
    always #1   clk = ~clk;
    always #20  w_en = ~w_en;
    
endmodule