module adds4_tb;
    reg [3:0] a, b;
    reg m;
    wire [3:0] s;
    wire cout, v;

    adds4 _adds4(.a(a), .b(b), .m(m), .s(s), .cout(cout), .v(v)); 

    initial begin
        a = 4'd0; b = 4'd0; m = 1'b0;
        #1 a = 4'd1; b = 4'd2; m = 1'b0;
        #1 a = 4'd3; b = 4'd4; m = 1'b0;
        #1 a = 4'd6; b = 4'd3; m = 1'b0;
        #1 a = 4'd3; b = 4'd1; m = 1'b1;
        #1 a = 4'd6; b = 4'd3; m = 1'b1;
        #1 a = -4'd4; b = 4'd6; m = 1'b1;

        #1 $finish;
    end

endmodule