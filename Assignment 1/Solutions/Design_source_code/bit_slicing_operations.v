/*
Bit Slicing Operations
 Perform operations on different slices of a vector (data[7:4] vs data[3:0]) and verify outputs.
*/
module bit_slicing;
    reg [7:0] data = 8'b10101100;
    wire [7:0] inverted = ~{data[7:4], data[3:0]};
    
    initial begin
        $dumpfile("bit_slicing.vcd");
        $dumpvars(0, bit_slicing);
        $display("Upper: %b, Lower: %b", data[7:4], data[3:0]);
        $display("Inverted: %b", inverted);
        #10 $finish;
    end
endmodule