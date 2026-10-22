module NAND_G_tb;
 reg a,b;
 wire y;

 NAND_G UUT(.a(a), .b(b), .y(y));

 initial begin

 $dumpfile("NAND.vcd");
 $dumpvars(0, NAND_G_tb);

 $monitor("t=%0t| a=%b, b=%b | y=%b", $time,a,b,y);

 a=0; b=0; #10;
 a=0; b=1; #10;
 a=1; b=0; #10;
 a=1; b=1; #10;

 $finish;
 
 end
 endmodule