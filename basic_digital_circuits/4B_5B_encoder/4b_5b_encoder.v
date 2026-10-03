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

module t_4b_5b_encoder;
        reg[3:0] M;
        wire A, B, C, D ,E;
        parameter endtime = 160;
        
        fourb_fiveb_encoder encode(A, B, C , D, E, M[3], M[2], M[1], M[0]);
        initial #endtime $finish;

        initial begin
                M = 4'b0000;
                repeat(14)
                #10 M = M + 4'b0001;
        end   

        initial begin
                $display("M[3:0]\tA  B  C  D  E");
                $monitor("%d\t%b  %b  %b  %b  %b", M, A, B, C, D, E);
        end
endmodule
