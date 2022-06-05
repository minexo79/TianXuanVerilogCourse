module digits7 (bits, out);
    input [3:0] bits;
    output [0:7] out;

    reg [0:7] out;

    always @(bits) begin
        case(bits)
            4'b0000:
                out = 8'b11111100;   // 0
            4'b0001:
                out = 8'b01100000;   // 1
            4'b0010:
                out = 8'b11001010;   // 2
            4'b0011:
                out = 8'b11110010;   // 3
            4'b0100:
                out = 8'b01100110;   // 4
            4'b0101:
                out = 8'b10110110;   // 5
            4'b0110:
                out = 8'b10111110;   // 6
            4'b0111:
                out = 8'b11100000;   // 7
            4'b1000:
                out = 8'b11111110;   // 8
            4'b1001:
                out = 8'b11110110;   // 9
            4'b1010:
                out = 8'b11101110;   // A
            4'b1011:
                out = 8'b00011110;   // b
            4'b1100:
                out = 8'b10011100;   // C
            4'b1101:
                out = 8'b01111010;   // d
            4'b1110:
                out = 8'b10011110;   // E
            default:
                out = 8'b10001110;   // F
        endcase
    end
endmodule
