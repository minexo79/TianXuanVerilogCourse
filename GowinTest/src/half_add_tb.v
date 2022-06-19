`timescale 1ns/1ps

module half_add_tb();
    reg _a, _b;
    wire _sum, _cout;

    half_add _half_add(.a(_a), .b(_b), .sum(_sum), .cout(_cout));

    initial begin
//      begin
        _a = 1'b0; _b = 1'b0;
//      run
        #1 _a = 1'b0; _b = 1'b1;
        #1 _a = 1'b1; _b = 1'b0;
        #1 _a = 1'b1; _b = 1'b1;
//      end
        #1 $finish;
    end

endmodule