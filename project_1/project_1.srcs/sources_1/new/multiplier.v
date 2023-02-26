module multiplier (
    input wire [15:0]  InputX         ,//输入数据，二进制补码
    input wire [15:0]  InputY         ,//输入数据，二进制补码
    output wire [31:0] product    //输出乘积，二进制补码
);

// 8个booth两位乘，得到8个16位部分积，并将16个部分积扩展到32位
wire [7:0] Cout_in;
wire [31:0] Xout_in[7:0];
Booth_8 u_Booth_8(
    .x         (InputX    ),
    .y         (InputY    ),
    .addsignal (Cout_in   ),
    .xout0     (Xout_in[0]),
    .xout1     (Xout_in[1]),
    .xout2     (Xout_in[2]),
    .xout3     (Xout_in[3]),
    .xout4     (Xout_in[4]),
    .xout5     (Xout_in[5]),
    .xout6     (Xout_in[6]),
    .xout7     (Xout_in[7]) 
);

// 32位的Wallace树，将8个部分积的和压缩成2个数的和
wire [31:0] C_in;
wire [31:0] S_in;
wire [5:0]  wallace_out;
Wallace_32 u_Wallace_32(
    .xin0 (Xout_in[0]  ),
    .xin1 (Xout_in[1]  ),
    .xin2 (Xout_in[2]  ),
    .xin3 (Xout_in[3]  ),
    .xin4 (Xout_in[4]  ),
    .xin5 (Xout_in[5]  ),
    .xin6 (Xout_in[6]  ),
    .xin7 (Xout_in[7]  ),
    .Cin  (Cout_in[5:0]),
    .C    (C_in        ),
    .S    (S_in        ),
    .Cout (wallace_out )   
);

// 使用32位超前进位加法器将计算乘法结果
ADD_32 u_ADD_32(
    .Input1(S_in      )             ,
    .Input2({C_in[30:0],Cout_in[6]}),
    .C0    (Cout_in[7])             ,
    .out   (product   )             ,
    .C     (          )
);


endmodule