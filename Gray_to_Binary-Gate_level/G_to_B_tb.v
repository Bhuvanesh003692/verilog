module G_to_B_tb;

    reg [3:0] g;
    wire [3:0] b;
    integer i;

    G_to_B UUT (.g3(g[3]), .g2(g[2]), .g1(g[1]), .g0(g[0]),
                  .b3(b[3]), .b2(b[2]), .b1(b[1]), .b0(b[0]));

    initial begin
        $dumpfile("gray2bin.vcd");
        $dumpvars(0, G_to_B_tb);

        $monitor("t=%0t | gray=%b | binary=%b", $time, g, b);

        for (i = 0; i < 16; i = i + 1) begin
            g = i;
            #10;
        end

        $finish;
    end

endmodule