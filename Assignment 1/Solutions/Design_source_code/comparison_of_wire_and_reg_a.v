//Question 2
/*
 Comparison of Wire and Reg
 Implement two separate modules:
 • One using wire and assign
 • Another using reg and procedural assignment
 Compare their simulation behavior. 
 */

//Using wire with assign
module wire_example;
    wire a;
    wire b;
    
    // Continuous assignment
    assign a = 1'b1;
    assign b = a;

    initial begin
        $display("a = %b, b = %b", a, b);
    end
endmodule
