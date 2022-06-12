module FA(a, b, cin, g, p, s);
    input a, b, cin;
    output g, p, s;

    // S
    assign s = a ^ b ^ cin;
    // G
    assign g = a & b;
    // P
    assign p = a | b;

endmodule