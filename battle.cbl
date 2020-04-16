000000 IDENTIFICATION DIVISION.
000100     PROGRAM-ID. BATTLE.
000200 DATA DIVISION.
000300     WORKING-STORAGE SECTION.
000400     01 BORAD
000410        05 ROWS OCCURS 10 TIMES.
000420           10 COLLUMS PIC X OCCURS 10 TIMES.
000430*          THIS IS THE PLAYER BORAD.
000440     01 SHIPS
000450         05 ROWS OCCURS 10 TIMES.
000460            10 COLLUMS PIC X OCCURS 10 TIMES.
000470*           THIS IS THE PLAYERS SHIPS.
000480     01 BORAD-COM
000490        05 ROWS OCCURS 10 TIMES.
000500           10 COLLUMS PIC X OCCURS 10 TIMES.
000510*          THIS IS THE COMPUTERS BOARD.
000520     01 SHIPS-COM
000530        05 ROWS OCCURS 10 TIMES.
000540           10 COLLUMS PIC X OCCURS 10 TIMES.
000550*          THIS IS THE COMPUTERS SHIPS.
000560     88 HIT PIC X VALUE "X".
000570     88 MISS PIC X VALUE "*".
000600 PROCEDURE DIVISION.
000700     PARA-MAIN.
000725         PERFORM PARA-INIT 1 TIMES.
000750*        ASK TO SELCET SHIPS.
000800         DISPLAY "SELECT WHERE YOU WANT YOUR CARRIER".
000900         PERFORM PARA-SHIP-SELECT 5 TIMES.
001000         DISPLAY "SELECT WHERE YOU WANT YOUR BATTLESHIP".
001100         PERFORM PARA-SHIP-SELECT 4 TIMES.
001200         DISPLAY "SELECT WHERE YOU WANT YOUR CRUISER".
001300         PERFORM PARA-SHIP-SELECT 3 TIMES.
001400         DISPLAY "SELECT WHERE YOU WANT YOUR SUBMARINE".
001500         PERFORM PARA-SHIP-SELECT 3 TIMES.
001600         DISPLAY "SELECT WHERE YOU WANT YOUR DESTROYER".
001700         PERFORM PARA-SHIP-SELECT 2 TIMES.

005000    PARA-SHIP-SELECT.
005100        

007000    PARA-INIT.
007100        PERFORM VARYING I FROM 1 BY 1 UNTIL I=11
007200           PERFORM VARYING J FROM 1 BY 1 UNTIL J=11
007300              MOVE "*" TO COLLUMS(I,J) OF BORAD
007400           END-PERFORM
007500        END-PERFORM.
007600        PERFORM VARYING I FROM 1 BY 1 UNTIL 1=11
007700           PERFORM VARYING J FROM 1 BY 1 UNTIL J=11
007800              MOVE "*" TO COLLUMS(I,J) OF SHIPS
007900           END-PERFORM
008000        END-PERFORM.
008100        PERFORM VARYING I FROM 1 BY 1 UNTIL I=11
008200           PERFORM VARYING J FROM 1 BY 1 UNTIL J=11
008300              MOVE "*" TO COLLUMS(I,J) OF BORAD-COM
008400           END-PERFORM
008500        END-PERFORM.
008600        PERFORM VARYING I FROM 1 BY 1 UNTIL I=11
008700           PERFORM VARYING J FROM 1 BY 1 UNTIL J=11
008800              MOVE "*" TO COLLUMS(I,J) OF SHIPS-COM
008900           END-PERFORM
009000        END-PERFORM.
