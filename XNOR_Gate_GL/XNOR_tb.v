module XNOR_tb;

reg a,b;
wire y;

XNOR_gate UUT(.a(a), .b(b), .y(y));

initial begin

    $dumpfile("xnor.vcd");
    $dumpvars(0, XNOR_tb);

    $monitor("t=%0t | a=%b,b=%b | y=%b", $time, a, b, y);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;

end
endmodule