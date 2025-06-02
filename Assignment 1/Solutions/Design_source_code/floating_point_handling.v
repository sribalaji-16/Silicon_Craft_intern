/*
 Floating-Point Handling
 Use real delta; and assign values like 4e10, 2.18.
 Observe behavior when assigned to an integer.
 */
module float_handling;
    real delta = 4e10;
    integer i;
    
    initial begin
        $dumpfile("float_handling.vcd");
        $dumpvars(0, float_handling);
        $display("delta = %f", delta);
        i = delta;
        $display("i = %d", i);
        delta = 2.18;
        i = delta;
        $display("i = %d", i);
        #10 $finish;
    end
endmodule