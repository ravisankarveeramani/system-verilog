Module special_always_test();

logic a,b,sel, enable,clk,comb_out,q,latch_out;

always_comb begin

if(sel)

comb_out=a;

else

comb_out=b;

end

always_ff @(posedge clk) begin

q<=comb_out;

end

always_latch begin

if(enable)

latch_out=comb_out;

end

always #5 clk = ~clk;
initial begin

Q

clk =0;

$monitor("time=%0t a=%b b=%b clk=%b sel=%b enable=%b comb_out=%b q =%b latch_out=%d", $time, a, b,clk, sel, enable, comb out, q, latch_out);

a = 0

b = 1

sel=0;

enabl= 0; #4 
a = 1;
b = 1;
sel=0; 
enable=1;#3 
a = 1;
b = 0;
sel=1; 
enable=1;#5 

a = 0

b = 1

sel=1;

enable=0;#5
a=1;

b=0;

sel=0;

enable=1;#5

a=0;

b=0;

sel=1;

enable=0;#10

$finish;

end

endmodule
