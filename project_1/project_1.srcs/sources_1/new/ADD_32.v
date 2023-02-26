module ADD_32(
    input  wire [31:0]  Input1  ,//输入数据1，补码
    input  wire [31:0]  Input2  ,//输入数据2，补码
    input  wire         C0      ,//来自低位的进位
    output wire [31:0]  out     ,//输出和
    output wire         C        //输出进位
);



// level1
wire [31:0] p1 = Input1|Input2;
wire [31:0] g1 = Input1&Input2;
wire [31:0] c;
wire [7:0] p2, g2;
wire [1:0] p3, g3;
assign c[0] = C0;

genvar temp;
generate
    for (temp = 0; temp<8; temp=temp+1) 
    begin
        Add_4 u_Add_4_first (.P1(p1[(4*temp+3)-:4]),.G1(g1[(4*temp+3)-:4]),.C0(c[temp*4]),.P4(p2[temp]),.G4(g2[temp]),.C(c[(4*temp+3)-:3]));
    end
endgenerate

generate
    for (temp = 0; temp<2; temp=temp+1) 
    begin
        Add_4 u_Add_4_second (.P1(p2[(4*temp+3)-:4]),.G1(g2[(4*temp+3)-:4]),.C0(c[temp*16]),.P4(p3[temp]),.G4(g3[temp]),.C({c[temp*16+12],c[temp*16+8],c[temp*16+4]}));
    end
endgenerate

assign c[16]=g3[0]|(p3[0]&c[0]);

// 得到进位后计算加法和
assign C = (Input1[31]&Input2[31]) | (Input1[31]&c[31]) | (Input2[31]&c[31]);
assign out = (~Input1&~Input2&c)|(~Input1&Input2&~c)|(Input1&~Input2&~c)|(Input1&Input2&c);

endmodule