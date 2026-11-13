module initial_test();

initial begin

$display("A0:%0t",$time);#4 $display("A4:%0t",$time);#3

$display("A7:%0t",$time);

end

initial begin

$display("B0:%0t",$time);#2 $display("B2:%0t",$time);#5 $display("B7:%0t",$time);

end

initial begin

#4;

$display("C4:%0t",$time);#3

$display("C7:%0t",$time);
#4;
end

endmodule
