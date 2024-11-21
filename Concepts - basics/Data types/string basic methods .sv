module tb;
   string str = "Hello World!";

   initial begin
   	  string tmp;

      $display ("str.len() = %0d", str.len());

      tmp = str;
      tmp.putc (3,"d");
      $display ("str.putc(3, d) = %s", tmp);

      $display ("str.getc(2) = %s (%0d)", str.getc(2), str.getc(2));

      $display ("str.tolower() = %s", str.tolower());
     
     $display ("str.toupper() = %s", str.toupper());

      tmp = "Hello World!";
      $display ("[tmp,str are same] str.compare(tmp) = %0d", str.compare(tmp));
      tmp = "How are you ?";
      $display ("[tmp,str are diff] str.compare(tmp) = %0d", str.compare(tmp));

      tmp = "hello world!";
      $display ("[tmp is in lowercase] str.compare(tmp) = %0d", str.compare(tmp));
      tmp = "Hello World!";
      $display ("[tmp,str are same] str.compare(tmp) = %0d", str.compare(tmp));

      $display ("str.substr(4,8) = %s", str.substr (4,8));
     
      $display("Str = %s", str);

   end
endmodule
