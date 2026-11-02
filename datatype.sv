module datatype (output bit a, logic b, byte c, bit [15:0] d, int e, shortint f, longint g);

assign a = 1'b1;

assign b = 1'bx;

assign c = 8'd117;

assign d = 16'h6B95;

assign e = 32h2FA35687;

assign F= 16'h2ef3;

assign g = 64'h7f4c93b2a1e5d8f0;

initial begin

$monitor("a=%0d,b=%0d,c=%0d,d=%0d,e=%0d,f=%0d,g=%0d",a,b,c,d,e,f,g);

$display("s_a=%0d,s_b=%0d,s_c=%0d,s_d=%0d,s_e=%0d,s_f=%0d,s_g=%0d",$bits(a),$bits(b),$bits(c),$bits(d),$bits(e),$bits(f

),$ bits(g));

end

endmodule
