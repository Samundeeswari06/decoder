// Code your testbench here
// or browse Examples
module tb_decoder_2to4;
    reg [1:0] A;
    wire [3:0] Y;

    decoder_2to4 uut (
        .A(A),
        .Y(Y)
    );

    initial begin
        $monitor("Time = %0d, A = %b -> Y = %b", $time, A, Y);

        A = 2'b00; #10;
        A = 2'b01; #10;
        A = 2'b10; #10;
        A = 2'b11; #10;

        $finish;
    end
endmodule
