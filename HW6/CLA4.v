`include "FA.v"

module CLG(cin, g, p, c, cout);
// Carry Lookahead Generator
    input cin;
    input [3:0] g, p;
    output [2:0] c;
    output cout;

    assign c[0] = g[0] | (p[0] & cin);
    assign c[1] = g[1] | (p[1] & c[0]);
    assign c[2] = g[2] | (p[2] & c[1]);
    assign cout = g[3] | (p[3] & c[2]);

endmodule

module CLA4(A, B, Cin, S, Cout);
// Carry Lookahead Adder
    input [3:0] A, B;
    input Cin;
    output [3:0] S;
    output Cout;

    wire [3:0] G, P;
    wire [2:0] C;

    FA FA0(.a(A[0]), .b(B[0]), .cin(Cin), .g(G[0]), .p(P[0]), .s(S[0]));
    FA FA1(.a(A[1]), .b(B[1]), .cin(C[0]), .g(G[1]), .p(P[1]), .s(S[1]));
    FA FA2(.a(A[2]), .b(B[2]), .cin(C[1]), .g(G[2]), .p(P[2]), .s(S[2]));
    FA FA3(.a(A[3]), .b(B[3]), .cin(C[2]), .g(G[3]), .p(P[3]), .s(S[3]));

    CLG CLG0(.cin(Cin), .g(G), .p(P), .c(C), .cout(Cout));

endmodule