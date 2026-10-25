module Full_Subtractor(a, b, c, d, bout);

    input a, b, c;
    output d, bout;
    wire p, q, r, s, t;
  
    xor (p, a, b);
    not (s, a);
    and (q, s, b);

    xor (d, p, c);
    not (r, p);
    and (t, r, c);

    or (bout, q, t);

endmodule