! // SSR Info 08: Erde-Mond-Sonne Distanz
! // Dietmar Schrausser 2023
! //
GR.SCREEN sx,sy
mx=sx/2:my=sy/2
st0_08:
x_08=(1/sy)*17500000   % // 8000 Länge  //
y_08=sy/3              % // 700 y unten //
d_08=sy/10 
ae_08=1
DO
 sz=630.0/x_08
 szv=602/x_08
 szm=173.8/x_08
 sz1=66900.0/x_08
 km=1.4959787*10^8*ae_08
 GR.CLS
 GR.TEXT.SETFONT "courier","",1
 GR.TEXT.DRAW tx, sx/3,my-sy/70,FORMAT$("###.####",ae_08)+"AE"
 GR.TEXT.DRAW tx, sx/3,my+sy/70,FORMAT$("###### ###### ######",km)+"km"
 GR.COLOR 255,0,0,255,1
 dm=38400.0/x_08
 GR.CIRCLE cl, mx,my+d_08+dm+y_08,sz
 GR.COLOR 255/4,255,255,255,1
 GR.CIRCLE cl ,mx,my+d_08+y_08,szm
 GR.LINE ln, mx,my+d_08+dm+y_08,mx+szm,my+d_08+y_08
 GR.LINE ln, mx,my+d_08+dm+y_08,mx-szm,my+d_08+y_08
 ds=1.4959787*10^7/x_08
 GR.COLOR 255,255,255,0,1
 GR.CIRCLE cl, mx,my-(ds-(dm+d_08))+y_08,sz1
 GR.COLOR 255/4,255,255,0,1
 GR.LINE ln, mx+sz1,my-(ds-(dm+d_08))+y_08,mx,my+d_08+dm+y_08
 GR.LINE ln, mx-sz1,my-(ds-(dm+d_08))+y_08,mx,my+d_08+dm+y_08
 GR.TEXT.ALIGN 1
 GR.TEXT.BOLD 0
 GR.TEXT.SIZE sx/25
 GR.COLOR 200,255/2,255/2,255/2,1
 GR.TEXT.DRAW tx,20,40,CHR$(8560)+" Erde-Mond-Sonne Distanz:"
 GR.LINE ln, 1,50,sx-1,50
 GR.TEXT.ALIGN 3
 GR.TEXT.SIZE sx/40
 GR.LINE ln, sx/8,sy/13,sx/8,sy-sy/16    % // Skala //
 GR.LINE ln, sx/8,sy/13,sx/5,sy/13
 GR.LINE ln, sx/8,sy-sy/16,sx/5,sy-sy/16
 GR.RENDER
 GR.TOUCH tc,tx,ty
 IF tc
  IF ty>sy*(3/4): y_08=y_08+sy/100:ENDIF
  IF ty<sy/4: y_08=y_08-sy/100:ENDIF
  IF ty>sy/4 & ty<sy*(3/4)
   IF tx>mx: x_08=x_08*1.01:ae_08=ae_08*1.01:ENDIF
   IF tx<mx: x_08=x_08/1.01:ae_08=ae_08/1.01:ENDIF
   IF x_08<=0 THEN x_08=0
  ENDIF
 ENDIF
 GR.TOUCH2 tc2,tx,ty
 IF tc2
  GOTO END08 
 ENDIF
UNTIL 0
END08:
tc2=0
PAUSE100
! // END //
! //
