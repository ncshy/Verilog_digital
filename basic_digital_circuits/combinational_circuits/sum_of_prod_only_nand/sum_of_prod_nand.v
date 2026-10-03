module sum_of_prod(output E,
                    input A,
                    input B,
                    input C,
                    input D);
    wire w1, w2;

    nand(w1, A, B);
    nand(w2, C, D);
    nand(E, w1, w2);

endmodule
