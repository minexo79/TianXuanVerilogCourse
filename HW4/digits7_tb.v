module digits7_tb;
    reg [3:0] _bits;
    wire [7:0] _out;
    reg [7:0] i;

    initial begin
        $dumpfile("digits7.vcd");                // vcd filename
        $dumpvars;                               // vcd output
        
        _bits = 4'h0;
        for (i = 0; i < 16; i = i + 1) begin
            #1 _bits = _bits + 1;
        end

        #1 $finish;
    end

    digits7 _digits7(.bits(_bits), .out(_out));

    
endmodule