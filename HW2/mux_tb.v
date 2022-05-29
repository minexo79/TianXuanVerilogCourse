module mux_tb;
    reg [7:0] _in;
    reg [2:0] _sel;
    wire _out;

    initial begin
        $dumpfile("mux_tb.vcd");
        $dumpvars;
        _in = 8'b00000000;  _sel = 3'b000;
        #1 _in = 8'b10000000;  _sel = 3'b000;
        #1 _in = 8'b01000000;  _sel = 3'b001;
        #1 _in = 8'b00100000;  _sel = 3'b010;
        #1 _in = 8'b00010000;  _sel = 3'b011;
        #1 _in = 8'b00001000;  _sel = 3'b100;
        #1 _in = 8'b00000100;  _sel = 3'b101;
        #1 _in = 8'b00000010;  _sel = 3'b110;
        #1 _in = 8'b00000001;  _sel = 3'b111;
        #1 $finish;
    end

    HW2_mux8to1 mux(.in(_in), .sel(_sel), .out(_out));

endmodule