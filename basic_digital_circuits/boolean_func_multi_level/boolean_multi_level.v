module boolean_func_multi_level(output E,
                    input A,
                    input B,
                    input C,
                    input D);
    // A(CD + B) + BC'
    wire w1, w2, w3;
    wire w4, w5;

    not(w1, C);         // C'
    and(w2, C, D);      // CD
    and(w3, w1, B);      // BC'
    or(w4, w2, B);      // CD + B
    and(w5, w4, A);     // A(CD + B)
    or(E, w5, w3);      // A(CD + B) + BC'

endmodule
