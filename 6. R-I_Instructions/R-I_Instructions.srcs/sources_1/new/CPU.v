`timescale 1ns / 1ps
module CPU(
    input clk,rst,
    output ZF,
    output OF,
    output[31:0] PC,
    output[31:0] ALU_F
    );
    
    wire[31:0] Inst_code,W_Data,R_Data_A,R_Data_B,imm_data,ALU_B;
    wire[15:0] imm;
    wire[5:0] OP,func;
    wire[4:0] rs,rt,rd;
    wire W_Addr,Write_Reg,rd_rt_s,imm_s,rt_imm_s;
    wire[3:0] ALU_OP;
    
    assign OP = Inst_code[31:26];
    assign func = Inst_code[5:0];
    assign rs = Inst_code[25:21];
    assign rt = Inst_code[20:16];
    assign rd = Inst_code[15:11];
    assign imm = Inst_code[15:0];
    assign ALU_F = W_Data;
    
    assign W_Addr = (rd_rt_s)?rt:rd;
    assign imm_data=(imm_s) ?{{16{imm[15]}},imm} :{{16{1'b0}},imm};
    assign ALU_B = (rt_imm_s)?imm_data:R_Data_B;
    
    Instructions myInstructions(.clk(clk),.reset(rst),.Inst_code(Inst_code),.PC(PC));
    Instruction_Decoder myInstruction_Decoder(.OP(OP),.func(func),.Write_Reg(Write_Reg),
        .ALU_OP(ALU_OP),.rd_rt_s(rd_rt_s),.imm_s(imm_s),.rt_imm_s(rt_imm_s));
    Register myRegister(.R_Addr_A(rs),.R_Addr_B(rt),.W_Addr(W_Addr),.W_Data(W_Data),
        .Write_Reg(Write_Reg),.R_Data_A(R_Data_A),.R_Data_B(R_Data_B),.Reset(rst),.clk(clk));
    ALU myALU(.A(R_Data_A),.B(ALU_B),.ALU_OP(ALU_OP),.ZF(ZF),.OF(OF),.F(W_Data));
    
endmodule
