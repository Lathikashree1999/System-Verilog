/*2. Create a typdef Instr_t of struct for the instruction and then declare the memory as array of
Instr_t.*/

module typedef_example;
  typedef struct {
    int opcode;
    int operand1;
    int operand2;
  } Instr_t;

  Instr_t memory[10];

  initial begin
    foreach (memory[i]) begin
      memory[i] = '{opcode: i, operand1: i+1, operand2: i+2};
    end

    foreach (memory[i]) begin
      $display("memory[%0d] = {opcode: %0d, operand1: %0d, operand2: %0d}",
               i, memory[i].opcode, memory[i].operand1, memory[i].operand2);
    end
  end
endmodule

/*Output
memory[0] = {opcode: 0, operand1: 1, operand2: 2}
memory[1] = {opcode: 1, operand1: 2, operand2: 3}
memory[2] = {opcode: 2, operand1: 3, operand2: 4}
memory[3] = {opcode: 3, operand1: 4, operand2: 5}
memory[4] = {opcode: 4, operand1: 5, operand2: 6}
memory[5] = {opcode: 5, operand1: 6, operand2: 7}
memory[6] = {opcode: 6, operand1: 7, operand2: 8}
memory[7] = {opcode: 7, operand1: 8, operand2: 9}
memory[8] = {opcode: 8, operand1: 9, operand2: 10}
memory[9] = {opcode: 9, operand1: 10, operand2: 11}*/
