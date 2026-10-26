module demux1to2_tb;

    reg d, s;
    wire y0, y1;

    demux1to2 UUT (.d(d), .s(s), .y0(y0), .y1(y1));

    initial begin
        $dumpfile("demux1to2.vcd");
        $dumpvars(0, demux1to2_tb);

        $monitor("t=%0t | d=%b,s=%b | y0=%b,y1=%b", $time, d, s, y0, y1);

        d=0; s=0; #10;
        d=0; s=1; #10;
        d=1; s=0; #10;
        d=1; s=1; #10;

        $finish;
    end

endmodule