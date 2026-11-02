module datatype3(output reg signed [7:0] a, output reg [7:0] b);

assign a = 8'h80;

assign b = 8'h80;

initial begin

$monitor("b_a=%0b,d_a=%0d,h_a=%0h,size_a=%d,b_b=%0b,d_b=%0d,h_b=%0h,size_b=%d,result=%b",a,a,a,$bits(a),b,b,b,$

bits(b),a<b);

$monitor("result=%0d",a<b);

end

endmodule
