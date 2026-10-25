module Full_Adder(a, b, c, s, cout);

    input a, b, c;
    output s, cout;
    wire p,q,r;

    xor (p, a, b);
    and (q, a, b);

    xor (s, p, c);
    and (r, p, c);

    or (cout, q, r);

endmodule