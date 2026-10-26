module decoder2to4_tb;

    reg a1, a0;
    wire y0, y1, y2, y3;

    decoder2to4 UUT (.a1(a1), .a0(a0), .y0(y0), .y1(y1), .y2(y2), .y3(y3));

    initial begin
        $dumpfile("decoder2to4.vcd");
        $dumpvars(0, decoder2to4_tb);

        $monitor("t=%0t | a1=%b,a0=%b | y3=%b,y2=%b,y1=%b,y0=%b", $time, a1, a0, y3, y2, y1, y0);

        a1=0; a0=0; #10;
        a1=0; a0=1; #10;
        a1=1; a0=0; #10;
        a1=1; a0=1; #10;

        $finish;
    end

endmodule