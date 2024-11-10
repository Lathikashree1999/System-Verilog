/*10. Write a module that checks if a string is a palindrome (reads the same forwards and
backwards). For example, check if "racecar" is a palindrome.*/

module palindrome_check;
  string test_str = "racecar";
  bit is_palindrome = 1;

  initial begin
    for (int i = 0; i < test_str.len() / 2; i++) begin
      if (test_str[i] != test_str[test_str.len() - 1 - i]) begin
        is_palindrome = 0;
        break;
      end
    end

    if (is_palindrome)
      $display("The string '%s' is a palindrome.", test_str);
    else
      $display("The string '%s' is not a palindrome.", test_str);
  end
endmodule

/*Output
The string 'racecar' is a palindrome.*/
