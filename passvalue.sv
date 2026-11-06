module passname();

task calculate(int a, int b,int c);

int result;

result = a+b+c;

$display("the value of a=%0d,b=%0d,c=%0d result=%d",a,b,c,result);

endtask

initial begin

calculate(.c(30),.a(20),.b(10));

end

endmodule
