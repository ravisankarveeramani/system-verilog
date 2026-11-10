Module packed_struct_test();

typedef struct {

logic [3:0] id;

logic [7:0] data;

?

Junpacket_t;

unpacket_t a;

typedef struct packed{

logic [3:0] id;

logic [7:0] data;

}packet_t;

packet_t b;

initial begin

a.id =4'hA;

b.id =4'hA;

a.data=8'hBC;

b.data=8'hBC;

$display("a_id=%h\nb_id=%h", a.id, b.id);

$display("a_data=%h\nb_data=%h", a.data,b.data); $display("the size of structure = %0d", $bits(a));

$display("the size of structure = %0d", $bits(b));

b=12'h123;

$display("b_id=%h\nb_data=%h", b.id, b.data);

$display("b_id=%b",b[3:0]);

end

endmodule
