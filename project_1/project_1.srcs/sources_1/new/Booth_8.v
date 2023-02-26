module Booth_8 (
    input  wire [15:0] x        ,//乘数x
    input  wire [15:0] y        ,//乘数y
    output wire [7:0]  addsignal,//8位每一位的加一标志位
    output wire [31:0] xout0    ,
    output wire [31:0] xout1    ,
    output wire [31:0] xout2    ,
    output wire [31:0] xout3    ,
    output wire [31:0] xout4    ,
    output wire [31:0] xout5    ,
    output wire [31:0] xout6    ,
    output wire [31:0] xout7      
);

wire [31:0] xout[7:0];
assign xout0 = xout[0];
assign xout1 = xout[1];
assign xout2 = xout[2];
assign xout3 = xout[3];
assign xout4 = xout[4];
assign xout5 = xout[5];
assign xout6 = xout[6];
assign xout7 = xout[7];

wire [16:0] y_control = {y,1'b0};
wire [16:0] xout_in[7:0];
genvar temp;
generate
    for(temp=0; temp<8; temp=temp+1)
    begin:booth
        booth u_booth(
        	.x                  (x),
            .y                  (y_control[(temp+1)*2-:3]),
            .addsignal          (addsignal[temp] ),
            .partial_product    (xout_in[temp])
        );
        // 低位默认是0，遇到负数取反
        assign xout[temp]={{(15-temp*2){xout_in[temp][16]}},
                            xout_in[temp],
                            {(temp*2){addsignal[temp]}}};
    end
endgenerate
endmodule