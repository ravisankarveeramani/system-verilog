module passvalue();

task update_value(input int a);

a =100;

$display("value of a =%0d",a);

endtask

initial begin

int x =10;

update_value(x);

$display("x=%0d",x);

end

endmodule
