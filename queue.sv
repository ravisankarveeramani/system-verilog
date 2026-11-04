module queue(output logic [7:0] a [$]);

initial begin

a.push_back(10);

a.push_back(20);

a.push_back(30);

a.push_back(40);

a.push_back(50);

foreach (a[i])

$display("a[%d] =%0d",i,a[i]);

a.delete(2);#1

foreach (a[i])

$display("a[%d] =%0d",i,a[i]);

$display("size of queue =%0d",a.size());

end

a.insert(2,25);

endmodule
