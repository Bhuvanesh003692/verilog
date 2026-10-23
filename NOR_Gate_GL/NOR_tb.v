module NOR_tb;
reg a,b;
wire y;

NOR_gate UUT(.a(a), .b(b), .y(y));

initial begin

    $dumpfile("NOR.vcd");
    $dumpvars(0, NOR_tb);

    $monitor("t=%0t | a=%b, b=%b | y=%b", $time,a,b,y);

    a=0; b=0; #5;
    a=0; b=1; #5;
    a=1; b=0; #5;
    a=1; b=1; #5;

    $finish;

end
endmodule