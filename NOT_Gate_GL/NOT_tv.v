module NOT_tb;
reg a;
wire y;

NOT_Gate UUT(.a(a), .y(y));

initial begin

    $dumpfile("NOT.vcd");
    $dumpvars(0, NOT_tb);

    $monitor("t=%0t | a=%b,y=%b", $time,a,y);

    a=0; #10;
    
    a=1; #10;
    
    a=0; #10;
    
    a=1; #10;

end
endmodule