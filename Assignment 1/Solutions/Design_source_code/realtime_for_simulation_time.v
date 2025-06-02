/*
Realtime for Simulation Time
 Use realtime current_time = $realtime;
 Display floating-point simulation time.
 */
 module realtime_sim;
    realtime current_time;
    
    initial begin
        $dumpfile("realtime_sim.vcd");
        $dumpvars(0, realtime_sim);
        #3.75;
        current_time = $realtime;
        $display("current_time = %f", current_time);
        #10 $finish;
    end
endmodule