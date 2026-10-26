module decoder2to4(a1, a0, y0, y1, y2, y3);

    input a1, a0;
    output y0, y1, y2, y3;
    wire a1_n, a0_n;

    not (a1_n, a1);
    not (a0_n, a0);

    and (y0, a1_n, a0_n);
    and (y1, a1_n, a0);
    and (y2, a1,   a0_n);
    and (y3, a1,   a0);

endmodule
