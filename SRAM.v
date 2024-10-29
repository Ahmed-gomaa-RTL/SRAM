// FILE NAME: SRAM.v
// TYPE: module
// AUTHOR: Ahmed Gomaa
// AUTHOR’S EMAIL:ahmed.gomaa.work150@gmail.com
//---------------------------------------------------------------------
// PURPOSE: Digital Design Project
//---------------------------------------------------------------------
// KEYWORDS: SRAM
//---------------------------------------------------------------------
// Copyright 2024, Ahmed Gomaa, All rights reserved.
//---------------------------------------------------------------------

////////////////////////////////////////////////////////
//////////////// Module Difinition ///////////////////// 
////////////////////////////////////////////////////////

module SRAM ( 
    input     wire                             CLK   ,     // clock domain
    input     wire        [ 3 : 0  ]           ADDR  ,     // address
    input     wire        [ 7  : 0 ]           WDATA ,     // write data
    input     wire                             WREN  ,     // write enable
    output    reg         [ 7  : 0 ]           RDATA       // read data
);


reg [ 7 : 0 ] memory [ 0 : 15 ] ;

always @ ( posedge CLK ) 
begin
    if ( WREN == 1 )
    begin
        memory [ ADDR ] <= WDATA ;
    end

    else
    begin
        RDATA <= memory [ ADDR ] ;
    end
end


endmodule

