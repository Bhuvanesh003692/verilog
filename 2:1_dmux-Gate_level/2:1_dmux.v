module demux1to2(d, s, y0, y1);

    input d, s;
    output y0, y1;
    wire s_n;

    not (s_n, s);

    and (y0, d, s_n);
    
    and (y1, d, s);

endmodule