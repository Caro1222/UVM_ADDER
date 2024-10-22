//`timescale 1ns / 1ps
import uvm_pkg::*;
`include "uvm_macros.svh"
`include "adder.sv"
`include "interface.sv"
`include "sequence_item.sv"
`include "sequence.sv"
`include "monitor.sv"
`include "driver.sv"
`include "scoreboard.sv"
`include "agent.sv"
`include "environment.sv"
`include "test.sv"

module tb;
  import uvm_pkg::*;
  reg clk;

  always #10 clk =~ clk;
  des_if _if(clk);

  adder u0 (.clk(clk),
               .reset(_if.rstn),
               .in1(_if.in1),
               .in2(_if.in2),
               .out(_if.out));
  initial begin
    clk <= 0;
    uvm_config_db#(virtual des_if)::set(null,"uvm_test_top","des_vif",_if);
//    uvm_config_db#(virtual des_if)::set(null, "uvm_test_top.e0.a0.d0","des_vif",_if);
    run_test("test_adder");
  end
endmodule
