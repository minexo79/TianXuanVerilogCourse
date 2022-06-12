module FA(a, b, cin, s, cout);
    input a, b, cin;
    output s, cout;

    // S
    assign s = a ^ b ^ cin;
    // Cout
    assign cout = (a & b) | (b & cin) | (a & cin);
    
endmodule