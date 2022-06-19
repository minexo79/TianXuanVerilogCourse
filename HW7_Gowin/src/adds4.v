module adds4(a, b, m, s, cout, v);
    /*
     *   A:     Input Number A
     *   B:     Input Number B
     *   M:     Add Or Subtract
     *   S:     Sum
     *   Cout:  Carry Bit
     *   V:     Overflow
     */

    input [3:0] a, b;
    input m;
    output [3:0] s;
    output cout, v;

    wire [3:0] nb;
    wire c0, c1, c2;

    // Subtract: Take 2's Complement
    // { 4 {M} } = { M, M, M, M }
    assign nb = b ^ { 4 {m} };

    full_adder fa0 (.a(a[0]), .b(nb[0]), .cin(m), .s(s[0]), .cout(c0));
    full_adder fa1 (.a(a[1]), .b(nb[1]), .cin(c0), .s(s[1]), .cout(c1));
    full_adder fa2 (.a(a[2]), .b(nb[2]), .cin(c1), .s(s[2]), .cout(c2));
    full_adder fa3 (.a(a[3]), .b(nb[3]), .cin(c2), .s(s[3]), .cout(cout));

    // Detect Overflow
    assign v = c2 ^ cout;

endmodule