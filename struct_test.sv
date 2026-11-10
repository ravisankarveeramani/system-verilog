module struct_test();

struct {

logic [3:0] id;

int marks;

byte grade;

bit passed;

} student1, student2;

initial begin

student1.id = 5;

student1.marks=85;

student1.grade="A";

student1.passed=1;

$display("id =%0d", student1.id);

$display("marks =%0d", student1.marks);

$display("grade =%c", student1.grade);

$display("passed =%0b", student1.passed);

student2 = student1;

student.marks=95;

$display("student1_id = %d\nstudent2_id = %0d", student1.id, student2.id);

$display("student1_marks = %0d\nstudent2_marks = %0d", student1.marks, student2.marks);

$display("size =%0d", $bits(student1));

end

endmodule
