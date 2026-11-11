module relational_test(); logic [7:0] a=25,b=15; bit lth,gth, lte,gte

initial begin

gth = a>b; lte = a<=b;

lth = a<b; gte = a>=b; $display("less=%0d, greater=%0d, lesseq=%d, greatereq=%d", lth,gth,lte,gte);

end

endmodule
