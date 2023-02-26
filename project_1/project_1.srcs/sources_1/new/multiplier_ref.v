module multiplier_ref(InputX, InputY, p_ref);

input signed[15:0] InputX, InputY;
output signed[31:0] p_ref;
assign p_ref = InputX*InputY;

endmodule