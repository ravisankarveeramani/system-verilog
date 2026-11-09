module always_challenge();

logic clk, enable;

logic [7:0] data;

initial begin

clk =0;

enable=0;

data=0;

end

always #5 clk = ~clk;

initial begin

#40;

$finish;

end

always@(posedge clk) begin

$display("pos time:%0t, enable=%d", $time, enable);

if(enable)

data++;

end

always@(negedge clk)begin

$display("neg time:%0t, data=%d", $time, data);

end

always@(enable)begin

$display("the enable changes @ %0t", $time);

end

initial begin

#3;

enable =1;#9

enable =0;#6

enable =1;#9

enable =0;#6

enable =1;

end

endmodule
