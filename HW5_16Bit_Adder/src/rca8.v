module rca8(
    input [7:0] a, b, 
    input cin, 
    output [7:0] s,
    output cout);

    wire [6:0] c;
    
    fa fa0(.a(a[0]), .b(b[0]), .cin(cin),  .s(s[0]), .cout(c[0]));
    fa fa1(.a(a[1]), .b(b[1]), .cin(c[0]), .s(s[1]), .cout(c[1]));
    fa fa2(.a(a[2]), .b(b[2]), .cin(c[1]), .s(s[2]), .cout(c[2]));
    fa fa3(.a(a[3]), .b(b[3]), .cin(c[2]), .s(s[3]), .cout(c[3]));
    fa fa4(.a(a[4]), .b(b[4]), .cin(c[3]), .s(s[4]), .cout(c[4]));
    fa fa5(.a(a[5]), .b(b[5]), .cin(c[4]), .s(s[5]), .cout(c[5]));
    fa fa6(.a(a[6]), .b(b[6]), .cin(c[5]), .s(s[6]), .cout(c[6]));
    fa fa7(.a(a[7]), .b(b[7]), .cin(c[6]), .s(s[7]), .cout(cout));

endmodule