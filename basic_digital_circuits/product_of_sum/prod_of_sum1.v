module prod_of_sum1(output out_1,
        input A,
        input B,
        input C,
        input D);
	
        wire w1 ,wnb, wnc, w3;
        // Implement (A+B').C'.(C+D)
        assign wnb = !B;
        assign w1 = A || wnb;
        assign wnc = !C;
        assign w3 = C || D;
        assign out_1 = w1 && wnc && w3;
endmodule

/* Testbench to test prod_of_sum1
*  Varies input from 0000 to 0101
*  in 10 time unit intervals
*/
module t_pos1;
    wire out_1;
    reg A, B, C, D;

    prod_of_sum1 f1(out_1, A, B, C, D); 
    initial
        begin
            A=1'b0; B=1'b0; C=1'b0; D=1'b0;
            #10 A=1'b0; B=1'b0; C=1'b0; D=1'b1;
            #10 A=1'b0; B=1'b0; C=1'b1; D=1'b0;
            #10 A=1'b0; B=1'b0; C=1'b1; D=1'b1;
            #10 A=1'b0; B=1'b1; C=1'b0; D=1'b0;
            #10 A=1'b0; B=1'b1; C=1'b0; D=1'b1; 
            #10 $finish;
        end 
endmodule
