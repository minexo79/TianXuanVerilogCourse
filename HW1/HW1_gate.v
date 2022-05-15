module HW1_gate(a, b, c, d, s);
    input a, b, c, d;
    output s;

    wire s0, b_, s1;

    xor xor1(s0, a, b);
    not not1(b_, b);
    or or1(s1, b_, c, d);

    and ana1(s, s0, s1);

endmodule