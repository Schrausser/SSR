!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
               Info Subroutine ssr_potenz.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2025 by Dietmar Gerald Schrausser
!!
c=cc
a_07=sx/54
h_07=sy/135 %15
s1_07=sy/15 %140
s2_07=sy/38 %53
sw_07=1
GR.COLOR 200,150,150,150,1
GR.TEXT.BOLD 1
GR.TEXT.ALIGN 1
DO
 GR.CLS
 GR.TEXT.SETFONT "courier","",1
 GR.TEXT.SIZE txzi
 GR.TEXT.DRAW tx,a_07,sy/77,"i Zehnerpotenzen:"
 GR.TEXT.SIZE txzi2
 GR.LINE ln, 0,sy/42.6,sx,sy/42.6
 GR.TEXT.DRAW tx, a_07,s1_07,"1000"
 IF sw_07=-1
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*1), "10   Thousand k (Kilo)"
 ELSE
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*1), "10   Tausend k (Kilo)"
 ENDIF
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*1)-h_07, "  3"
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*2),"1 000000"
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*3), "10   Million M (Mega)"
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*3)-h_07, "  6"
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*4),"1000 000000"
 IF sw_07=-1
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*5), "10   Billion G (Giga)"
 ELSE
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*5), "10   Milliarde G (Giga)"
 ENDIF
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*5)-h_07, "  9"
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*6),"1 000000 000000"
 IF sw_07=-1
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*7), "10   Trillion T (Tera)"
 ELSE
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*7), "10   Billion T (Tera)"
 ENDIF
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*7)-h_07, "  12
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*8),"1000 000000 000000"
 IF sw_07=-1
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*9), "10   Quadrillion P (Peta)"
 ELSE
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*9), "10   Billiarde P (Peta)"
 ENDIF
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*9)-h_07, "  15
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*10),"1 000000 000000 000000"
 IF sw_07=-1
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*11), "10   E (Exa)"
 ELSE
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*11), "10   Trillion E (Exa)"
 ENDIF
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*11)-h_07, "  18
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*12),"1000 000000 000000 000000"
 IF sw_07=-1
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*13), "10   Z (Zetta)"
 ELSE
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*13), "10   Trilliarde Z (Zetta)"
 ENDIF
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*13)-h_07, "  21
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*14),"1 000000 000000 000000 000000"
 IF sw_07=-1
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*15), "10   Y (Yotta)"
 ELSE
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*15), "10   Quadrillion Y (Yotta)"
 ENDIF
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*15)-h_07, "  24
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*16),"1 000000 000000 000000 000000 000000"
 IF sw_07=-1
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*17), "10  Q (Quetta) "
 ELSE
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*17), "10   Quintillion Q (Quetta)"
 ENDIF
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*17)-h_07, "  30
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*18),"1 M M M M M M"
 IF sw_07=-1
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*19), "10      "
 ELSE
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*19), "10   Sextillion"
 ENDIF
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*19)-h_07, "  36
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*20)-h_07, "     :
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*21),"1 M M M M M M M M M M"
 IF sw_07=-1
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*22), "10      "
 ELSE
  GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*22), "10   Dezillion"
 ENDIF
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*22)-h_07, "  60
 GR.TEXT.DRAW tx, a_07,(s1_07+s2_07*24)-h_07, "     :
 GR.RENDER
 DO
  GR.TOUCH2 tc2,tx,ty
  IF tc2:GOTO end_07:ENDIF
  GR.TOUCH tc,tx,ty
 UNTIL tc
 PAUSE 100
 sw_07=sw_07*-1
UNTIL 0
END_07:
tc2=0
GR.TEXT.BOLD 0
PAUSE 100
! % END %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
