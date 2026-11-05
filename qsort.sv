module qsort (output logic [7:0] a[$]);

initial begin

a.push_back(40);

a.push_back(10);

a.push_back(50);

a.push_back(20);

a.push_back(30);

foreach (a[i])

$display("a[%d] = %0d",i,a[i]);

a.reverse();

$display("after reverse");

foreach (a[i])

$display("a[%d] = %0d",i,a[i]);

a.sort();

$display("after sort");

foreach (a[i])

$display("a[%d] = %0d",i,a[i]);

a.rsort();

$display("after rsort");

foreach (a[i])

$display("a[%d] = %0d",i,a[i]);

a.shuffle();

$display("after shuffle");

foreach (a[i])

$display("a[%d] = %0d",i,a[i]);

end

endmodule
