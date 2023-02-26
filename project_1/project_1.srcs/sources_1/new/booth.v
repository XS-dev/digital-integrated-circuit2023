module booth (
    input  wire [15:0] x ,//乘数x
    input  wire [2: 0] y ,//来自乘数y的控制位
    output wire        addsignal,//加一标志位
    output wire [16:0] partial_product //部分积
);

    wire x_add1 = (~y[2]&~y[1]&y[0])|(~y[2]&y[1]&~y[0]);
    wire x_add2 = (~y[2]&y[1]&y[0]);
    wire x_sub2 = (y[2]&~y[1]&~y[0]);
    wire x_sub1 = (y[2]&~y[1]&y[0])|(y[2]&y[1]&~y[0]);

    assign partial_product = {17{x_add1}} & {x[15],x}
                            |{17{x_add2}} & {x[15:0],1'b0}
                            |{17{x_sub1}} & {~x[15],~x} 
                            |{17{x_sub2}} & {~x[15:0],1'b1};
    assign addsignal = x_sub1|x_sub2;
endmodule