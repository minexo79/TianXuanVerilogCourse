module HW2_mux2to1 (a, b, sel, c);
    input a, b, sel;
    output c;

    reg c;
    always @(a or b or sel) begin
        if(sel == 1)
            c = b;
        else
            c = a;
    end

endmodule