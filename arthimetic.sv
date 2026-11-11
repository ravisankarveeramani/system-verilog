module arthimetic_test();

logic [3:0] a=12,b=5;

int sum,diff,mul,mod,exp,diffs,diffu;

bit [3:0] sumt;

bit [7:0] sumw;

real div;

logic [3:0] c=4'b1100,d=4'b0011;

logic signed [3:0] c1=4'b1100,d1=410011;

initial begin

sum=a+b;

sumt=a+b;

sumw=a+b;

diffs=c1-d1;

diffu=c-d;

diff-a-b;

mul=a*b;

div=real'(a)/b;

mod=a%b;

exp=a**b;

$display("-----decimal .......");

$display("sum-%0d,diff=%0d,mul=%0d,div=%f,mod=%d,exp=%d", sum, diff,mul,div,mod,exp);

$display("sumt=%0d, sumw=%d", sumt, sumw);

$display("diff of signed =%0d,diff of unsigned =%0d",diffs,diffu);

$display("......binary");

$display("sum=%b,diff=%b,mul=%b,div=%f,mod=%b,exp=%b", sum, diff,mul,div,nod, exp);

$display("sumt=%b,sumw=%b",sunt, sumw);

$display("diff of signed =%b, diff of unsigned =%b",diffs,diffu);

$display("...hexadecimal.....");

$display("sum=%h,diff=%h,mul=%h, div=%f,mod=%h, exp=%h", sum, diff, mul,div,nod,exp);

$display("sumt=%h,sumw=%h", sumt,sumw);

$display("diff of signed %h, diff of unsigned =%h", diffs,diffu);

end

endmodule
