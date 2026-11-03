module packed2d (output logic [1:0][7:0] a);

int i,j;

initial begin

a = 16'habcd;

$display("a_h=%0h, size of array =%d",a,$bitsa);

$display("first row =%0h, second row =%0h", a[1],a[0]);

for(i=1;i>=0;i--) begin

for(j=7;j>=0;j--) begin

$display("a[%d] [%d] =%b",1,j,a[1][j]);

end

end

end

endmodule
