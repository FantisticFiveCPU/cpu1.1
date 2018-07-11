`timescale 1ns / 1ps

module Ex_Mem(
input clk,
input [31:0]NewPC,
input [31:0]NewPC_Jump,
input Zero,
input Overflow,
input [31:0]ALUout,
input [4:0]Rw,
input MemWr,
input Branch,
input MemtoReg,
input RegWr,
input Jump,
input [31:0]busB,

output reg [31:0]NewPC_out,
output reg [31:0]NewPC_Jump_out,
output reg Zero_out,
output reg Overflow_out,
output reg [31:0]ALUout_out,
output reg [4:0]Rw_out,
output reg MemWr_out,
output reg Branch_out,
output reg MemtoReg_out,
output reg RegWr_out,
output reg Jump_out,
output reg [31:0]busB_out
);

    initial begin
    NewPC_out=0;
    NewPC_Jump_out=0;
    end

    always @(negedge clk)
    begin
    NewPC_out=NewPC;
    NewPC_Jump_out=NewPC_Jump;
    busB_out=busB;
    Zero_out=Zero;
    Overflow_out=Overflow;
    ALUout_out=ALUout;
    Rw_out=Rw;
    MemWr_out=MemWr;
    Branch_out=Branch;
    MemtoReg_out=MemtoReg;
    RegWr_out=RegWr;
    Jump_out=Jump;
    end
endmodule
