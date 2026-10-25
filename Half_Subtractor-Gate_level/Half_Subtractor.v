module Half_Subtractor(a,b,d,x);

input a,b;
output d,x;

xor(d,a,b);

not(p,a);

and(x,p,b);

endmodule