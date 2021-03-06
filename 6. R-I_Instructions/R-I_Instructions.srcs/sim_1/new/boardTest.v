`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/03 21:17:49
// Design Name: 
// Module Name: boardTest
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module boardTest(
    output ZF,
    output OF,
    output[31:0] PC,
    output[31:0] ALU_F
    );

    reg clk,myclk,rst;
    
    wire[31:0] Inst_code,W_Data,F,R_Data_A,R_Data_B,imm_data,ALU_B,M_W_Data,M_R_Data;
    wire[15:0] imm;
    wire[5:0] OP,func;
    wire[4:0] rs,rt,rd,W_Addr;
    wire Write_Reg,rd_rt_s,imm_s,rt_imm_s,alu_men_s,Mem_Write;
    wire[3:0] ALU_OP;
    
    assign OP = Inst_code[31:26];
    assign func = Inst_code[5:0];
    assign rs = Inst_code[25:21];
    assign rt = Inst_code[20:16];
    assign rd = Inst_code[15:11];
    assign imm = Inst_code[15:0];
    assign ALU_F = W_Data;
    assign M_W_Data = R_Data_B;
    
    assign W_Addr = (rd_rt_s)?rt:rd;
    assign imm_data=(imm_s) ?{{16{imm[15]}},imm} :{{16{1'b0}},imm};
    assign ALU_B = (rt_imm_s)?imm_data:R_Data_B;
    assign W_Data = alu_men_s?M_R_Data:F;
    
    Instructions myInstructions(.clk(myclk),.reset(rst),.Inst_code(Inst_code),.PC(PC));
    Instruction_Decoder myInstruction_Decoder(.OP(OP),.func(func),.Write_Reg(Write_Reg),
        .ALU_OP(ALU_OP),.rd_rt_s(rd_rt_s),.imm_s(imm_s),.rt_imm_s(rt_imm_s),.alu_men_s(alu_men_s),.Mem_Write(Mem_Write));
    Register myRegister(.R_Addr_A(rs),.R_Addr_B(rt),.W_Addr(W_Addr),.W_Data(W_Data),
        .Write_Reg(Write_Reg),.R_Data_A(R_Data_A),.R_Data_B(R_Data_B),.Reset(rst),.clk(myclk));
    ALU myALU(.A(R_Data_A),.B(ALU_B),.ALU_OP(ALU_OP),.ZF(ZF),.OF(OF),.F(F));
    Data_ROM myData_ROM (
    .clka(clk),    // input wire clka
    .wea(Mem_Write),      // input wire [0 : 0] wea
    .addra(F[5:0]),  // input wire [5 : 0] addra
    .dina(M_W_Data),    // input wire [31 : 0] dina
    .douta(M_R_Data)  // output wire [31 : 0] douta
    );
    
    initial 
        begin
            clk = 0;
            rst = 1;
            myclk = 0;
            
            #50;
            clk = 1;
            rst = 0;
            
            #50;
            clk = 0;
            myclk = 1;
            
            #50;
            clk = 1;
            
            #50;
            clk =0;
            myclk = 0;
            
            #50;
            clk = 1;
            
            #50;
            clk = 0;
            myclk = 1;
            
            #50;
            clk = 1;
            
            #50;
            clk =0;
            myclk = 0;
            
             #50;
            clk = 1;
            
            #50;
            clk = 0;
            myclk = 1;
            
            #50;
            clk = 1;
            
            #50;
            clk =0;
            myclk = 0;
            
            #50;
            clk = 1;
            
            #50;
            clk = 0;
            myclk = 1;
            
            #50;
            clk = 1;
            
            #50;
            clk =0;
            myclk = 0;
            
             #50;
            clk = 1;
            
            #50;
            clk = 0;
            myclk = 1;
            
            #50;
            clk = 1;
            
            #50;
            clk =0;
            myclk = 0;
            
            #50;
            clk = 1;
            
            #50;
            clk = 0;
            myclk = 1;
            
            #50;
            clk = 1;
            
            #50;
            clk =0;
            myclk = 0;
            
             #50;
            clk = 1;
            
            #50;
            clk = 0;
            myclk = 1;
            
            #50;
            clk = 1;
            
            #50;
            clk =0;
            myclk = 0;
            
            #50;
            clk = 1;
            
            #50;
            clk = 0;
            myclk = 1;
            
            #50;
            clk = 1;
            
            #50;
            clk =0;
            myclk = 0;
            
             #50;
            clk = 1;
            
            #50;
            clk = 0;
            myclk = 1;
            
            #50;
            clk = 1;
            
            #50;
            clk =0;
            myclk = 0;
            
            #50;
            clk = 1;
            
            #50;
            clk = 0;
            myclk = 1;
            
            #50;
            clk = 1;
            
            #50;
            clk =0;
            myclk = 0;
        end
endmodule