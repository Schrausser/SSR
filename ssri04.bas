!!
     SSR Info 04: Sterngrössenvergleich
      © 2020-23 by Dietmar Schrausser
!!
c=255
GR.SCREEN sx,sy
mx=sx/2:my=sy/2
ed=sx/4        % // Anfagsvergrösserungsfaktor //
d=16           % // Abstand                    //
ds=696000      % // Sonne                      //
a0=2*(ds/ds)   % // Referenzdurchmesser        //
dx=1190000     % // Sirius                     //
a1=2*(dx/ds)
dx=1266200     % // Altair                     //
a2=2*(dx/ds)
dx=1643200     % // Vega                       //
a3=2*(dx/ds)
dx=6122200     % // Pollux                     //
a4=2*(dx/ds)
dx=30701000    % // Aldebaran                  //
a5=2*(dx/ds)
dx=54890000    % // Rigel                      //
a6=2*(dx/ds)
dx=142230000   % // Daneb                      //
a7=2*(dx/ds)
dx=264370000   % // Monocerotis                //
a8=2*(dx/ds)
dx=473080000   % // Antares                    //
a9=2*(dx/ds)
dx=617100000   % // Beteigeuze                 // 
a10=2*(dx/ds)
sw=1
swv=1

DO             % // Start                      //
 GR.CLS
 GR.TEXT.SETFONT "courier","",1
 GR.TEXT.ALIGN 3
 GR.TEXT.BOLD 1
 IF ed>0.3     % // Sonnensystem               //
  GR.COLOR c,c,c,c/2,1
  gr=a0*ed
  IF gr<1
   GR.COLOR c/2,c,c,c/2,1
   IF gr< 0.5
    GR.COLOR c/4,c,c,c/2,1
   ENDIF
   gr=1
  ENDIF
  GR.CIRCLE cl,mx,my-198+(0*d*ed),gr % // Sonne     //
  GR.COLOR 180,c,c,0,1               % // Merkur    //
  GR.CIRCLE cl,mx, my-198+(1*2.3*ed),ed*2*((2439*1.2)/ds)
  GR.COLOR 160,c,c,c,1               % // Venus     //
  GR.CIRCLE cl,mx, my-198+(1*2.4*ed),ed*2*(6052/ds)
  GR.COLOR c,60,60,c,1               % // Erde      //
  GR.CIRCLE cl,mx, my-198+(1*2.5*ed),ed*2*(6378/ds)
  GR.COLOR 100,c,c,c,1               % // Mond      //
  GR.CIRCLE cl,mx-2*(384000/ds)*ed, my-198+(1*2.5*ed),ed*2*((1738*2)/ds)
  IF ed>139
   GR.COLOR c/2,c,c,c,1
   GR.TEXT.BOLD 1
   GR.TEXT.ALIGN 1
   GR.TEXT.SIZE sx/37
   GR.TEXT.DRAW tx,mx+15, my-195+(1*2.5*ed) ,"Erde"
   GR.TEXT.DRAW tx,16, my-195+(1*2.5*ed) ,"Mond"
  ENDIF
  GR.COLOR c,c,150,150,1             % // Mars     //
  GR.CIRCLE cl,mx, my-198+(1*2.6*ed),ed*2*(3397/ds)
  GR.COLOR 120,c-20,170,0,1          % //Jupiter   //
  GR.CIRCLE cl,mx, my-198+(1*3*ed),ed*2*(71000/ds)
  GR.COLOR 70,c,c,c,1                % // Saturn   //
  GR.CIRCLE cl,mx, my-198+(1*3.6*ed),ed*2*(60000/ds)
  GR.LINE ln, mx-0.4*ed,my-198+(1*3.64*ed), mx+0.4*ed, my-198+(1*3.56*ed)
  GR.COLOR 100,30,30,200,1           % // Uranus   //
  GR.CIRCLE cl,mx, my-198+(1*4.1*ed),ed*2*(25400/ds)
  GR.COLOR 70,50,50,c,1              % // Neptun   //
  GR.CIRCLE cl,mx, my-198+(1*4.5*ed),ed*2*(24300/ds)
  IF ed<100
   GR.COLOR c/2,c,c,c,1
   GR.TEXT.SIZE (18/23)*ed
   GR.TEXT.DRAW tx, sx-20,my-198+(0.0*d*ed) ,"Sonne"
   GR.TEXT.SIZE (11/23)*ed
   GR.TEXT.DRAW tx, sx-20,my-198+(0.05*d*ed) ,"r=696000km"
  ENDIF
 ENDIF
 dsx=2.2       % // Abstandsfaktor //
 IF ed>0.2
  GR.COLOR c,c,c,c/2,1
  gr=a1*ed
  IF gr<1
   GR.COLOR c/2,c,c,c/2,1
   IF gr< 0.5
    GR.COLOR c/4,c,c,c/2,1
   ENDIF
   gr=1
  ENDIF
  GR.CIRCLE cl,mx,my-200+((1*d*ed)*((a1/a0)/dsx)),gr
  IF ed<115
   GR.COLOR c/2,c,c,c,1
   GR.TEXT.SIZE (18/18)*ed
   GR.TEXT.DRAW tx, sx-20,my-200+ ((1*d*ed)*((a1/a0)/dsx)) ,"Sirius"
   GR.TEXT.SIZE (11/18)*ed
   GR.TEXT.DRAW tx, sx-20,my-200+ ((1.09*d*ed)*((a1/a0)/dsx)) ,"r=1 190000km"
  ENDIF
 ENDIF
 dsx=2.15      % // Abstandsfaktor //
 GR.COLOR c,c,c,c/2,1
 gr=a2*ed
 IF gr<1
  GR.COLOR c/2,c,c,c/2,1
  IF gr< 0.5
   GR.COLOR c/4,c,c,c/2,1
  ENDIF
  gr=1
 ENDIF
 GR.CIRCLE cl,mx,my-200+((2*d*ed)*((a2/a0)/dsx)),gr
 IF ed<140
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/13)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((2*d*ed)*((a2/a0)/dsx)) ,"Altair"
  GR.TEXT.SIZE (11/13)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((2.13*d*ed)*((a2/a0)/dsx)) ,"r=1 266200km"
 ENDIF
 dsx=2.6      % // Abstandsfaktor //
 GR.COLOR c,c,c,c/2,1
 gr=a3*ed
 IF gr<1
  GR.COLOR c/2,c,c,c/2,1
  IF gr< 0.5
   GR.COLOR c/4,c,c,c/2,1
  ENDIF
  gr=1
 ENDIF
 GR.CIRCLE cl,mx,my-200+((3*d*ed)*((a3/a0)/dsx)),gr
 IF ed<180
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/9)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((3*d*ed)*((a3/a0)/dsx)) ,"Vega"
  GR.TEXT.SIZE (11/9)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((3.13*d*ed)*((a3/a0)/dsx)) ,"r=1 643200km"
 ENDIF
 dsx=7.2      % // Abstandsfaktor //
 GR.COLOR c,c,150,0,1
 IF ed<30
  GR.CIRCLE cl,mx,my-200+((4*d*ed)*((a4/a0)/dsx)),a4*ed
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/6)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((4*d*ed)*((a4/a0)/dsx)) ,"Pollux"
  GR.TEXT.SIZE (11/6)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((4.1*d*ed)*((a4/a0)/dsx)) ,"r=6 122000km"
 ENDIF
 dsx=17.5      % // Abstandsfaktor //
 GR.COLOR c-20,c,0,0,1
 IF ed<40
  GR.CIRCLE cl,mx,my-200+((5*d*ed)*((a5/a0)/dsx)),a5*ed
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/2.6)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((5*d*ed)*((a5/a0)/dsx)) ,"Aldebaran"
  GR.TEXT.SIZE (11/2.6)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((5.15*d*ed)*((a5/a0)/dsx)) ,"r=30 701000km"
 ENDIF
 dsx=15.2      % // Abstandsfaktor //
 GR.COLOR 255,20,20,c,1
 IF ed<60
  GR.CIRCLE cl,mx,my-200+((6*d*ed)*((a6/a0)/dsx)),a6*ed
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/1)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((6*d*ed)*((a6/a0)/dsx)) ,"Rigel"
  GR.TEXT.SIZE (11/1)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((6.24*d*ed)*((a6/a0)/dsx)) ,"r=54 890000km"
 ENDIF
 dsx=20        % // Abstandsfaktor //
 GR.COLOR 150,20,20,c,1
 IF ed<120
  GR.CIRCLE cl,mx,my-200+((7*d*ed)*((a7/a0)/dsx)),a7*ed
  IF ed<120
   GR.COLOR c/2,c,c,c,1
   GR.TEXT.SIZE (18/0.4)*ed
   GR.TEXT.DRAW tx, sx-20,my-200+ ((7*d*ed)*((a7/a0)/dsx)) ,"Daneb"
   GR.TEXT.SIZE (11/0.4)*ed
   GR.TEXT.DRAW tx, sx-20,my-200+ ((7.24*d*ed)*((a7/a0)/dsx)) ,"r=143 230000km"
  ENDIF
 ENDIF 
 dsx=20        % // Abstandsfaktor //
 GR.COLOR 35,c,c,c,1
 IF ed<150
  GR.CIRCLE cl,mx,my-200+((8*d*ed)*((a8/a0)/dsx)),a8*ed
  GR.COLOR 200,0,0,0,1
  GR.CIRCLE cl,mx,my-200+((8*d*ed)*((a8/a0)/dsx)),(a8*ed)/2.1
  GR.COLOR 85,c,0,0,1
  GR.CIRCLE cl,mx,my-200+((8*d*ed)*((a8/a0)/dsx)),(a8*ed)/7
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/0.25)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((8*d*ed)*((a8/a0)/dsx)) ,"Monocerotis"
  GR.TEXT.SIZE (11/0.25)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((8.24*d*ed)*((a8/a0)/dsx)) ,"r=264 370000km"
 ENDIF 
 dsx=20.5      % // Abstandsfaktor //
 GR.COLOR 120,c,150,0,1
 IF ed<180
  GR.CIRCLE cl,mx,my-200+((9*d*ed)*((a9/a0)/dsx)),a9*ed
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/0.1)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((9*d*ed)*((a9/a0)/dsx)) ,"Antares"
  GR.TEXT.SIZE (11/0.1)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((9.35*d*ed)*((a9/a0)/dsx)) ,"r=473 080000km"
 ENDIF 
 dsx=17.2      % // Abstandsfaktor //
 GR.COLOR 100,c,0,0,1
 IF ed<200
  GR.CIRCLE cl,mx,my-200+((10*d*ed)*((a10/a0)/dsx)),a10*ed
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/0.05)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((10*d*ed)*((a10/a0)/dsx)) ,"Beteigeuze"
  GR.TEXT.SIZE (11/0.05)*ed
  GR.TEXT.DRAW tx, sx-20,my-200+ ((10.40*d*ed)*((a10/a0)/dsx)) ,"r=617 100000km"
 ENDIF 
 ln=(ds/((ed/(sx/4))))*2 % // km //
 GR.COLOR c-55,c/2,c/2,c/2,1
 GR.TEXT.BOLD 1
 GR.TEXT.ALIGN 3
 GR.TEXT.SIZE sx/35
 lna=ln/149597870
 IF lna/2<1
  GR.TEXT.DRAW tx,mx,sy-5,FORMAT$("0.###",lna/2)+"AE"
 ELSE
  GR.TEXT.DRAW tx,mx,sy-5,FORMAT$("###.###",lna/2)+"AE"
 ENDIF
 GR.TEXT.ALIGN 3
 GR.TEXT.DRAW tx,mx,sy-30,FORMAT$("### ###### ######",ln/2)+"km"
 GR.LINE ln, 1,sy-25,mx-1,sy-25
 GR.LINE ln, 1,sy-13,1,sy-30
 GR.LINE ln, mx-1,sy-13,mx-1,sy-30
 GR.LINE ln, mx/2,sy-13,mx/2,sy-30
 GR.TEXT.ALIGN 1
 GR.TEXT.BOLD 1
 GR.TEXT.SIZE sx/25
 GR.COLOR cc-55, c/2, c/2, c/2, 1
 GR.TEXT.DRAW tx,20,40,CHR$(8560)+" Größenverhältnisse in der Galaxie:"
 GR.LINE ln, 1,50,sx-1,50
 GR.RENDER
 ve=1.01     % // Geschwindigkeit //
 IF swv=-1   % // Vollautomatik   //
  IF sw=1    % // Vorwärts        //
   ed=ed/ve
   IF ed<sx/9000:PAUSE 3000:sw=-1:ENDIF
  ENDIF
  IF sw=-1   % // Rückwärts       //
   ed=ed*ve
   IF ed>sx/4:PAUSE 3000:sw=1:ENDIF
  ENDIF
 ENDIF
 GR.TOUCH tc,tx,ty
 IF tc
  IF swv=1
   IF tx>mx&ty>my&ed<sx/4:ed=ed*ve:ENDIF
   IF tx>mx&ty<my&ed>sx/9000:ed=ed/ve:ENDIF
  ENDIF
  IF tx<mx:swv=swv*-1: ENDIF % // Umschaltung: Manuell/Vollauto. //
 ENDIF
 GR.TOUCH2 t2,tx,ty
 IF t2
  GOTO END04
 ENDIF
UNTIL 0
END04:
t2=0
PAUSE 100
! // END //
! //
