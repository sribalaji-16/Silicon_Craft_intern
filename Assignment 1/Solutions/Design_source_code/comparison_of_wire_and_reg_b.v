/*
 Comparison of Wire and Reg
 Implement two separate modules:
 • One using wire and assign
 • Another using reg and procedural assignment
 Compare their simulation behavior. */

//Using reg with assign
module reg_example;
    reg x;
    reg y;
    
    initial begin
        x = 1'b1; // Procedural assignment
        y = x;
        $display("x = %b, y = %b", x, y);
    end
endmodule
