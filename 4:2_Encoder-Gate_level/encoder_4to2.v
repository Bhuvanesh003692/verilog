module encoder4to2(d0, d1, d2, d3, y1, y0);

    input d0, d1, d2, d3;
    output y1, y0;

    or (y1, d2, d3);
    or (y0, d1, d3);

endmodule