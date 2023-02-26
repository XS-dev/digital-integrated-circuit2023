module full_adder (
    input  wire  [2:0] Cin ,
    output wire        Cout,
    output wire        S    
);
    assign S = (Cin[0]&~Cin[1]&~Cin[2])|(~Cin[0]&Cin[1]&~Cin[2])|(~Cin[0]&~Cin[1]&Cin[2])|(Cin[0]&Cin[1]&Cin[2]);
    assign Cout = Cin[0]&Cin[1]|Cin[0]&Cin[2]|Cin[1]&Cin[2];
endmodule