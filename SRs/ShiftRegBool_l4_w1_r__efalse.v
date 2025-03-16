
module ShiftRegBool_l4_w1_r__efalse (
  input clock,
  input [0:0] in,
  output [0:0] out);

  reg [0:0] shift_reg [0:3];

  always @(posedge clock)
  begin
    if (1'b0) begin

    end else if (1'b1) begin
      shift_reg[0] <= in;
      shift_reg[1] <= shift_reg[0];
      shift_reg[2] <= shift_reg[1];
      shift_reg[3] <= shift_reg[2];
    end
  end

  assign out = shift_reg[3];
endmodule

