module Full_Adder_tb;

    reg a, b, c;
    wire s, cout;

    Full_Adder UUT (.a(a), .b(b), .c(c), .s(s), .cout(cout));

    initial begin
        $dumpfile("fulladder.vcd");
        $dumpvars(0, Full_Adder_tb);

        $monitor("t=%0t | a=%b,b=%b,c=%b | s=%b,cout=%b", $time, a, b, c, s, cout);

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