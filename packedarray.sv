module packarray (output reg[15:0] a);

initial begin

a = 16'ha35c;

$display("a=%b,a_h=%h",a,a);

$display("a[0]=%b,a[7]=%b,a[8]=%b,a[15]=%b", a[0],a[7],a[8],a[15]);

$display("size_a=%0d",$bits(a));

a[4]<=1'b0;#3

$display("a=%b,a-h=%h",a,a);

end

endmodule
