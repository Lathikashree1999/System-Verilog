class driver;
  transaction tr;
  mailbox mail;
  virtual inter vintf;
  
  function new(virtual inter vintf, mailbox mail);
    this.vintf = vintf;
    this.mail = mail;
  endfunction
  
  task drive();
    repeat(2) begin
      tr = new();
      mail.get(tr);
      vintf.a <= tr.a;
      vintf.b <= tr.b;
      vintf.c <= tr.c;
      //#1;
      //tr.sum = vintf.sum;
      //tr.carry = vintf.carry;
      #1 tr.disp("driver class signals");
    end
  endtask
endclass
