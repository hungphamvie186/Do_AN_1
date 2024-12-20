`timescale 1ns/1ps

module PC_tb;

    // Inputs
    logic rst;
    logic clk;
    logic Stop_en;
    logic PCsel;
    logic [31:0] branch;

    // Outputs
    logic [31:0] cur_pc;
    logic [31:0] nextpc;

    // Instantiate the DUT (Device Under Test)
    PC DUT (
        .rst(rst),
        .clk(clk),
        .Stop_en(Stop_en),
        .PCsel(PCsel),
        .branch(branch),
        .cur_pc(cur_pc),
        .nextpc(nextpc)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;  // Toggle clock every 5 time units
    end

    // Stimulus
    initial begin
        // Initialize inputs
        clk = 0;
        rst = 1;
        Stop_en = 0;
        PCsel = 0;
        branch = 32'b0;

        // Reset the DUT
        rst = 1;
        

        // Test incrementing the PC by 4
        Stop_en = 0;
        PCsel = 0;
        branch = 32'b0;
        #10;  // Wait for a clock cycle
        $display("PC increment by 4:           cur_pc = %d   , nextpc = %d", cur_pc, nextpc);
		  #10 rst = 0;
		  // Test incrementing the PC by 4
        Stop_en = 0;
        PCsel = 0;
        branch = 32'b0;
        #10;  // Wait for a clock cycle
        $display("PC increment by 4:           cur_pc = %d   , nextpc = %d", cur_pc, nextpc);
        // Test branching
        Stop_en = 0;
        PCsel = 1;
        branch = 32'd100;  // Set branch address
        #10;  // Wait for a clock cycle
        $display("Branching:                   cur_pc = %d   , nextpc = %d", cur_pc, nextpc);

        // Test stopping the PC update
        Stop_en = 1;
        PCsel = 0;
        branch = 32'b0;
        #10;  // Wait for a clock cycle
        $display("Stop PC update:              cur_pc = %d   , nextpc = %d", cur_pc, nextpc);
        // Test stopping the PC update
        Stop_en = 1;
        PCsel = 0;
        branch = 32'b0;
        #10;  // Wait for a clock cycle
        $display("Stop PC update:              cur_pc = %d   , nextpc = %d", cur_pc, nextpc);
        // Test incrementing the PC by 4 again
        Stop_en = 0;
        PCsel = 0;
        branch = 32'b0;
        #10;  // Wait for a clock cycle
        $display("PC increment by 4:           cur_pc = %d   , nextpc = %d", cur_pc, nextpc);
		  Stop_en = 0;
        PCsel = 0;
        branch = 32'b0;
        #10;  // Wait for a clock cycle
        $display("PC increment by 4:           cur_pc = %d   , nextpc = %d", cur_pc, nextpc);

        // Test reset
        rst = 1;
        #10 rst = 0;
        $display("After reset:                 cur_pc = %d   , nextpc = %d", cur_pc, nextpc);

        // Finish the simulation
        $finish;
    end

endmodule
