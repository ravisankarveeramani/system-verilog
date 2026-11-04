module associate;

logic [7:0] a[int];

int i;

initial begin

a[5]=123;

a[10]=44;

a[20]=32;

a[30]=11;

a[50]=40;

if(a.first(i))

$display("the first index%0d",i);

if(a.last(i))

$display("the last index%0d",i);

i=10;

if(a.next(i))

$display("the next index %0d",i);

1=30;

if(a.prev(i))

$display("the prev index %0d",i);

$display("the 15 exist %0d",a.exists(15));

end

endmodule
