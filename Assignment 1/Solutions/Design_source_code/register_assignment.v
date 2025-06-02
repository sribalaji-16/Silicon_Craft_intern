/*
 Register Assignment
 Create a module that uses:
 • reg [7:0] data
 Assign and display a binary value.
 */
module reg_assign;
    reg [7:0] data = 8'b10101100;
    
    initial begin
        $dumpfile("reg_assign.vcd");
        $dumpvars(0, reg_assign);
        $display("data = %b", data);
        #10 $finish;
    end
endmodule