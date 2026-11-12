module dynamic (output logic [7:0] a []);

initial begin

a =new[5];

a = {10,20,30,40,50};

foreach (a[i])

$display("a[%d] =%0d",i,a[i]);

$display("size of array=%0d", $size(a));

a = new[8](a;#1

foreach (a[i])

$display("a[%d] =%0d",i,a[i]);

$display("size of array=%0d", $size(a));

end
initial begin
	$dumpfile("waves2.vcd")l;
	$dumpvar(1,dynamic);

endmodule
