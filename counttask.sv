module counttask();

task count_task();

int count;

count ++;

$display("value of a =%0d",count);

endtask

initial begin

count_task();

count_task();

count_task();

end

endmodule
