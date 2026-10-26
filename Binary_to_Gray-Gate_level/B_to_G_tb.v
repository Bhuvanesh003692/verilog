module bin2gray_tb;

    reg [3:0] b;
    wire [3:0] g;
    integer i;

    bin2gray UUT (.b3(b[3]), .b2(b[2]), .b1(b[1]), .b0(b[0]),
                  .g3(g[3]), .g2(g[2]), .g1(g[1]), .g0(g[0]));

    initial begin
        $dumpfile("bin2gray.vcd");
        $dumpvars(0, bin2gray_tb);

        $monitor("t=%0t | binary=%b | gray=%b", $time, b, g);

        for (i = 0; i < 16; i = i + 1) begin
            b = i;
            #10;
        end

        $finish;
    end

endmodule