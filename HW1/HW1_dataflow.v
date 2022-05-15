module HW1_dataflow(a, b, c, d, s);
    input a, b, c, d;
    output s;

    wire s0, s1;

    assign s0 = a ^ b;
    assign s1 = (!b) | c | d;
    assign s = s0 & s1;

endmodule