// project : Ideal Vending Machine
module ideal_vending_machine_tb;
  //inputs
  reg clk;
  reg [1:0] in;
  reg rst;
  //output
  wire out;
  wire [1:0] change;
  
  ideal_vending_machine_1702 uut(
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out),
    .change(change)
  );
       
  initial begin
    //initialize inputs
    $dumpfile("ideal_vending_machine_1702.vcd");
    $dumpvars(0, ideal_vending_machine_tb);
    rst = 1;
    clk = 0;
    #6 rst = 0;
    in = 1;
    #11 in = 1;
    #16 in = 1;
    #25 $finish;
  end

  always #5 clk = ~clk;
endmodule
