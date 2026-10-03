/* Implement 4b/5b encoder using DataFlow modeling */
module fourb_fiveb_encoder(output A,
                        output B,
                        output C,
                        output D,
                        output E,
                        input w,
                        input x,
                        input y,
                        input z);
        
        assign A = w || (!x && y) || (!w && !x && !z);
        assign B = (!w && !y) || x;
        assign C = y || (!w && !x && !z);
        assign D = (!y && !z) || (!w && x) || (w && !x) || (w && !y);
        assign E = z;
        
endmodule

/* Testbench for functional verification of fourb_fiveb_encoder */
module t_4b_5b_encoder;
        reg[3:0] M;
        wire A, B, C, D ,E;
        parameter endtime = 160;
        
	// Initialize module under test
        fourb_fiveb_encoder encode(A, B, C , D, E, M[3], M[2], M[1], M[0]);
        initial #endtime $finish;

	// Begin tests with input incrementing every 10 time units 
        initial begin
                M = 4'b0000;
                repeat(14)
                #10 M = M + 4'b0001;
        end   
	
	// Print input and output at each time period
        initial begin
                $display("M[3:0]\tA  B  C  D  E");
                $monitor("%d\t%b  %b  %b  %b  %b", M, A, B, C, D, E);
        end
endmodule
