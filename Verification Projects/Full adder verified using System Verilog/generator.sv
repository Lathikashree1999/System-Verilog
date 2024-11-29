class generator;
  transaction tr;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail = mail;
  endfunction
  
  task gene;
    repeat(8) begin
      tr = new();
      tr.randomize();
      mail.put(tr);
      $display("packet is generated");
    end
  endtask
endclass
