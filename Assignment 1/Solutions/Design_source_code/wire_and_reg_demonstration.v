//Question
/*  
 Wire and Reg Demonstration
 Write a Verilog module where:
 • net1 and net2 are wires.
 • net1 is assigned a constant value and net2 = net1.
 • Display their values using $display.
 */

 module wire_demo;
    // Declare wires
    wire net1;
    wire net2;
    
    // Assign net1 a constant value
    assign net1 = 1'b1;
    
    // Assign net2 to net1
    assign net2 = net1;

    initial begin
        $display("net1 = %b net2 = %b",net1, net2);
    end
endmodule
