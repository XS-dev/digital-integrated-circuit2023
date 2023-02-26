module half_adder (
    input  wire [1:0]  Cin ,
    output wire        Cout,
    output wire        S    
);
    assign S    = (Cin[0]&~Cin[1])|(~Cin[0]&Cin[1]);
    assign Cout = Cin[0]&Cin[1];
endmodule