module encoder4to2_tb;

    reg d0, d1, d2, d3;
    wire y1, y0;

    encoder4to2 UUT (.d0(d0), .d1(d1), .d2(d2), .d3(d3), .y1(y1), .y0(y0));

    initial begin
        $dumpfile("encoder4to2.vcd");
        $dumpvars(0, encoder4to2_tb);

        $monitor("t=%0t | d3=%b,d2=%b,d1=%b,d0=%b | y1=%b,y0=%b", $time, d3, d2, d1, d0, y1, y0);

        d3=0; d2=0; d1=0; d0=1; #10;
        d3=0; d2=0; d1=1; d0=0; #10;
        d3=0; d2=1; d1=0; d0=0; #10;
        d3=1; d2=0; d1=0; d0=0; #10;

        $finish;
    end

endmodule