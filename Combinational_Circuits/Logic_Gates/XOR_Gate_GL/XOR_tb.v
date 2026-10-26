module XOR_tb;

reg a,b;
wire y;

XOR UUT(.a(a), .b(b), .y(y));

initial begin

    $dumpfile("XOR.vcd");
    $dumpvars(0, XOR_tb);

    $monitor("t=%0t | a=%b, b=%b | y=%b", $time,a,b,y);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10; 
    a=1; b=1; #10;

    $finish;

    end
    endmodule