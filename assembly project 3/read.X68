*-----------------------------------------------------------
* Title      :Read file with 68k assembly
* Written by :Yash avinash Patole
* Date       :04/30/2021
* Description:Assembly 3 project qiestion 1 reading a file using assembly 68k
*-----------------------------------------------------------
   
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    lea  filename, a1
    move #51, d0
    trap #15
    
    move.l #filesize, d2
    lea buffer, a1
    move #53, d0
	trap #15
	
    SIMHALT             ; halt simulator
    org $2000
    
* Put variables and constants here
filename    dc.b    'yash.txt',0
buffer      ds.b    80
filesize    dc.b    80
    
    END    START        ; last line of source
    
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
