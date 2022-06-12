module CLA4_tb;
    reg [3:0] _a;
    reg [3:0] _b;
    wire [3:0] _s;
    reg _cin;
    wire _cout;

    initial begin
        $dumpfile("CLA4_tb.vcd");                // vcd filename
        $dumpvars;                               // vcd output

        _a = 4'd0; _b = 4'd0; _cin = 1'b0;
        #1 _a = 4'd1; _b = 4'd2; _cin = 1'b0;
        #1 _a = 4'd3; _b = 4'd2; _cin = 1'b0;
        #1 _a = 4'd6; _b = 4'd5; _cin = 1'b0;
        #1 _a = 4'd7; _b = 4'd4; _cin = 1'b1;
        #1 _a = 4'd8; _b = 4'd7; _cin = 1'b1;
        
        #1 $finish;
    end

    CLA4 cla4(.A(_a), .B(_b), .Cin(_cin), .S(_s), .Cout(cout));

endmodule