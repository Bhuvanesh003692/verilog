`timescale 1ns/1ps

module And_G_tb;
reg a,b;
wire y;

And_G UTT(.a(a), .b(b), .y(y));

initial begin

$dumpfile("And_G.vcd");
$dumpvars(0, And_G_tb);

$monitor("t=%0t | a=%b,b=%b | y=%b", $time,a,b,y);

a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;

$finish;

end
endmodule