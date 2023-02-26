module Wallace_32(
    input wire [31:0]  xin0     ,
    input wire [31:0]  xin1     ,
    input wire [31:0]  xin2     ,
    input wire [31:0]  xin3     ,
    input wire [31:0]  xin4     ,
    input wire [31:0]  xin5     ,
    input wire [31:0]  xin6     ,
    input wire [31:0]  xin7     ,
    input wire [5:0]   Cin      ,//最右侧的进位输入
    output wire [31:0] C        ,//最上面的输出进位
    output wire [31:0] S        ,//最上面的输出
    output wire [5:0]  Cout      //最左侧的输出，最后没用到
);

wire [5:0] c_in[32:0];
assign c_in[0] = Cin[5:0];
genvar temp;
generate
    for(temp=0; temp<32; temp=temp+1)
    begin:wallace
        wallace_8 u_wallace_8(
        	.N    ({xin7[temp],xin6[temp],xin5[temp],xin4[temp],xin3[temp],xin2[temp],xin1[temp],xin0[temp]}),
            .Cin  (c_in[temp]   ),
            .C    (C[temp]     ),
            .S    (S[temp]     ),
            .Cout (c_in[temp+1] )
        );
    end
endgenerate

assign Cout = c_in[32];

endmodule