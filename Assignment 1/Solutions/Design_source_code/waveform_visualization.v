/*
Waveform Visualization
 Use $dumpfile and $dumpvars in all testbenches and view in GTKWave.
 */
module waveform_tb;
    reg clk;
    reg rst;
    reg data;

    // Generate clock
    always #5 clk = ~clk;

    initial begin
        // Waveform dump setup
        $dumpfile("waveform.vcd"); // Output file
        $dumpvars(0, waveform_tb); // Dump all variables

        // Initialize signals
        clk = 0;
        rst = 1;
        data = 0;
        #10 rst = 0;
        #20 data = 1;
        #30 data = 0;

        #50 $finish; // End simulation
    end

endmodule
