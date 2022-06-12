module RCA4(A, B, Cin, S, Cout);

    input [3:0] A;
    input [3:0] B;
    input Cin;
    output [3:0] S;
    output Cout;

    wire c0, c1, c2;

    FA fa0(.a(A[0]), .b(B[0]), .cin(Cin), .s(S[0]), .cout(c0));
    FA fa1(.a(A[1]), .b(B[1]), .cin(c0), .s(S[1]), .cout(c1));
    FA fa2(.a(A[2]), .b(B[2]), .cin(c1), .s(S[2]), .cout(c2));
    FA fa3(.a(A[3]), .b(B[3]), .cin(c2), .s(S[3]), .cout(Cout));

endmodule