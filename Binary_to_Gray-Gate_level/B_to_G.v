module bin2gray(b3, b2, b1, b0, g3, g2, g1, g0);

    input b3, b2, b1, b0;
    output g3, g2, g1, g0;

    buf (g3, b3);
    xor (g2, b3, b2);
    xor (g1, b2, b1);
    xor (g0, b1, b0);

endmodule