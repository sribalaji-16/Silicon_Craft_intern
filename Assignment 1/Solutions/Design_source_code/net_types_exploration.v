/*
 Net Types Exploration
 Write a Verilog module using:
 • wand, wor, tri, triand
 • Drive them using assign and simulate with #delay and $monitor
 */
 
module net_types_demo;
reg a, b; 
    // Wand
    wand and_n ;
    // Wor
    wor or_n;    
    // Tri-state
    tri t;
    // Tri-state AND 
    triand tri_and;

    assign and_n = a, and_n = b; 
    assign or_n  = a, or_n  = b;
    assign t = (a)? 1'b1 : 1'bz;
    assign tri_and = (a)?  1'b1 : 1'bz;
    
    initial begin
        a = 1'b0; b = 1'b0;
        #10 a = 1'b0; b = 1'b1;
        #10 a = 1'b1; b = 1'b0;
        #10 a = 1'b1; b = 1'b1;
        #10 $finish;
    end

    initial begin
        $monitor("Time=%0t | and_n=%b, or_n=%b, t=%b, tri_andt=%b", 
                  $time, and_n, or_n, t, tri_and);
    end
endmodule