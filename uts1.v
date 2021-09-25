`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:58 01/25/2018 
// Design Name: 
// Module Name:    uts1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module uts1(
    input clk,ale,rmuadd,ps1,
    output rmudata
    );

output reg [7:0] rmudata;
always @ ( posedge clk or negedge reset)
begin
  if (!reset) 
    rmudata <= 8'b0;
  else  
     rmudata[7 :0] <= {rmudata[6:0],rmuadd};
end

endmodule
