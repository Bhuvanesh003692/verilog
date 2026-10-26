module mux_2to1(a,b,s,y);

input a, b, s;
output y;
wire c, d, e;

not(c,s);

and(d, a, c);

and(e, b, s);

or(y, d, e);

endmodule