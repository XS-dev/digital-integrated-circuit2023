`timescale 1ns / 1ps
module multiplier_tb;
    reg [15:0]  InputX     ;
    reg [15:0]  InputY     ;
    wire [31:0] product,p_ref  ;

    initial
    begin
        InputX = 16'hFC18;
        InputY = 16'hCB;
        # 50 ;


        InputX = 16'h1;
        InputY = 16'hFFFF;
        # 50 ;


        InputX = 16'h0001;
        InputY = 16'h8000;
        # 50 ;

        InputX = 16'hAAAA;
        InputY = 16'hAAAA;
        # 50 ;


        InputX = 16'h7FFF;
        InputY = 16'h7FFF;
        # 50 ;

        $finish;
    end
    multiplier u_multiplier(
        .InputX  (InputX),
        .InputY  (InputY),
        .product (product)
    );

    multiplier_ref u_multiplier_ref(
        .InputX (InputX ),
        .InputY (InputY ),
        .p_ref  (p_ref )
    );

endmodule