// testbench

module rca4_tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] s;
    wire cout;

    rca4 _rca4(._a(a), ._b(b), ._cin(cin), ._s(s), ._cout(cout));

    initial begin
        a = 4'd0; b = 4'd0; cin = 1'b0;

        #1 a = 4'd1; b = 4'd2; cin = 1'b0;
        #1 a = 4'd2; b = 4'd6; cin = 1'b1;
        #1 a = 4'd3; b = 4'd8; cin = 1'b1;
        #1 a = 4'd8; b = 4'd7; cin = 1'b0;
        #1 a = 4'd8; b = 4'd8; cin = 1'b0;

        #1 $finish;
    end

endmodule