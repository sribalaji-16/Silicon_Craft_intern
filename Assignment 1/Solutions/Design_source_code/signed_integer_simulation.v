/*
 Signed Integer Simulation
 Use integer i;
 Assign positive and negative values and simulate signed behavior.
 */
module signed_sim;
    integer i;
    
    initial begin
        $dumpfile("signed_sim.vcd");
        $dumpvars(0, signed_sim);
        i = 10;
        $display("i = %d", i);
        i = -10;
        $display("i = %d", i);
        #10 $finish;
    end
endmodule