module taskfunction();

function int add (int a, int b);

int result;

result = a+b;

return result;

endfunction

task mul(int c,int d);

int result1;

result1=c*d;#5

$display("result=%0d", result1);

endtask

initial begin

$display("the addition = %0d",add(10,20));

mul(10,20);

end

endmodule
