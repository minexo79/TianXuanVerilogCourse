module fa(a, b, cin, s, cout);
    input a, b, cin;
    output s, cout;

    // cout
    assign cout = (a & b) | (b & cin) | (a & cin);
    
    // s
    assign s = a ^ b ^ cin;

endmodule