module packed3d (output logic [1:0][1:0][3:0] a);

int i,j,k;

initial begin

a= 16'ha1b2;

$display("a_h=%0h,size =%0d",a,$bits(a));

$display("a[1][1] = %b,a[1][0] = %b,a[0][1] = %b,a[0][0] = %b",a[1][1],a [1][0],a[0][1],a[0][0]); for (i=1;i>=0;i--)begin

for (j=1;j>=0;j--)begin

for (k=3;k>=0;k--)begin

$display("a[%d][%d][%d]=%b",i,j,k,a[i][j][k])

end

end

end


end

endmodule
