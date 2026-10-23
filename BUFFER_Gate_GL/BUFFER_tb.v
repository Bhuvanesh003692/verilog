module Buffer_tb;
reg a;
wire y;

Buffer_gate UTT(.a(a), .y(y));

initial begin
    
    $dumpfile("BUFFER.vcd");
    $dumpvars(0, Buffer_tb);

    $monitor("t=%0t | a=%b |y=%b", $time, a, y);

    a=1; #10;
    a=0; #10;
    a=1; #10;
    a=0; #10;

    $finish;

end
endmodule