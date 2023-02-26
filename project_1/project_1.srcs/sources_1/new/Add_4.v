module Add_4
(
input    wire          C0 ,//来自低位的进位输入
input    wire [3:0]    P1  ,//1位并行加法的P
input    wire [3:0]    G1  ,//1位并行加法的G
output   wire          G4  ,//4位并行加法的G
output   wire          P4  ,//4位并行加法的P
output   wire [2:0]    C    //低三位的进位
);

assign P4=&P1;
assign G4=G1[3]|(P1[3]&G1[2])|(P1[3]&P1[2]&G1[1])|(P1[3]&P1[2]&P1[1]&G1[0]);
assign C[0]=G1[0]|(P1[0]&C0);
assign C[1]=G1[1]|(P1[1]&G1[0])|(P1[1]&P1[0]&C0);
assign C[2]=G1[2]|(P1[2]&G1[1])|(P1[2]&P1[1]&G1[0])|(P1[2]&P1[1]&P1[0]&C0);
endmodule