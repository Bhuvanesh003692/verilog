`timescale 1ns/1ns

module OR_G_tb;
reg a,b;
wire y;

OR_G UUT(.a(a), .b(b), .y(y));

initial begin

$dumpfile("OR_G.vcd");
$dumpvars(0, OR_G_tb);

$monitor("t=%0t | a=%b,b=%b | y=%b", $time,a,b,y);

a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;

$finish;

end
endmodule