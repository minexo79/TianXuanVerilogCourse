module rca4(_a, _b, _cin, _s, _cout);
    input [3:0] _a, _b;
    input _cin;
    output [3:0] _s;
    output _cout;

    wire c0, c1, c2;

    full_adder _fa0(.a(_a[0]), .b(_b[0]), .cin(_cin), .s(_s[0]), .cout(c0));
    full_adder _fa1(.a(_a[1]), .b(_b[1]), .cin(c0), .s(_s[1]), .cout(c1));
    full_adder _fa2(.a(_a[2]), .b(_b[2]), .cin(c1), .s(_s[2]), .cout(c2));
    full_adder _fa3(.a(_a[3]), .b(_b[3]), .cin(c2), .s(_s[3]), .cout(_cout));

endmodule