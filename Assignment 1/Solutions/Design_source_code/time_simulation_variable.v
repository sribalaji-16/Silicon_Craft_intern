/*
Time Simulation Variable
 Create a time t; variable
 Store and display $time at different events using delays.
 */
 module time_sim;
    time t;
    
    initial begin
        $dumpfile("time_sim.vcd");
        $dumpvars(0, time_sim);
        #5;
        t = $time;
        $display("t = %0t", t);
        #7.5;
        t = $time;
        $display("t = %0t", t);
        #10 $finish;
    end
endmodule