module rca16_tb;
    reg [15:0] a, b;
    reg cin;
    wire [15:0] s;
    wire cout;

    rca16 rca(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

    initial begin
        a = 16'd0;          b = 16'd0;      cin = 1'b0;
        #1 a = 16'd1;       b = 16'd2;      cin = 1'b0;
        #1 a = 16'd3;       b = 16'd6;      cin = 1'b0;
        #1 a = 16'd15;      b = 16'd26;     cin = 1'b0;
        #1 a = 16'd60;      b = 16'd77;     cin = 1'b1;
        #1 a = 16'd1660;    b = 16'd778;    cin = 1'b0;
        #1 a = 16'd2356;    b = 16'd15284;  cin = 1'b1;
        #1 a = 16'd32767;   b = 16'd32767;  cin = 1'b0;
        #1 a = 16'd32767;   b = 16'd32768;  cin = 1'b0;
        #1 a = 16'd32767;   b = 16'd32768;  cin = 1'b1;
        #1 $finish;
    end

endmodule