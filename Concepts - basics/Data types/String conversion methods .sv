module string_methods_eg;
  string str;
  integer ascii_value;
  integer int_value;
  real real_value;

  initial begin
    str = "123";
    int_value = str.atoi();
    $display("String '%s' to integer: %0d", str, int_value);
    
    str = "a";
    ascii_value = int'(str[0]);
    $display("String (%s) to integer ascii value : %0d",str,ascii_value);

    str = "7B";
    int_value = str.atohex();
    $display("String '%s' as hexadecimal: %0d", str, int_value);

    str = "77";
    int_value = str.atooct();
    $display("String '%s' as octal: %0d", str, int_value);

    str = "1101";
    int_value = str.atobin();
    $display("String '%s' as binary: %0d", str, int_value);

    str = "123.456";
    real_value = str.atoreal();
    $display("String '%s' to real: %0f", str, real_value);

    int_value = 123;
    str.itoa(int_value);
    $display("Integer %0d converted to string: '%s'", int_value, str);
    
    ascii_value = 97;
    str = " ";
    str[0] = byte'(ascii_value); //byte casting
    $display("integer ascii value (%0d) to String : %s",ascii_value,str);

    int_value = 123;
    str.hextoa(int_value);
    $display("Integer %0d to hexadecimal string: '%s'", int_value, str);

    int_value = 123;
    str.octtoa(int_value);
    $display("Integer %0d to octal string: '%s'", int_value, str);

    int_value = 13;
    str.bintoa(int_value);
    $display("Integer %0d to binary string: '%s'", int_value, str);

    real_value = 123.456;
    str.realtoa(real_value);
    $display("Real number %0f  to string: '%s'", real_value, str);
  end
endmodule
