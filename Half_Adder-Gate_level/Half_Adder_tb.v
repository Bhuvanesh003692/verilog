module Half_Adder_tb;

reg a,b;
wire s,c;

Half_Adder UTT(.a(a), .b(b), .c(c), .s(s));

initial begin 

    $dumpfile("halfadder.vcd");
    $dumpvars(0, Half_Adder_tb);

    $monitor("t=%0t | a=%b,b=%b | s=%b,c=%b", $time,a,b,s,c);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;

end
endmodule