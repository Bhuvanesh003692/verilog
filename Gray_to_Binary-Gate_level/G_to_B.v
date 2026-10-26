module G_to_B(g3, g2, g1, g0, b3, b2, b1, b0);

    input g3, g2, g1, g0;
    output b3, b2, b1, b0;

    buf (b3, g3);
    xor (b2, b3, g2);
    xor (b1, b2, g1);
    xor (b0, b1, g0);

endmodule