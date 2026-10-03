module sum_of_prod_complement_inp(output E,
                    input w,
                    input x,
                    input z);
    wire w1, w2, w3;
    wire w4, w5;

    not(w1, w);		// w'
    not(w2, x);		// x'
    not(w3, z);		// z'
    and(w4, w1, w2);	// w'x'
    and(w5, w2, w3);	// x'z'
    or(E, w4, w5);	// w'x' + x'z'

endmodule
