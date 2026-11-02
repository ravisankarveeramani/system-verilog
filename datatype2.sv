module datatype2 (output reg signed [7:0] a,output reg b [7:0]);

assign a =8'hff;

assign b='(default:1'b1];

initial begin

$monitor("decimal_a=%0d,hexa_a=%0h,size_a=%0d,decimal_b=%0d,hex_b=%0h,size_b=%0d",a,a,$bits(a),b,b,$bits(b));

end

endmodule
