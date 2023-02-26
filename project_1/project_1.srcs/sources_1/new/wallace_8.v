module wallace_8(
    input   [7: 0]     N   ,// N个1bit数按相同的权重进行压缩
    input   [5: 0]     Cin ,// 来自右侧的进位
    output             C   ,// 最后一级计算的C
    output             S   ,// 最后一级计算的S
    output  [5: 0]     Cout // 传递到左侧的进位
);
    wire [5: 0]    Input_second;
    full_adder u_adder_1(.Cin(N[7-:3]),.Cout(Cout[0]),.S(Input_second[5]));
    full_adder u_adder_2(.Cin(N[4-:3]),.Cout(Cout[1]),.S(Input_second[4]));
    half_adder u_adder_3(.Cin(N[1-:2]),.Cout(Cout[2]),.S(Input_second[3]));
    assign Input_second[2:0] = {Cin[0],Cin[1],Cin[2]};

    wire [3:0]    Input_third;
    full_adder u_adder_4(.Cin(Input_second[5-:3]),.Cout(Cout[3]),.S(Input_third[3]));
    full_adder u_adder_5(.Cin(Input_second[2-:3]),.Cout(Cout[4]),.S(Input_third[2]));
    assign Input_third[1:0] = {Cin[3],Cin[4]};
    
    wire [2:0]    Input_forth;
    full_adder u_adder_6(.Cin({Input_third[3-:2],Cin[3]}),.Cout(Cout[5]),.S(Input_forth[2]));
    assign Input_forth[1:0] = {Input_third[0],Cin[5]};
    
    full_adder u_adder_7(.Cin(Input_forth[2-:3]),.Cout(C),.S(S));

endmodule