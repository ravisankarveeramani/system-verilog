Module typedef_test();

typedef logic [7:0] data_t;

typedef data_t natrix_t[0:2][0:1];

data_t x,y;

natrix_t a;

int k =1;

int sun =9;

initial begin

x=8'd25;

y=8'd15;

foreach(a[i,j])begin

a[i][j]=10*k;

k++;

end

foreach(a[i,j])begin

end

$display("the value is a[%d] [%d]=%0d",i,j,a[i][j

SUR += a[i][j];

$display("the value of sun = %0d",sun);

$display("the value of sum = %0d",x+y);

end

endmodule
