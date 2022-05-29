module HW2_mux4to1 (in, sel, out);
    input [3:0] in;
    input [1:0] sel;
    output out;

    wire o0, o1;

    HW2_mux2to1 mux0(.a(in[3]), .b(in[2]), .sel(sel[0]), .c(o0));
    HW2_mux2to1 mux1(.a(in[1]), .b(in[0]), .sel(sel[0]), .c(o1));
    HW2_mux2to1 mux2(.a(o0), .b(o1), .sel(sel[1]), .c(out));

endmodule