module passref ();

task automatic update_value(ref int a);

a = 100;

$display("value of a =%0d",a);

endtask

initial begin

int x=10;

display("value of x=%0d",x);

update_value(x);

$display("value of x=%0d",x);

end

endmodule
