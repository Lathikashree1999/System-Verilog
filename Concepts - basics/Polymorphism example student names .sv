/*Declare a class "BaseClass" use a virtual task "name" inside it. Declare 6 Derived class for the class "BaseClass". Have the task "name" inside all derived class. 
Each task must display the name of an silicon craft Student name. Using the BaseClass object try to display all the student name declared inside the derived class method.*/

class BaseClass;
  string std_name;
  
  virtual task name();
    $display("Baseclass name : %s",std_name);
  endtask
endclass

class student_A extends BaseClass;
  task name();
    $display("Silicon Craft student_A name : %s",std_name);
  endtask
endclass

class student_B extends BaseClass;
  task name();
    $display("Silicon Craft student_B name : %s",std_name);
  endtask
endclass

class student_C extends BaseClass;
  task name();
    $display("Silicon Craft student_C name : %s",std_name);
  endtask
endclass

class student_D extends BaseClass;
  task name();
    $display("Silicon Craft student_D name : %s",std_name);
  endtask
endclass

class student_E extends BaseClass;
  task name();
    $display("Silicon Craft student_E name : %s",std_name);
  endtask
endclass

class student_F extends BaseClass;
  task name();
    $display("Silicon Craft student_F name : %s",std_name);
  endtask
endclass

module student_names;
  initial begin
    BaseClass p_A, p_B, p_C, p_D, p_E, p_F;
    student_A s_A = new();
    student_B s_B = new();
    student_C s_C = new();
    student_D s_D = new();
    student_E s_E = new();
    student_F s_F = new();
    
    s_A.std_name = "Gokul";
    
    s_B.std_name = "Gowtham";
    
    s_C.std_name = "Jaya";
    
    s_D.std_name = "Lathika";
    
    s_E.std_name = "Mano";
    
    s_F.std_name = "Praveen";
    
    p_A = s_A;
    p_B = s_B;
    p_C = s_C;    
    p_D = s_D;
    p_E = s_E;
    p_F = s_F;
    
    s_A.name();
    s_B.name();
    s_C.name();
    s_D.name();
    s_E.name();
    s_F.name();
  end
endmodule
        
/*Output
Silicon Craft student_A name : Gokul
Silicon Craft student_B name : Gowtham
Silicon Craft student_C name : Jaya
Silicon Craft student_D name : Lathika
Silicon Craft student_E name : Mano
Silicon Craft student_F name : Praveen*/
  
  
