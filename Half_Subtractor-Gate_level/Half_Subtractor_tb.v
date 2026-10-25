module Half_Subtractor_tb;

reg a,b;
wire d,x;

Half_Subtractor UTT(.a(a), .b(b), .d(d), .x(x));

initial begin 

    $dumpfile("halfsubtractor.vcd");
    $dumpvars(0, Half_Subtractor_tb);

    $monitor("t=%0t | a=%b,b=%b | d=%b,x=%b", $time,a,b,d,x);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;

end
endmodule