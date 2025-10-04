module Reg_file 

#(parameter WIDTH = 16 , DEPTH = 8 , ADDR = 3 )


(
  input wire [ADDR-1 : 0] Address ,
  input wire [WIDTH-1:0] WrData,
  input wire             WrEn,
  input wire             RdEn,
  input wire             clk,
  input wire             rst,
  output reg [WIDTH-1:0] RdData
);

integer I;

reg [WIDTH-1:0] regArr [DEPTH-1:0] ;


always @(posedge clk or negedge rst ) begin

if(!rst) begin

RdData <= 0;

 
 for ( I = 0 ; I < DEPTH ; I=I+1 ) begin
    
    regArr [I] <=0 ;

 end
end 

else if (WrEn && !RdEn) 
     begin
      regArr[Address] <= WrData ;
     end
   else if (RdEn && !WrEn) 
     begin    
       RdData <= regArr[Address] ;
     end        
  end


    
endmodule