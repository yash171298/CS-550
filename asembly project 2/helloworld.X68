*-----------------------------------------------------------
* Title      :Hello World
* Written by :Yash Avinash Patole
* Date       :0/12/2021
* Description:Writing assembly program for hello world
*-----------------------------------------------------------
  START: ORG    $1000  ; first instruction of program

    LEA MESSAGE,A1
    MOVE.B #14,D0
    TRAP #15
    
    MOVE.B #9,D0
    TRAP #15


CR EQU $0D 
LF EQU $0A
MESSAGE DC.B 'HELLO WORLD',CR,LF
       
        DC.B '',0
    END    START    
