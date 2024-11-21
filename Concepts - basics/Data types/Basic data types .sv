//Basic data types bit, byte, reg, logic, signed bit, unsigned byte

module basic_dataTypes();
    bit   [7:0] bit_data;
    logic [7:0] logic_data;
    reg   [7:0] reg_data;

    integer integer_addr;
    int int_addr;

    byte signed_number;
    bit [7:0] unsigned_number;

    byte unsigned unsigned_byte_number;
    bit signed [7:0]  signed_bit_number;

    initial
    begin
        $display ("Default values of data-types: \n");

        $display ("Default value of logic logic_data = %b", logic_data);
        $display ("Default value of reg reg_data     = %b", reg_data);
        $display ("Default value of bit bit_data     = %b\n", bit_data);
      
        $display ("Default value of integer integer_addr = %0b", integer_addr);
        $display ("Default value of int int_addr     = %0b\n", int_addr);
      
      $display ("Default value of byte signed_number        = %0d", signed_number);
      $display ("Default value of bit [7:0] unsigned_number = %0d\n", unsigned_number);

       
        integer_addr = 32'b01x1_01xz_01xz_01xz;
        int_addr     = 32'b01x1_01xz_01xz_01xz;

        bit_data     = 8'b0101_01xz;
        logic_data   = 8'b0101_01xz;
        reg_data     = 8'b0101_01xz;

        $display ("Initialized value for different datatypes: ");

        $display ("Value of logic logic_data = %b", logic_data);
        $display ("value of reg reg_data     = %b", reg_data);
        $display ("Value of bit bit_data     = %b\n", bit_data);

        $display ("Value of integer write logic_data = %0b", integer_addr);
        $display ("Value of int read logic_data      = %0b\n", int_addr);

        $display ("Initialized value for byte and bit[7:0]:");
      
        signed_number   = -13;
        unsigned_number = 20;
      
        $display ("Value of byte signed_number        = %0d", signed_number);
        $display ("Value of bit [7:0] unsigned_number = %0d\n", unsigned_number);
      
    end
endmodule
