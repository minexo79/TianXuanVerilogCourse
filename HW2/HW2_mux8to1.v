module HW2_mux8to1 (in, sel, out);
    input [7:0] in;
    input [2:0] sel;
    output out;

    wire o0, o1;

    HW2_mux4to1 mux0(.in(in[7:4]), .sel(sel[1:0]), .out(o0));
    HW2_mux4to1 mux1(.in(in[3:0]), .sel(sel[1:0]), .out(o1));
    HW2_mux2to1 mux2(.a(o0), .b(o1), .sel(sel[2]), .c(out));

endmodule