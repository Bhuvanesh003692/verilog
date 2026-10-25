module Full_Subtractor_tb;

    reg a, b, c;
    wire d, bout;

    Full_Subtractor UUT (.a(a), .b(b), .c(c), .d(d), .bout(bout));

    initial begin
        $dumpfile("fullsubtractor.vcd");
        $dumpvars(0, Full_Subtractor_tb);

        $monitor("t=%0t | a=%b,b=%b,c=%b | d=%b,bout=%b", $time, a, b, c, d, bout);

        a=0; b=0; c=0; #10;
        a=0; b=0; c=1; #10;
        a=0; b=1; c=0; #10;
        a=0; b=1; c=1; #10;
        a=1; b=0; c=0; #10;
        a=1; b=0; c=1; #10;
        a=1; b=1; c=0; #10;
        a=1; b=1; c=1; #10;

        $finish;
    end

endmodule