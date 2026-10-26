module mux_2to1_tb;

reg a, b, s;
wire y;

mux_2to1 UUT (.a(a), .b(b), .s(s), .y(y));

initial begin
    
    $dumpfile("2-1_mux.vcd");
    $dumpvars(0, mux_2to1_tb);

    $monitor("t=%0t | a=%b,b=%b,s=%b | y=%b", $time, a, b, s, y);

    a=0; b=0; s=0; #10;
    a=0; b=1; s=0; #10;
    a=1; b=0; s=1; #10;
    a=1; b=1; s=1; #10;

    $finish;

end
endmodule