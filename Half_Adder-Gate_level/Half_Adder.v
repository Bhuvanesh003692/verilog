module Half_Adder(a,b,c,s);

input a,b;
output s,c;

xor(s,a,b);

and(c,a,b);

endmodule