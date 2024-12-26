class monitor;
  virtual inter vintf;
  mailbox mail;
  transaction tr;
  
  function new(virtual inter vintf, mailbox mail);
    this.vintf = vintf;
    this.mail = mail;
  endfunction
  
  task moni();
    repeat(2) begin
      tr = new();
      tr.a = vintf.a;
      tr.b = vintf.b;
      tr.c = vintf.c;
      tr.sum = vintf.sum;
      tr.carry = vintf.carry;
      mail.put(tr);
      tr.disp("monitor class signals");
    end
  endtask
endclass
