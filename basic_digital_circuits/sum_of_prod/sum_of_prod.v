module sum_of_prod(output E,
                    input A,
                    input B,
                    input C,
                    input D);
    wire w1, w2;

    and(w1, A, B);
    and(w2, C, D);
    or(E, w1, w2);

endmodule
