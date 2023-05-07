!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                    SONNENSYSTEMROTATION
                   + semper ubique sum +

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
           © 2020-23 by Dietmar Gerald Schrausser
!!
_name$="SSR"
_ver$="v3.6.9"
INCLUDE strg.inc
SENSORS.OPEN 3          %
SENSORS.OPEN 8          %
GR.OPEN 255,0,0,0,0,-1  %
GR.SCREEN sx,sy
GOSUB global            % Globale Variablen
c_=1079252849           % km/h Lichtgeschwindigkeit
au_=1.4959787*10^11     % AE in m
Lj_=63241.07            % Lj in AE
pc_=648000/PI()         % pc aus AE
pcl_=3.261564           % pc in Lj
pcm_=3.0856776*10^16    % pc in m
!
GR.BITMAP.CREATE scrs, sx,sy
pat$="../../EIGENEDATEIEN/SSR/scrs/"
!
GOSUB einstellungen     % ini
GOSUB mnt               % Monatslängen
GOSUB dialog            % Hauptmenü
t37=-1                  % sw Grössenvergleich...
!
st0: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DO 
 GR.SET.STROKE 2
 IF s07=1
  GOSUB zeit              % Aktuelle Zeit
  !
  ! % Schaltjahr %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  sj=0
  IF Yr/4=INT(Yr/4) THEN sj=1
  sj=1
  GOSUB tagnr
  ! % Sommerzeit %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  sz$="":sz=0
  IF nt>=mz+29 & nt<or+24
   sz$="MSZ":sz=1
  ENDIF
  !
  tg=nt+1                 % Tagnummer
  tg=tg+10                %
  i=((tg/366)*360)-135    % Tagposition
  j=0                     % Tagzaehler
  jx=yr                   % Jahr
  !
 ENDIF
 GR.SCREEN sx,sy         % Bildschirmformat
 mx=sx/2:my=sy/2
 IF sx>sy
  swbs=0                 % Schalter Breitformat
 ELSE
  swbs=1                 % Schalter Hochformat
 ENDIF
 !
 mnc=min/60              % Minutentakt
 ae=(sx/2.9)/ed     %%%% % Faktor ed zu AE
 aed=ae
 IF s07=1 THEN v=0       % bei Echtzeit
 i=i+v                   % Tagposition
 nt=nt+v                 % Tagnummer
 ! 
 GR.CLS
 GR.TEXT.SETFONT "courier","",1
 GR.TEXT.SIZE txz1
 IF u00=1
  ! % Oortsche Wolke %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  d=100000           %AE
  gr1=ed*d
  IF u10=1 & ed<50000 & AE<10000000 %
   GR.COLOR 45,60,60,60,1
   GR.CIRCLE sn,mx,my,ed*d
   IF AE<=45000
    GR.COLOR cc,0,0,0,1
    GR.CIRCLE sn,mx,my,ed*d/2
   ENDIF
   IF AE>30&AE<45000
    GR.COLOR 20,60,60,60,1
    GR.CIRCLE sn,mx,my,ed*d/2
   ENDIF
   IF AE>50&AE<45000
    GR.COLOR 15,60,60,60,1
    GR.CIRCLE sn,mx,my,ed*d/2
   ENDIF
   IF u11=1&ae>30000&ae<3000000
    GR.TEXT.ALIGN 2
    GR.COLOR cc,60,60,60,1
    GR.TEXT.DRAW txt,mx,my-gr1-c10,"Oortsche Wolke"
   ENDIF
  ENDIF
  ! % Hills-Wolke, Innere Kometenwolke %%%%%%%%%%%%%%%%%%%
  d=1500                    %AE
  gr1=ed*d
  IF u15=1 & ed<5000 & AE<1000000 %
   GR.COLOR 35,20,30,30,1
   GR.CIRCLE sn,mx,my,ed*d*c145
   IF 1 
    GR.COLOR cc,10,10,10,1
    GR.CIRCLE sn,mx,my,ed*d/4
   ENDIF
   IF u11=1&ae>300&ae<30000
    GR.TEXT.ALIGN 2
    GR.COLOR cc,60,60,60,1
    GR.TEXT.DRAW txt,mx,my-gr1-c10,"Hills-Wolke, Innere Kometenwolke"
   ENDIF
  ENDIF
  ! % Heliosphäre %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  d=150
  gr1=ed*d
  IF u14=1 & ed<500 & AE<100000 %
   GR.COLOR 178,20,10,0,1
   GR.CIRCLE sn,mx,my,ed*(d/1.3)
   GR.COLOR 130,20,10,0,1
   GR.CIRCLE sn,mx,my,ed*(d/1.1)
   GR.COLOR 115,20,10,0,1
   GR.CIRCLE sn,mx,my,ed*d
   IF u11=1&ae>40&ae<2700
    GR.TEXT.ALIGN 2
    GR.COLOR 230,70,60,0,1
    GR.TEXT.DRAW txt,mx,my-gr1-c10,"Heliosphäre"
   ENDIF
  ENDIF
  ! % Kuipergürtel %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  d=45
  gr1=ed*d*1.42
  IF u13=1 & ed<500 & AE<100000 %
   GR.COLOR 30,60,60,100,1
   GR.CIRCLE sn,mx,my,ed*d*1.8
   IF u14=1
    GR.COLOR 200,20,10,0,1
   ELSE
    GR.COLOR cc,0,0,0,1
   ENDIF
   GR.CIRCLE sn,mx,my,ed*d
   IF u11=1&ae>20&ae<700
    GR.TEXT.ALIGN 2
    GR.COLOR 200,60,60,100,1
    GR.TEXT.DRAW txt,mx,my-gr1-c10,"Kuipergürtel"
   ENDIF
  ENDIF
  ! % Asteroidengürtel %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  d=3
  gr1=ed*4.8
  IF u04=1 & ed>5 & AE<10000 %
   GR.COLOR 30,100,100,60,1
   GR.CIRCLE sn,mx,my,ed*d*1.8
   IF u14=1 
    GR.COLOR cc,20,10,0,1
   ELSE
    GR.COLOR cc,0,0,0,1
   ENDIF
   GR.CIRCLE sn,mx,my,ed*d*1.42
   IF u11=1&ae>1.5&ae<45
    GR.TEXT.ALIGN 2
    GR.COLOR 150,100,100,60,1
    GR.TEXT.DRAW txt,mx,my-gr1-c10,"Asteroidengürtel"
   ENDIF
  ENDIF
 ENDIF
 ! % Jahreszeiten %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF s01=1 
  GR.COLOR 35,cc,cc,0,1
  GR.LINE ln,0,my,sx,my
  GR.LINE ln,mx,0,mx,sy
  ! %Namen
  stl=431
  ac=360/24
  lt=sy/4.8125           % // Distanz //
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz4      %12
  GR.COLOR 40,cc,cc,0,1
  GR.ROTATE.START stl+ac,mx,my
  GR.TEXT.DRAW tx,mx+c02,my-lt,"W"
  GR.ROTATE.END
  GR.ROTATE.START stl+7*ac,mx,my
  GR.TEXT.DRAW tx,mx+c02,my-lt,"H"
  GR.ROTATE.END
  GR.ROTATE.START stl+13*ac,mx,my
  GR.TEXT.DRAW tx,mx+c02,my-lt,"S"
  GR.ROTATE.END
  GR.ROTATE.START stl+19*ac,mx,my
  GR.TEXT.DRAW tx,mx+c02,my-lt,"F"
  GR.ROTATE.END
 ENDIF
 ! % Himmelsgewölbe %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF t34=1 & ae>=Lj_
  GR.COLOR 35,cc/2,cc/2,cc/2,0
  FOR hg=0 TO 90 STEP 10
   GR.CIRCLE cl,mx,my,mx*SIN(TORADIANS(hg))
  NEXT
  FOR w=1 TO 24
   GR.ROTATE.START w/24*360,mx,my
   GR.LINE ln, 0,my,mx-sx/108,my
   GR.ROTATE.END
  NEXT
 ENDIF
 ! % Rektaszension %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF swbs % nur im Hochformat
  IF t31=1 & ae>=Lj_
   GR.TEXT.ALIGN 3
   GR.TEXT.SIZE txz1 %9
   GR.COLOR 80, cc,cc,0, 0
   IF s08=1:cor=0:ELSE:cor=1.1:ENDIF
   FOR hr=0 TO 24
    GR.ROTATE.START ((hr/24)*360)-cor,mx,my
    IF hr>0
     GR.TEXT.DRAW tx,mx,sx*1.42,INT$(24-hr)
    ENDIF
    GR.ROTATE.END
   NEXT
   dsn=1
   IF t39=1 % Deklination %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    dg_x=dg_:dm_x=dm_:ds_x=ds_
    GOSUB dekl
    GR.COLOR 80, cc,cc,0, 1
    GR.TEXT.SIZE txz5
    GR.TEXT.ALIGN 2
    GR.TEXT.DRAW tx,mx,sy/20,dkl$
    GR.COLOR 80, cc,cc,0, 0
   ENDIF 
   ! % Positionszeiger %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   m_1=m_/60
   s_2=s_/6000
   pos=h_+m_1+s_1
   pos1=-(pos/24)*360
   GR.ROTATE.START pos1,mx,my
   GR.LINE ln, mx,my,mx,my+(my/1.96)*dsn
   GR.CIRCLE cl,mx,my+(my/1.93)*dsn,sy/115.5
   GR.ROTATE.END
   GR.COLOR 80, cc,cc,0, 1
   GR.TEXT.SIZE txz5
   GR.TEXT.ALIGN 2
   GR.TEXT.DRAW tx,mx,dtx2,rk$
  ENDIF
 ENDIF
 ! % Monate %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF s02=1 
  FOR s=1 TO 12
   GR.ROTATE.START 180-((s/12)*360)-((10/366)*360),mx,my
   GR.COLOR 8, cc, cc,cc, 1
   GR.LINE ln,-sx,my,sx*2,my
   GR.ROTATE.END
  NEXT
  ! % Monatsnummern %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  stl=410
  ac=360/24
  lt=sy/6.6         % // Distanz //
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz4 
  GR.COLOR 40,cc,cc,cc,1
  GR.ROTATE.START stl+ac,mx,my
  GR.TEXT.DRAW tx,mx,my-lt,"1"
  GR.ROTATE.END
  GR.ROTATE.START stl+3*ac,mx,my
  GR.TEXT.DRAW tx,mx,my-lt,"12"
  GR.ROTATE.END
  GR.ROTATE.START stl+5*ac,mx,my
  GR.TEXT.DRAW tx,mx,my-lt,"11"
  GR.ROTATE.END
  GR.ROTATE.START stl+7*ac,mx,my
  GR.TEXT.DRAW tx,mx,my-lt,"10"
  GR.ROTATE.END
  GR.ROTATE.START stl+9*ac,mx,my
  GR.TEXT.DRAW tx,mx,my-lt,"9"
  GR.ROTATE.END
  GR.ROTATE.START stl+11*ac,mx,my
  GR.TEXT.DRAW tx,mx,my-lt,"8"
  GR.ROTATE.END
  GR.ROTATE.START stl+13*ac,mx,my
  GR.TEXT.DRAW tx,mx,my-lt,"7"
  GR.ROTATE.END
  GR.ROTATE.START stl+15*ac,mx,my
  GR.TEXT.DRAW tx,mx,my-lt,"6"
  GR.ROTATE.END
  GR.ROTATE.START stl+17*ac,mx,my
  GR.TEXT.DRAW tx,mx,my-lt,"5"
  GR.ROTATE.END
  GR.ROTATE.START stl+19*ac,mx,my
  GR.TEXT.DRAW tx,mx,my-lt,"4"
  GR.ROTATE.END
  GR.ROTATE.START stl+21*ac,mx,my
  GR.TEXT.DRAW tx,mx,my-lt,"3"
  GR.ROTATE.END
  GR.ROTATE.START stl+23*ac,mx,my
  GR.TEXT.DRAW tx,mx,my-lt,"2"
  GR.ROTATE.END
 ENDIF
 ! % Sternbilder/Tierkreis %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF swbs % nur im Hochformat
  IF t99=1 % & ae>=Lj_
   GR.COLOR 10, cc,cc,0, 0
   IF ae/Lj_<=800
    FOR s=1 TO 12
     GR.ROTATE.START 180-((s/12)*360),mx,my
     GR.LINE ln,-sx,my,sx*2,my
     GR.ROTATE.END
    NEXT
   ENDIF
   IF ae/Lj_<=2000
    % Tierkreissymbole %%%%%%%%%%%%%%%%%%
    GR.COLOR 100,cc,cc,0,1
    GR.TEXT.ALIGN 2
    GR.TEXT.SIZE txz1*1.5 %15
    GR.ROTATE.START 16,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,CHR$(9804)
    GR.ROTATE.END
    GR.ROTATE.START 46,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,CHR$(9803)
    GR.ROTATE.END
    GR.ROTATE.START 75,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,CHR$(9802)
    GR.ROTATE.END
    GR.ROTATE.START 105,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,CHR$(9801)
    GR.ROTATE.END
    GR.ROTATE.START 135,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,CHR$(9800)
    GR.ROTATE.END
    GR.ROTATE.START 165,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,CHR$(9811)
    GR.ROTATE.END
    GR.ROTATE.START 196,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,CHR$(9810)
    GR.ROTATE.END
    GR.ROTATE.START 226,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,CHR$(9809)
    GR.ROTATE.END
    GR.ROTATE.START 256,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,CHR$(9808)
    GR.ROTATE.END
    GR.ROTATE.START 286,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,CHR$(9807)
    GR.ROTATE.END
    GR.ROTATE.START 316,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,CHR$(9806)
    GR.ROTATE.END
    GR.ROTATE.START 345,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,CHR$(9805)
    GR.ROTATE.END
   ENDIF
   IF ae/Lj_>=800 & ae/Lj_<=90000
    GR.COLOR 20,cc,cc,0,0
    FOR s=1 TO 12
     GR.ROTATE.START 180-((s/12)*360),mx,my
     GR.LINE ln,mx,my,mx+ed*(2000*lj_)*c145,my
     GR.ROTATE.END
    NEXT
    GR.COLOR 45,cc,cc,0,0
    GR.CIRCLE cl,mx,my,ed*(2000*lj_)*c145
   ENDIF
  ENDIF
 ENDIF
 ! % Historie %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF t98=1
  GR.COLOR 50,cc,cc,cc/2,0
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1
  grh=ed*((jx-1969)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"1969 Mondlandung"
  ENDIF
  grh=ed*((jx-1914)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"1914 Erster Weltkrieg"
  ENDIF 
  grh=ed*((jx-1848)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"1848 Gründerzeit"
  ENDIF
  grh=ed*((jx-1789)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"1789 Französische Revolution"
  ENDIF
  grh=ed*((jx-1618)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"1618 30-jähriger Krieg"
  ENDIF
  grh=ed*((jx-1492)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"1492 Columbus"
  ENDIF
  grh=ed*((jx-800)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"800 Karl der Große"
  ENDIF
  grh=ed*((jx-476)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"476 Goten"
  ENDIF
  grh=ed*((jx-170)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"170 Ptolemaeus"
  ENDIF
  grh=ed*((jx-0)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"0 AD"
  ENDIF
  grh=ed*((jx+1200)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-1200 Troja"
  ENDIF
  grh=ed*((jx+3500)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-3500 Noah"
  ENDIF
  grh=ed*((jx+5200)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-5200 Jahr der Welt"
  ENDIF
  grh=ed*((jx+10000)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-10000 Jungsteinzeit"
  ENDIF
  grh=ed*((jx+48000)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-48000 Jungpaläolithikum"
  ENDIF
  grh=ed*((jx+2600000)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-2.6Ma Altsteinzeit"
  ENDIF
  grh=ed*((jx+66*10^6)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-66Ma Känozoikum"
  ENDIF
  grh=ed*((jx+186.2*10^6)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-186Ma Mesozoikum"
  ENDIF
  grh=ed*((jx+288.8*10^6)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-288Ma Paläozoikum"
  ENDIF
  grh=ed*((jx+2.5*10^9)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-2.5Ga Proterozoikum"
  ENDIF
  grh=ed*((jx+4*10^9)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-4.0Ga Archaikum"
  ENDIF
  grh=ed*((jx+4.6*10^9)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-4.6Ga Hadaikum"
  ENDIF
 ENDIF 
 ! % Grössenvergleich %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF t37=1 
  dst=500
  SW.BEGIN vglst
   SW.CASE 4 %%%%%%%%%%%%%%%%%
    gr1=(ed*3.55)*1.42
    GR.COLOR (cc-155),cc,0,0,1
    vglst$="'Beteigeuze'"
    SW.BREAK
   SW.CASE 6 %%%%%%%%%%%%%%%%% 
    dst=Lj_*1400
    gr1=(ed*12*Lj_)*1.42
    GR.COLOR cc/3,cc,cc/3,cc/2,1
    vglst$="'Orionnebel'"
    SW.BREAK
   SW.CASE 2 %%%%%%%%%%%%%%%%%
    gr1=(ed*0.008)*1.42
    GR.COLOR (cc-55),cc,cc,0,1
    vglst$="'Sirius'"
    SW.BREAK
   SW.CASE 1 %%%%%%%%%%%%%%%%%
    gr1=(ed*0.006)*1.42
    GR.COLOR cc-20,cc,cc,cc,1
    vglst$="'"+CHR$(945)+" Centauri A'"
    SW.BREAK
   SW.CASE 3 %%%%%%%%%%%%%%%%%
    gr1=(ed*0.2)*1.42
    GR.COLOR (cc-40),cc,0,0,1
    vglst$="'Aldebaran'"
    SW.BREAK
   SW.CASE 5 %%%%%%%%%%%%%%%%%
    gr1=(ed*10.75)*1.42
    GR.COLOR (cc-155),cc,0,0,1
    vglst$="'RSGC2-01'"
    SW.BREAK
  SW.END
  GR.TEXT.SIZE txz1
  GR.TEXT.ALIGN 2
  IF t06=1&ae<dst THEN GR.TEXT.DRAW txt,mx,my-gr1-c10,vglst$
  IF ae<dst
   GR.CIRCLE sn,mx,my,gr1
  ENDIF
 ENDIF
 !
 IF u00=1 THEN                    GOSUB sonnensystem
 IF t00=1 & ae>=Lj_ THEN          GOSUB sterne
 IF st00=1 & ae*pc_>92 THEN       GOSUB sternhaufen
 IF nb00=1 & ae*pc_>315 THEN      GOSUB nebel
 IF gm00=1 & ae*pc_>85 THEN       GOSUB milchstrasse
 IF gx00=1 & ae*pc_>cc*10^3  THEN GOSUB galaxien
 IF gh00=1 & ae*pc_>1.3*10^6 THEN GOSUB haufen
 IF gq00=1 & ae*pc_>2*10^8   THEN GOSUB quasare
 !
 ! % Simulation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 jc=i-(j*360)
 IF jc>=360-135+10
  j=j+1:jx=jx+1:nt=1
 ENDIF
 IF nt<0
  j=j-1:jx=jx-1:nt=366
 ENDIF
 ! % Textoutput %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 GR.COLOR 80,cc,cc,cc,0
 GR.TEXT.ALIGN 3
 GR.TEXT.SIZE txz3             %
 IF s10=1                      % Skala
  GR.LINE ln,0, sy-sy/177.69,   mx,sy-sy/165
  GR.LINE ln,0, sy-sy/144.375,  0, sy-sy/210
  GR.LINE ln,mx,sy-sy/144.375,  mx,sy-sy/210 
  GR.LINE ln,mx/2,sy-sy/144.375,mx/2,sy-sy/210
  IF AE<Lj_*0.1
   GR.TEXT.DRAW txt,mx,sy-dtx3,FORMAT$("#####.#",AE)+"AE"
  ENDIF
  IF AE>=Lj_*0.1               % 1Lichtjahr
   GR.COLOR 30,cc,cc,cc,0
   GR.CIRCLE cl,mx,my,mx       % Skala
   GR.COLOR 80,cc,cc,cc,0
   IF AE<Lj_*pcl_
    GR.TEXT.DRAW txt,mx,sy-dtx3,FORMAT$("# ######.#",ae)+"AE"
    GR.TEXT.DRAW txt,mx,sy-dtx2,FORMAT$("#.#",ae/Lj_)+"Lj"
   ENDIF
  ENDIF
  IF AE>=Lj_*pcl_              % 1Parsec
   GR.TEXT.DRAW txt,mx,sy-dtx3,FORMAT$("###### ###### ######.#",AE)+"AE"
   IF ae<Lj_*(pcl_*10^3)       %
    GR.TEXT.DRAW txt,mx,sy-dtx2,FORMAT$("###.#",ae/pc_)+"pc"
   ENDIF
   IF ae>=Lj_*(pcl_*10^3)      %
    IF ae<Lj_*(pcl_*10^6)      %
     GR.TEXT.DRAW txt,mx,sy-dtx2,FORMAT$("###.#",(ae/pc_)/10^3)+"kpc"
    ENDIF
    IF ae>=Lj_*(pcl_*10^6) & ae<Lj_*(pcl_*10^9)
     GR.TEXT.DRAW txt,mx,sy-dtx2,FORMAT$("# ###### ######.#",(ae/pc_)/10^6)+"Mpc"
    ENDIF
    IF ae>=Lj_*(pcl_*10^9)
     GR.TEXT.DRAW txt,mx,sy-dtx2,FORMAT$("# ###### ######.#",(ae/pc_)/10^9)+"Gpc"
    ENDIF
   ENDIF
  ENDIF
  IF s07=0                     % bei Vollsimulation
   GR.TEXT.ALIGN 3
   GR.TEXT.DRAW txt,sx,sy-dtx3,FORMAT$("# ###### ###### ###### ######",v_)+"AE/h"
   GR.TEXT.DRAW txt,sx,sy-dtx2,FORMAT$("# ###### ###### ######",v_c)+"c"
  ENDIF
  IF s07<>0
   GR.TEXT.ALIGN 3
   GR.TEXT.DRAW txt,sx,sy-dtx2,INT$(VAL(y$)-AE/Lj_+1)
  ENDIF
 ENDIF
 IF s09=1 % Text %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  IF s07=0                    % bei Vollsimulation
   GR.TEXT.ALIGN 1
   GR.TEXT.DRAW txt,dtx4,dtx1,"SSR SONNENSYSTEMROTATION "+_ver$+" Vollsimulation"
   GR.TEXT.DRAW txt,dtx4,dtx1+dtx1,"Copyright © 2020-23 by Dietmar Gerald Schrausser"
  ENDIF
  IF s07=-1                   % bei Simulation
   GR.TEXT.ALIGN 1
   GR.TEXT.DRAW txt,dtx4,dtx1,INT$(jx)
   GR.TEXT.ALIGN 3
   GR.TEXT.DRAW txt,sx,dtx1,INT$(nt+1)+"T"
   !GR.TEXT.ALIGN 3
   GR.TEXT.DRAW txt,sx,sy-dtx3,"Simulation"+FORMAT$("#.#",v)+"x"
  ENDIF
  IF s07=1                    % bei Echtzeit
   GR.TEXT.ALIGN 1
   GR.TEXT.DRAW txt,dtx4,dtx1,d$+"."+m$+"."+y$
   GR.TEXT.ALIGN 3
   GR.TEXT.DRAW txt,sx,dtx1,h$+":"+min$+" "+sz$
   GR.TEXT.DRAW txt,sx,sy-dtx3,"Echtzeit"
  ENDIF
 ENDIF
 ! % Kompass %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF swbs % nur im Hochformat
  IF s08=1 
   lg=35:p=10
   SENSORS.READ 3,cp,cpi,crl
   IF swk=1| swk=0
    GR.COLOR cc/3,cc,50,50,1
    GR.CIRCLE cl,mx,my/(p/2),sx/83
    GR.COLOR cc/1.5,cc,50,50,0
    GR.CIRCLE cl,mx+sx/83*crl/90,my/(p/2)+sx/83*cpi/90,sx/83
    GR.CIRCLE cl,mx,my/(p/2),sx/540
    GR.ROTATE.START 360-cp,mx,sy/p
    GR.CIRCLE cl,mx,sy/p-lg+sx/135,sx/1080
    GR.TEXT.ALIGN 2
    GR.TEXT.SIZE txz2 %10
    GR.TEXT.DRAW tx, mx,sy/p-lg,"N"
    GR.ROTATE.END
    GR.ROTATE.START 180-cp,mx,sy/p
    GR.TEXT.DRAW tx, mx,sy/p-lg,"S"
    GR.CIRCLE cl,mx,sy/p-lg-sx/108,sx/1080
    GR.ROTATE.END
    GR.ROTATE.START 90-cp,mx,sy/p
    GR.TEXT.DRAW tx, mx,sy/p-lg,"O"
    GR.ROTATE.END
    GR.ROTATE.START 270-cp,mx,sy/p
    GR.TEXT.DRAW tx, mx,sy/p-lg,"W"
    GR.ROTATE.END
   ENDIF
  ENDIF
 ENDIF
 ! % Touch Ereignisse %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 GR.TOUCH2 t2,tx,ty
 IF t2
  GOSUB dialog
 ENDIF
 GR.TOUCH tc,tx,ty
 IF tc
  IF ae/pc_<=14.25*10^9         % // max Entfernung //
   IF ty<sy/3 THEN ed=ed/vse    %%%%%%%%
  ENDIF
  IF ae>=0.002                  % // min Entfernung //
   IF ty>sy*2/3 THEN ed=ed*vse  %%%%%%%%
  ENDIF
  IF s07=-1                     %
   IF ty<=sy*2/3 & ty>=sy/3
    IF tx<mx THEN v=v+0.1
    IF tx>mx THEN v=v-0.1
   ENDIF
  ENDIF
 ENDIF
 ! % Vollsimulation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF s07=0
  IF sw=1
   ed=ed/vsm %%%%%%%%
   IF ae/Lj_>=2.5*10^8:sw=-1:PAUSE 2000:ENDIF
  ENDIF
  IF sw=-1
   ed=ed*vsm %%%%%%%%
   IF ae<=0.02:sw=1:PAUSE 2000:ENDIF
  ENDIF
  GOSUB zeit
  IF sec<>sec1
   sec1=sec
   v_=(SQR((ae-ae1)^2))*3600  % AE/h
   v_c=v_*(au_/1000)
   v_c=v_c/c_                 % Prozent c
   ae1=ae
  ENDIF
 ENDIF
 ! 
 GR.RENDER
 ! % SCRS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF s11=1 
  SENSORS.READ 8,dmy,dmy,bwg
  IF bwg=0 THEN sw0=1
  IF bwg=1&sw0=1
   scrs$=pat$+_name$+Y$+M$+D$+h$+min$+sec$
   GR.SCREEN.TO_BITMAP scrs
   GR.BITMAP.SAVE scrs,scrs$
   TONE 11500,55
   sw0=0
  ENDIF
  !
 ENDIF 
 IF s07=1   % bei Echtzeit
  v=0.1     % Umlaufgeschwindigkeit bei Simulation
  sw=1      % Vollsimulation Schalter
  sec1=-1   %
 ENDIF
UNTIL 0
!
ONMENUKEY:
GOSUB dialog
MENUKEY.RESUME
ONBACKKEY:
GOSUB fin
END
!
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Subroutinen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
zeit:
TIME Y$, M$, D$, h$, min$, sec$
yr=VAL(Y$)
sec=VAL(sec$)
nt=VAL(D$)
nm=VAL(M$)
st=VAL(h$)
min=VAL(min$)
RETURN
! % Globale Variablen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global:
clz1=sx/28              % Textgröße 8
clz2=sx/52              % Textgröße 4
clz3=sx/47              % Textgröße 5
clz4=sx/41              % Textgröße 6
clz5=sx/100             % Textgröße 1
clz6=sx/80              % Textgröße 2
txz1=sx/50              % Textgröße 12
txz2=sx/60              % Textgröße 10
txz3=sx/35              %
txz4=sx/36              %
txz5=sx/31              %
txzi=clz1               % Textgröße info
txzi2=sx/30             % Textgröße info2
dtx1=sy/80              % Text Abstand 1
dtx2=sy/40              % Text Abstand 2
dtx3=sy/100             % Text Abstand 3
dtx4=sx/100             % Text Abstand 4
c145=1.45               % sx/760 %1.45 corr
c10=sy/231              % 10 corr
c01=sx/1080             % 1 corr
c02=c01*2               % 2 corr
cc=255                  % Farbe
dis=sy/5.372            % Tierkreis Distanz
pl01=sx/700             % Größe Merkur
pl02=sx/550             % Größe Venus
pl03=sx/500             % Größe Erde
pl04=sx/600             % Größe Mars
pl05=sx/450             % Größe Uranus,Neptun
pl06=sx/800             % Größe Pluto
gr_0=sx/400             % allg. Objekt Größe 
!ed=ed/aed              % Anfangsentfernung
RETURN
! % Tagesanzahl %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tagnr: 
nt=nt-1
IF nm>1 THEN nt=nt+31
IF nm>2 THEN nt=nt+28+sj
IF nm>3 THEN nt=nt+31
IF nm>4 THEN nt=nt+30
IF nm>5 THEN nt=nt+31
IF nm>6 THEN nt=nt+30
IF nm>7 THEN nt=nt+31
IF nm>8 THEN nt=nt+31
IF nm>9 THEN nt=nt+30
IF nm>10 THEN nt=nt+31
IF nm>11 THEN nt=nt+30
RETURN
! % Monatslängen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
mnt: 
Fr=31
Mz=Fr+28+sj
Al=Mz+31
Mi=Al+30
Ji=Mi+31
Jl=Ji+30
At=Jl+31
Sr=At+31
Or=Sr+30
Nr=Or+31
Dr=Nr+30
RETURN
! % Position Rekta in Grad %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_pos: 
m_x=m_x/60
s_x=s_x/6000
pos1=h_x+m_x+s_x
pos=pos1*-(360/24)-135
RETURN
! % Deklination %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dekl: 
dm_x=dm_x/60
ds_x=ds_x/6000
dkl=dg_x+dm_x+ds_x
d=d*COS(TORADIANS(dkl))
d=d*Lj_
dsn=(COS(TORADIANS(dkl)))
RETURN
! % Sonnensystem %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sonnensystem::INCLUDE ssr_sonnensystem.bas:RETURN
! % Sterne, Sternhaufen und Nebel %%%%%%%%%%%%%%%%%%%%%%%%
sterne::     INCLUDE ssr_sterne.bas:RETURN
sternhaufen::INCLUDE ssr_sternhaufen.bas:RETURN
nebel::      INCLUDE ssr_nebel.bas:RETURN
! % Milchstraßensystem %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
milchstrasse::INCLUDE ssr_milchstrasse.bas:RETURN
! % Galaxien, Galaxienhaufen weitere Objekte %%%%%%%%%%%%%
galaxien::INCLUDE ssr_galaxien.bas:RETURN
haufen::  INCLUDE ssr_haufen.bas:  RETURN
quasare:: INCLUDE ssr_quasare.bas: RETURN 
! % Beobachtbares Universum r=14.25 Gpc %%%%%%%%%%%%%%%%%%
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Objektdarstellung %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objdarst: 
GR.ROTATE.START pos,mx,my
IF ae<200*d                        %Darstellung
 IF otype=-1 
  GR.CIRCLE cl,mx-ed*d,my-ed*d,rds
 ELSE
  GR.CIRCLE cl,mx-ed*d,my-ed*d,ed*rds*Lj_ 
 ENDIF
ENDIF
IF t06=1 & ae<5*d                  %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1                 %11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,objname$
 GR.ROTATE.END
ENDIF
IF pro_=1                          %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*c145)*SIN(-erd)
 ey1= my-(ed*c145)*COS(erd)
 GR.COLOR 30,cc,cc/3,cc/2,0        %%% gosub color
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END 
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Haupt-Dialog Parameter %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialogprm: 
u00=-1
t00=-1
s07=1
s09=1
s11=1
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog: 
smb$=CHR$(9989)
smq$=CHR$(9654)
GOSUB anfangsentfernung %aed$
GOSUB menu
std:
ARRAY.LOAD sel$[],o05$,o06$,o12$,o13$,o14$,o15$,o17$,o16$,o10$,o09$,o07$,o11$,"Ok","exit"
DIALOG.SELECT sel, sel$[],_name$+" SONNENSYSTEMROTATION "+_ver$+" - Ebenen:"
IF sel=1:GOSUB dialog1:ENDIF 
IF sel=2:GOSUB dialog2:ENDIF 
IF sel=3:GOSUB dialog4:ENDIF
IF sel=4:GOSUB dialog5:ENDIF
IF sel=5:GOSUB dialog6:ENDIF
IF sel=6:GOSUB dialog7:ENDIF
IF sel=7:GOSUB dialog8:ENDIF
IF sel=8:GOSUB dialog9:ENDIF
IF sel=9:GOSUB dialog10:ENDIF
IF sel=10:s09=s09*-1:ENDIF
IF sel=11:GOSUB dialog3:ENDIF
IF sel=12:s11=s11*-1:ENDIF
IF sel=13:RETURN:   ENDIF
IF sel=14:GOSUB fin: END:  ENDIF
GOSUB menu
GOTO std
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu:
IF u00=1:o05$=smb$+"  Sonnensystem...":ENDIF
IF u00=-1:o05$="     Sonnensystem aus":ENDIF
IF t00=1:o06$=smb$+"  Sterne...":ENDIF
IF t00=-1:o06$="     Sterne aus":ENDIF
IF st00=1:o12$=smb$+"  Sternhaufen...":ENDIF
IF st00=-1:o12$="     Sternhaufen aus":ENDIF
IF nb00=1:o13$=smb$+"  Nebel...":ENDIF
IF nb00=-1:o13$="     Nebel aus":ENDIF
IF gm00=1:o14$=smb$+"  Milchstraße...":ENDIF
IF gm00=-1:o14$="     Milchstraße aus":ENDIF
IF gx00=1:o15$=smb$+"  Galaxien...":ENDIF
IF gx00=-1:o15$="     Galaxien aus":ENDIF
IF gh00=1:o17$=smb$+"  Galaxienhaufen...":ENDIF
IF gh00=-1:o17$="     Galaxienhaufen aus":ENDIF
IF gq00=1:o16$=smb$+"  Quasare...":ENDIF
IF gq00=-1:o16$="     Quasare aus":ENDIF
IF s07=1:o07$=smq$+"  Echtzeit @ "+aed$:ENDIF
IF s07=-1:o07$= smq$+ "  Simulation @ "+aed$:ENDIF
IF s07=0:o07$=CHR$(8734)+"  Vollsimulation":ENDIF
!IF s07=2:o07$="i  Information":ENDIF
IF s09=1:o09$=smb$+"  Text":ENDIF
IF s09=-1:o09$="     Text aus":ENDIF
IF s10=1:o10$=smb$+"  Skalen...":ENDIF
IF s10=-1:o10$="     Skalen aus":ENDIF
IF s11=1:o11$=smb$+"  SCRS":ENDIF
IF s11=-1:o11$="     SCRS aus":ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Dialog Sonnensystem %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog1prm:
s00=1
u00=1
u01=-1
u02=-1
u03=-1
u04=1
u05=-1
u06=-1
u07=-1
u08=-1
u09=-1
u10=1
u11=1
u13=1
u14=1
u15=1
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog1:
GOSUB menu1
std1:
ARRAY.LOAD sel1$[],q00$,q20$,q01$,q02$,q03$,q04$,q05$,q06$,q07$,q08$,q09$,q13$,q14$,q15$,q10$,q11$,"Ok"
DIALOG.SELECT sel1, sel1$[],"Sonnensystem: Darstellung/Projektion:"
IF sel1=1:u00=u00*-1:ENDIF
IF sel1=2:s00=s00*-1:ENDIF
IF sel1=3:u01=u01*-1:ENDIF
IF sel1=4:u02=u02*-1:ENDIF
IF sel1=5:u03=u03*-1:ENDIF
IF sel1=6:u04=u04*-1:ENDIF
IF sel1=7:u05=u05*-1:ENDIF
IF sel1=8:u06=u06*-1:ENDIF
IF sel1=9:u07=u07*-1:ENDIF
IF sel1=10:u08=u08*-1:ENDIF
IF sel1=11:u09=u09*-1:ENDIF
IF sel1=12:u13=u13*-1:ENDIF
IF sel1=13:u14=u14*-1:ENDIF
IF sel1=14:u15=u15*-1:ENDIF
IF sel1=15:u10=u10*-1:ENDIF
IF sel1=16:u11=u11*-1:ENDIF
IF sel1=17:RETURN:   ENDIF
GOSUB menu1
GOTO std1
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu1:
IF u00=1:q00$=smb$+"  Ebene an":ENDIF
IF u00=-1: q00$="     Ebene aus":ENDIF
IF s00=1:q20$=smb$+"  Umlaufbahnen":ENDIF
IF s00=-1: q20$="     Umlaufbahnen aus":ENDIF
IF u01=1:q01$=smb$+"  Merkur [0.4AE]":ENDIF
IF u01=-1: q01$="     Merkur [0.4AE]":ENDIF
IF u02=1:q02$=smb$+"  Venus [0.7AE]":ENDIF
IF u02=-1: q02$="     Venus [0.7AE]":ENDIF
IF u03=1:q03$=smb$+"  Mars [1.5AE]":ENDIF
IF u03=-1: q03$="     Mars [1.5AE]":ENDIF
IF u04=1:q04$=smb$+"  Asteroidengürtel [~3.3AE]":ENDIF
IF u04=-1: q04$="     Asteroidengürtel [~3.3AE]":ENDIF
IF u05=1:q05$=smb$+"  Jupiter [5.2AE]":ENDIF
IF u05=-1: q05$="     Jupiter [5.2AE]":ENDIF
IF u06=1:q06$=smb$+"  Saturn [9.6AE]":ENDIF
IF u06=-1: q06$="     Saturn [9.6AE]":ENDIF
IF u07=1:q07$=smb$+"  Uranus [19.2AE]":ENDIF
IF u07=-1: q07$="     Uranus [19.2AE]":ENDIF
IF u08=1:q08$=smb$+"  Neptun [30.1AE]":ENDIF
IF u08=-1: q08$="     Neptun [30.1AE]":ENDIF
IF u13=1:q13$=smb$+"  Kuipergürtel [~40AE]":ENDIF
IF u13=-1: q13$="     Kuipergürtel [~40AE]":ENDIF
IF u14=1:q14$=smb$+"  Heliosphäre [~100AE]":ENDIF
IF u14=-1: q14$="     Heliosphäre [~100AE]":ENDIF
IF u09=1:q09$=smb$+"  Pluto [39.5AE]":ENDIF
IF u09=-1: q09$="     Pluto [39.5AE]":ENDIF
IF u15=1:q15$=smb$+"  Hills-Wolke [~875AE]":ENDIF
IF u15=-1: q15$="     Hills-Wolke [~875AE]":ENDIF
IF u10=1:q10$=smb$+"  Oortsche Wolke [~0.8Lj]":ENDIF
IF u10=-1: q10$="     Oortsche Wolke [50000AE]":ENDIF
IF u11=1:q11$=smb$+"  Text":ENDIF
IF u11=-1: q11$="     Text aus":ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Dialog Sterne %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog2prm:
t00=1
t01=-1
t02=-1
t03=-1
t05=-1
t06=1
t07=-1
t08=-1
t09=-1
t10=-1
t11=-1
t12=-1
t13=-1
t14=-1
t15=-1
t17=-1
t18=-1
t19=-1
t20=-1
t32=-1
t33=-1
t35=-1
t36=-1
t38=-1
t73=-1
t74=-1
t75=-1
t76=-1
t77=-1
t78=-1
t79=-1
t80=-1
t81=-1
t82=-1
t83=-1
t84=-1
t85=-1
t86=-1
t87=-1
t88=-1
t89=-1
t90=-1
t91=-1
t92=-1
t93=-1
t94=-1
t95=-1
t96=-1
t97=-1
t100=-1
t101=-1
t102=-1
t103=-1
t104=-1
t105=-1
t106=-1
t107=-1
t108=-1
t109=-1
t110=-1
t111=-1
t112=-1
t113=-1
t114=-1
t115=-1
t116=-1
t117=-1
t118=-1
t119=-1
t120=-1
t121=-1
t122=-1
t123=-1
t124=-1
t125=-1
t126=-1
t127=-1
t128=-1
t129=-1
t130=-1
s99=-1
t06s=1
!!
 t__=-1
!!
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog2:
GOSUB menu2
std2:
ARRAY.LOAD sel2$[],p00$,p01$,p82$,p05$,p35$,p08$,p07$,p36$,p09$,p38$,p03$,p11$,p12$,p33$,p10$,p83$,p02$,p84$,p85$,p86$,p13$,p87$,p88$,p89$,p90$,p91$,p14$,p92$,p93$,p94$,p95$,p96$,p97$,p100$,p101$,p102$,p103$,p104$,p105$,p106$,p107$,p108$,p109$,p110$,p111$,p112$,p113$,p32$,p114$,p115$,p116$,p117$,p118$,p15$,p119$,p120$,p121$,p17$,p122$,p18$,p123$,p124$,p19$,p125$,p126$,p127$,p128$,p20$,p129$,p130$,s99$,p06$,"Ok"
DIALOG.SELECT sel2, sel2$[],"Sterne: Darstellung/Projektion:"
IF sel2=1:t00=t00*-1:ENDIF
IF sel2=2:t01=t01*-1:ENDIF
IF sel2=3:t82=t82*-1:ENDIF
IF sel2=4:t05=t05*-1:ENDIF
IF sel2=5:t35=t35*-1:ENDIF
IF sel2=6:t08=t08*-1:ENDIF
IF sel2=7:t07=t07*-1:ENDIF
IF sel2=8:t36=t36*-1:ENDIF
IF sel2=9:t09=t09*-1:ENDIF
IF sel2=10:t38=t38*-1:ENDIF
IF sel2=11:t03=t03*-1:ENDIF
IF sel2=12:t11=t11*-1:ENDIF
IF sel2=13:t12=t12*-1:ENDIF
IF sel2=14:t33=t33*-1:ENDIF
IF sel2=15:t10=t10*-1:ENDIF
IF sel2=16:t83=t83*-1:ENDIF
IF sel2=17:t02=t02*-1:ENDIF
IF sel2=18:t84=t84*-1:ENDIF
IF sel2=19:t85=t85*-1:ENDIF
IF sel2=20:t86=t86*-1:ENDIF
IF sel2=21:t13=t13*-1:ENDIF
IF sel2=22:t87=t87*-1:ENDIF
IF sel2=23:t88=t88*-1:ENDIF
IF sel2=24:t89=t89*-1:ENDIF
IF sel2=25:t90=t90*-1:ENDIF
IF sel2=26:t91=t91*-1:ENDIF
IF sel2=27:t14=t14*-1:ENDIF
IF sel2=28:t92=t92*-1:ENDIF
IF sel2=29:t93=t93*-1:ENDIF
IF sel2=30:t94=t94*-1:ENDIF
IF sel2=31:t95=t95*-1:ENDIF
IF sel2=32:t96=t96*-1:ENDIF
IF sel2=33:t97=t97*-1:ENDIF
IF sel2=34:t100=t100*-1:ENDIF
IF sel2=35:t101=t101*-1:ENDIF
IF sel2=36:t102=t102*-1:ENDIF
IF sel2=37:t103=t103*-1:ENDIF
IF sel2=38:t104=t104*-1:ENDIF
IF sel2=39:t105=t105*-1:ENDIF
IF sel2=40:t106=t106*-1:ENDIF
IF sel2=41:t107=t107*-1:ENDIF
IF sel2=42:t108=t108*-1:ENDIF
IF sel2=43:t109=t109*-1:ENDIF
IF sel2=44:t110=t110*-1:ENDIF
IF sel2=45:t111=t111*-1:ENDIF
IF sel2=46:t112=t112*-1:ENDIF
IF sel2=47:t113=t113*-1:ENDIF
IF sel2=48:t32=t32*-1:ENDIF
IF sel2=49:t114=t114*-1:ENDIF
IF sel2=50:t115=t115*-1:ENDIF
IF sel2=51:t116=t116*-1:ENDIF
IF sel2=52:t117=t117*-1:ENDIF
IF sel2=53:t118=t118*-1:ENDIF
IF sel2=54:t15=t15*-1:ENDIF
IF sel2=55:t119=t119*-1:ENDIF
IF sel2=56:t120=t120*-1:ENDIF
IF sel2=57:t121=t121*-1:ENDIF
IF sel2=58:t17=t17*-1:ENDIF
IF sel2=59:t122=t122*-1:ENDIF
IF sel2=60:t18=t18*-1:ENDIF
IF sel2=61:t123=t123*-1:ENDIF
IF sel2=62:t124=t124*-1:ENDIF
IF sel2=63:t19=t19*-1:ENDIF
IF sel2=64:t125=t125*-1:ENDIF
IF sel2=65:t126=t126*-1:ENDIF
IF sel2=66:t127=t127*-1:ENDIF
IF sel2=67:t128=t128*-1:ENDIF
IF sel2=68:t20=t20*-1:ENDIF
IF sel2=69:t129=t129*-1:ENDIF
IF sel2=70:t130=t130*-1:ENDIF
!!
 IF sel2=_:t__=t__*-1:ENDIF
!!
IF sel2=71:GOSUB sreset: s99=s99*-1:ENDIF
IF sel2=72:t06s=t06s*-1:ENDIF
IF sel2=73:RETURN:   ENDIF
GOSUB menu2
GOTO std2
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu2:
IF t00=1:p00$=smb$+"  Ebene an":ENDIF
IF t00=-1: p00$="     Ebene aus":ENDIF
IF t01=1:p01$=smb$+"  "+CHR$(945)+" Centauri [1.3pc]":ENDIF
IF t01=-1: p01$="     "+CHR$(945)+" Centauri [1.3pc]":  ENDIF
IF t82=1:p82$=smb$+"  Barnards Stern [1.8pc]":ENDIF
IF t82=-1: p82$="     Barnards Stern [1.8pc]":ENDIF
IF t05=1:p05$=smb$+"  Sirius [2.6pc]":ENDIF
IF t05=-1: p05$="     Sirius [2.6pc]":ENDIF
IF t35=1:p35$=smb$+"  Procyon [3.5pc]":ENDIF
IF t35=-1: p35$="     Procyon [3.5pc]":ENDIF
IF t08=1:p08$=smb$+"  Altair [5.1pc]":ENDIF
IF t08=-1: p08$="     Altair [5.1pc]":ENDIF
IF t07=1:p07$=smb$+"  Vega [7.7pc]":ENDIF
IF t07=-1: p07$="     Vega [7.7pc]":ENDIF
IF t36=1:p36$=smb$+"  Fomalhaut [7.7pc]":ENDIF
IF t36=-1: p36$="     Fomalhaut [7.7pc]":ENDIF
IF t09=1:p09$=smb$+"  Pollux [10.3pc]":ENDIF
IF t09=-1: p09$="     Pollux [10.3pc]":ENDIF
IF t38=1:p38$=smb$+"  Denebola [11.0pc]":ENDIF
IF t38=-1: p38$="     Denebola [11.0pc]":ENDIF
IF t03=1:p03$=smb$+"  Arkturus [11.3pc]":ENDIF
IF t03=-1: p03$="     Arkturus [11.3pc]":ENDIF
IF t11=1:p11$=smb$+"  Capella [13.2pc]":ENDIF
IF t11=-1: p11$="     Capella [13.2pc]":ENDIF
IF t12=1:p12$=smb$+"  Rasalhague [14.9pc]":ENDIF
IF t12=-1: p12$="     Rasalhague [14.9pc]":ENDIF
IF t33=1:p33$=smb$+"  Alderamin [15.0pc]":ENDIF
IF t33=-1: p33$="     Alderamin [15.0pc]":ENDIF
IF t10=1:p10$=smb$+"  Castor [15.6pc]":ENDIF
IF t10=-1: p10$="     Castor [15.6pc]":ENDIF
IF t83=1:p83$=smb$+"  Caph [16.8pc]":ENDIF
IF t83=-1: p83$="     Caph [16.8pc]":ENDIF
IF t02=1:p02$=smb$+"  Aldebaran [20.0pc]":ENDIF
IF t02=-1: p02$="     Aldebaran [20.0pc]":  ENDIF
IF t84=1:p84$=smb$+"  Hamal [20.2pc]":ENDIF
IF t84=-1: p84$="     Hamal [20.2pc]":ENDIF
IF t85=1:p85$=smb$+"  Unuk [22.7pc]":ENDIF
IF t85=-1: p85$="     Unuk [22.7pc]":ENDIF
IF t86=1:p86$=smb$+"  Alphecca [23.0pc]":ENDIF
IF t86=-1: p86$="     Alphecca [23.0pc]":ENDIF
IF t13=1:p13$=smb$+"  Regulus [23.8pc]":ENDIF
IF t13=-1: p13$="     Regulus [23.8pc]":ENDIF
IF t87=1:p87$=smb$+"  Merak [24.4pc]":ENDIF
IF t87=-1: p87$="     Merak [24.4pc]":ENDIF
IF t88=1:p88$=smb$+"  Ankaa [25.2pc]":ENDIF
IF t88=-1: p88$="     Ankaa [25.2pc]":ENDIF
IF t89=1:p89$=smb$+"  Alioth [25.3pc]":ENDIF
IF t89=-1: p89$="     Alioth [25.3pc]":ENDIF
IF t90=1:p90$=smb$+"  Phecda [25.5pc]":ENDIF
IF t90=-1: p90$="     Phecda [25.5pc]":ENDIF
IF t91=1:p91$=smb$+"  Gacrux [26.7pc]":ENDIF
IF t91=-1: p91$="     Gacrux [26.7pc]":ENDIF
IF t14=1:p14$=smb$+"  Algol [28.5pc]":ENDIF
IF t14=-1: p14$="     Algol [28.5pc]":ENDIF
IF t92=1:p92$=smb$+"  Alpheratz [29.8pc]":ENDIF
IF t92=-1: p92$="     Alpheratz [29.8pc]":ENDIF
IF t93=1:p93$=smb$+"  Alnair [31.0pc]":ENDIF
IF t93=-1: p93$="     Alnair [31.0pc]":ENDIF
IF t94=1:p94$=smb$+"  Alhena [33.4pc]":ENDIF
IF t94=-1: p94$="     Alhena [33.4pc]":ENDIF
IF t95=1:p95$=smb$+"  Vindemiatrix [33.7pc]":ENDIF
IF t95=-1: p95$="     Vindemiatrix [33.7pc]":ENDIF
IF t96=1:p96$=smb$+"  Dubhe [37.7pc]":ENDIF
IF t96=-1: p96$="     Dubhe [37.7pc]":ENDIF
IF t97=1:p97$=smb$+"  Algieba [39.9pc]":ENDIF
IF t97=-1: p97$="     Algieba [39.9pc]":ENDIF
IF t100=1:p100$=smb$+"  Kochab [40.2pc]":ENDIF
IF t100=-1: p100$="     Kochab [40.2pc]":ENDIF
IF t101=1:p101$=smb$+"  Markab [40.8pc]":ENDIF
IF t101=-1: p101$="     Markab [40.8pc]":ENDIF
IF t102=1:p102$=smb$+"  Elnath [41.1pc]":ENDIF
IF t102=-1: p102$="     Elnath [41.1pc]":ENDIF
IF t103=1:p103$=smb$+"  Achernar [42.6pc]":ENDIF
IF t103=-1: p103$="     Achernar [42.6pc]":ENDIF
IF t104=1:p104$=smb$+"  Kaus Australis [43.9pc]":ENDIF
IF t104=-1: p104$="     Kaus Australis [43.9pc]":ENDIF
IF t105=1:p105$=smb$+"  Eltanin [47.2pc]":ENDIF
IF t105=-1: p105$="     Eltanin [47.2pc]":ENDIF
IF t106=1:p106$=smb$+"  Alphard [54.3pc]":ENDIF
IF t106=-1: p106$="     Alphard [54.3pc]":ENDIF
IF t107=1:p107$=smb$+"  Scheat [60.1pc]":ENDIF
IF t107=-1: p107$="     Scheat [60.1pc]":ENDIF
IF t108=1:p108$=smb$+"  Mirach [60.4pc]":ENDIF
IF t108=-1: p108$="     Mirach [60.4pc]":ENDIF
IF t109=1:p109$=smb$+"  Nunki [69.9pc]":ENDIF
IF t109=-1: p109$="     Nunki [69.9pc]":ENDIF
IF t110=1:p110$=smb$+"  Schedar [69.9pc]":ENDIF
IF t110=-1: p110$="     Schedar [69.9pc]":ENDIF
IF t111=1:p111$=smb$+"  Izar [72.4pc]":ENDIF
IF t111=-1: p111$="     Izar [72.4pc]":ENDIF
IF t112=1:p112$=smb$+"  Menkar [76.4pc]":ENDIF
IF t112=-1: p112$="     Menkar [76.4pc]":ENDIF
IF t113=1:p113$=smb$+"  Bellatrix [76.7pc]":ENDIF
IF t113=-1: p113$="     Bellatrix [76.7pc]":ENDIF
IF t32=1:p32$=smb$+"  Spica [83.0pc]":ENDIF
IF t32=-1: p32$="     Spica [83.0pc]":ENDIF
IF t114=1:p114$=smb$+"  Deneb Kaitos [84.4pc]":ENDIF
IF t114=-1: p114$="     Deneb Kaitos [84.4pc]":ENDIF
IF t115=1:p115$=smb$+"  Canopus [95.1pc]":ENDIF
IF t115=-1: p115$="     Canopus [95.1pc]":ENDIF
IF t116=1:p116$=smb$+"  Acrux [98.2pc]":ENDIF
IF t116=-1: p116$="     Acrux [98.2pc]":ENDIF
IF t117=1:p117$=smb$+"  Hadar [98.2pc]":ENDIF
IF t117=-1: p117$="     Hadar [98.2pc]":ENDIF
IF t118=1:p118$=smb$+"  Polaris [122.7pc]":ENDIF
IF t118=-1: p118$="     Polaris [122.7pc]":ENDIF
IF t15=1:p15$=smb$+"  Mira [130.0pc]":ENDIF
IF t15=-1: p15$="     Mira [130.0pc]":ENDIF
IF t119=1:p119$=smb$+"  Adhara [131.9pc]":ENDIF
IF t119=-1: p119$="     Adhara [131.9pc]":ENDIF
IF t120=1:p120$=smb$+"  Algenib [144.2pc]":ENDIF
IF t120=-1: p120$="     Algenib [144.2pc]":ENDIF
IF t121=1:p121$=smb$+"  Mirfak [156.4pc]":ENDIF
IF t121=-1: p121$="     Mirfak [156.4pc]":ENDIF
IF t17=1:p17$=smb$+"  Antares [170.0pc]":ENDIF
IF t17=-1: p17$="     Antares [170.0pc]":ENDIF
IF t122=1:p122$=smb$+"  Shaula [174.8pc]":ENDIF
IF t122=-1: p122$="     Shaula [174.8pc]":ENDIF
IF t18=1:p18$=smb$+"  Beteigeuze [197.0pc]":ENDIF
IF t18=-1: p18$="     Beteigeuze [197.0pc]":ENDIF
IF t123=1:p123$=smb$+"  Saiph [199.4pc]":ENDIF
IF t123=-1: p123$="     Saiph [199.4pc]":ENDIF
IF t124=1:p124$=smb$+"  Enif [211.7pc]":ENDIF
IF t124=-1: p124$="     Enif [211.7pc]":ENDIF
IF t19=1:p19$=smb$+"  Rigel [265.0pc]":ENDIF
IF t19=-1: p19$="     Rigel [265.0pc]":ENDIF
IF t125=1:p125$=smb$+"  Mintaka [368.1pc]":ENDIF
IF t125=-1: p125$="     Mintaka [368.1pc]":ENDIF
IF t126=1:p126$=smb$+"  Alnitak [386.5pc]":ENDIF
IF t126=-1: p126$="     Alnitak [386.5pc]":ENDIF
IF t127=1:p127$=smb$+"  Alnilam [613.5pc]":ENDIF
IF t127=-1: p127$="     Alnilam [613.5pc]":ENDIF
IF t128=1:p128$=smb$+"  Arneb [674.8pc]":ENDIF
IF t128=-1: p128$="     Arneb [674.8pc]":ENDIF
IF t20=1:p20$=smb$+"  Deneb [0.8kpc]":ENDIF
IF t20=-1: p20$="     Deneb [802.1pc]":ENDIF
IF t129=1:p129$=smb$+"  RSGC2-01 [5.8kpc]":ENDIF
IF t129=-1: p129$="     RSGC2-01 [5.8kpc]":ENDIF
IF t130=1:p130$=smb$+"  RSGC-F01 [6.7kpc]":ENDIF
IF t130=-1: p130$="     RSGC-F01 [6.7kpc]":ENDIF
!!
 IF t__=1:p__$=smb$+"  __ [__pc]":ENDIF
 IF t__=-1: p__$="     __ [__pc]":ENDIF
!!
s99$=smq$+"  Projektion an/aus"
IF t06s=1:p06$=smb$+"  Text":ENDIF
IF t06s=-1:p06$="     Text aus":ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sreset:
IF s99=1
 t01=-1
 t02=-1
 t03=-1
 t05=-1
 t07=-1
 t08=-1
 t09=-1
 t10=-1
 t11=-1
 t12=-1
 t13=-1
 t14=-1
 t15=-1
 t17=-1
 t18=-1
 t19=-1
 t20=-1
 t32=-1
 t33=-1
 t35=-1
 t36=-1
 t38=-1
 t59=-1
 t73=-1
 t74=-1
 t75=-1
 t76=-1
 t77=-1
 t78=-1
 t79=-1
 t80=-1
 t81=-1
 t82=-1
 t83=-1
 t84=-1
 t85=-1
 t86=-1
 t87=-1
 t88=-1
 t89=-1
 t90=-1
 t91=-1
 t92=-1
 t93=-1
 t94=-1
 t95=-1
 t96=-1
 t97=-1
 t100=-1
 t101=-1
 t102=-1
 t103=-1
 t104=-1
 t105=-1
 t106=-1
 t107=-1
 t108=-1
 t109=-1
 t110=-1
 t111=-1
 t112=-1
 t113=-1
 t114=-1
 t115=-1
 t116=-1
 t117=-1
 t118=-1
 t119=-1
 t120=-1
 t121=-1
 t122=-1
 t123=-1
 t124=-1
 t125=-1
 t126=-1
 t127=-1
 t128=-1
 t129=-1
 t130=-1
ELSE
 t01=1
 t02=1
 t03=1
 t05=1
 t07=1
 t08=1
 t09=1
 t10=1
 t11=1
 t12=1
 t13=1
 t14=1
 t15=1
 t17=1
 t18=1
 t19=1
 t20=1
 t32=1
 t33=1
 t35=1
 t36=1
 t38=1
 t73=1
 t74=1
 t75=1
 t76=1
 t77=1
 t78=1
 t79=1
 t80=1
 t81=1
 t82=1
 t83=1
 t84=1
 t85=1
 t86=1
 t87=1
 t88=1
 t89=1
 t90=1
 t91=1
 t92=1
 t93=1
 t94=1
 t95=1
 t96=1
 t97=1
 t100=1
 t101=1
 t102=1
 t103=1
 t104=1
 t105=1
 t106=1
 t107=1
 t108=1
 t109=1
 t110=1
 t111=1
 t112=1
 t113=1
 t114=1
 t115=1
 t116=1
 t117=1
 t118=1
 t119=1
 t120=1
 t121=1
 t122=1
 t123=1
 t124=1
 t125=1
 t126=1
 t127=1
 t128=1
 t129=1
 t130=1
ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Dialog Stern- und Kugelsternhaufen %%%%%%%%%%%%%%%%%%%
dialog4prm:
st00=1
st01=-1
st02=-1
st03=-1
st04=-1
st05=-1
st06=-1
st07=-1
st08=-1
st09=-1
st10=-1
st11=-1
st12=-1
st13=-1
st14=-1
st15=-1
st16=-1
st17=-1
st18=-1
st19=-1
st20=-1
st21=-1
st22=-1
st23=-1
st24=-1
st25=-1
st26=-1
st27=-1
st28=-1
st29=-1
st30=-1
st31=-1
st32=-1
st33=-1
st34=-1
st35=-1
st36=-1
st37=-1
st38=-1
st39=-1
st40=-1
st41=-1
st42=-1
st43=-1
st44=-1
st45=-1
st46=-1
st47=-1
st48=-1
st49=-1
st50=-1
st51=-1
st52=-1
st53=-1
st54=-1
st55=-1
st56=-1
st57=-1
st99=-1
t06st=1
!!
 st__=-1
!!
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog4:
GOSUB menu4
std4:
ARRAY.LOAD sel4$[],st00$,st01$,st14$,st02$,st03$,st04$,st05$,st06$,st15$,st16$,st17$,st18$,st19$,st07$,st08$,st20$,st21$,st22$,st23$,st24$,st25$,st26$,st28$,st27$,st29$,st30$,st31$,st32$,st09$,st33$,st34$,st35$,st36$,st10$,st37$,st38$,st39$,st40$,st41$,st11$,st42$,st43$,st44$,st45$,st46$,st47$,st48$,st49$,st50$,st51$,st52$,st53$,st54$,st55$,st12$,st56$,st13$,st57$,st99$,st60$,"Ok"
DIALOG.SELECT sel4, sel4$[],"Offene Sternhaufen und Kugelsternhaufen: Darstellung/Projektion:"
IF sel4=1:st00=st00*-1:ENDIF
IF sel4=2:st01=st01*-1:ENDIF
IF sel4=3:st14=st14*-1:ENDIF
IF sel4=4:st02=st02*-1:ENDIF
IF sel4=5:st03=st03*-1:ENDIF
IF sel4=6:st04=st04*-1:ENDIF
IF sel4=7:st05=st05*-1:ENDIF
IF sel4=8:st06=st06*-1:ENDIF
IF sel4=9:st15=st15*-1:ENDIF
IF sel4=10:st16=st16*-1:ENDIF
IF sel4=11:st17=st17*-1:ENDIF
IF sel4=12:st18=st18*-1:ENDIF
IF sel4=13:st19=st19*-1:ENDIF
IF sel4=14:st07=st07*-1:ENDIF
IF sel4=15:st08=st08*-1:ENDIF
IF sel4=16:st20=st20*-1:ENDIF
IF sel4=17:st21=st21*-1:ENDIF
IF sel4=18:st22=st22*-1:ENDIF
IF sel4=19:st23=st23*-1:ENDIF
IF sel4=20:st24=st24*-1:ENDIF
IF sel4=21:st25=st25*-1:ENDIF
IF sel4=22:st26=st26*-1:ENDIF
IF sel4=23:st28=st28*-1:ENDIF
IF sel4=24:st27=st27*-1:ENDIF
IF sel4=25:st29=st29*-1:ENDIF
IF sel4=26:st30=st30*-1:ENDIF
IF sel4=27:st31=st31*-1:ENDIF
IF sel4=28:st32=st32*-1:ENDIF
IF sel4=29:st09=st09*-1:ENDIF
IF sel4=30:st33=st33*-1:ENDIF
IF sel4=31:st34=st34*-1:ENDIF
IF sel4=32:st35=st35*-1:ENDIF
IF sel4=33:st36=st36*-1:ENDIF
IF sel4=34:st10=st10*-1:ENDIF
IF sel4=35:st37=st37*-1:ENDIF
IF sel4=36:st38=st38*-1:ENDIF
IF sel4=37:st39=st39*-1:ENDIF
IF sel4=38:st40=st40*-1:ENDIF
IF sel4=39:st41=st41*-1:ENDIF
IF sel4=40:st11=st11*-1:ENDIF
IF sel4=41:st42=st42*-1:ENDIF
IF sel4=42:st43=st43*-1:ENDIF
IF sel4=43:st44=st44*-1:ENDIF
IF sel4=44:st45=st45*-1:ENDIF
IF sel4=45:st46=st46*-1:ENDIF
IF sel4=46:st47=st47*-1:ENDIF
IF sel4=47:st48=st48*-1:ENDIF
IF sel4=48:st49=st49*-1:ENDIF
IF sel4=49:st50=st50*-1:ENDIF
IF sel4=50:st51=st51*-1:ENDIF
IF sel4=51:st52=st52*-1:ENDIF
IF sel4=52:st53=st53*-1:ENDIF
IF sel4=53:st54=st54*-1:ENDIF
IF sel4=54:st55=st55*-1:ENDIF
IF sel4=55:st12=st12*-1:ENDIF
IF sel4=56:st56=st56*-1:ENDIF
IF sel4=57:st13=st13*-1:ENDIF
IF sel4=58:st57=st57*-1:ENDIF
!!
 IF sel4=_:st__=st__*-1:ENDIF
!!
IF sel4=59:GOSUB streset: st99=st99*-1:ENDIF
IF sel4=60:t06st=t06st*-1:ENDIF
IF sel4=61:RETURN:ENDIF
GOSUB menu4
GOTO std4
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu4:
IF st00=1:st00$=smb$+"  Ebene an":ENDIF
IF st00=-1: st00$="     Ebene aus":ENDIF
IF st01=1:st01$=smb$+"  Plejaden [136.2pc]":ENDIF
IF st01=-1: st01$="     Plejaden [136.2pc]":ENDIF
IF st14=1:st14$=smb$+"  Winnecke 4 [144.2pc]":ENDIF
IF st14=-1: st14$="     Winnecke 4 [144.2pc]":ENDIF
IF st02=1:st02$=smb$+"  Praesepe [177pc]":ENDIF
IF st02=-1: st02$="     Praesepe [177pc]":ENDIF
IF st03=1:st03$=smb$+"  Ptolemaeus [245pc]":ENDIF
IF st03=-1: st03$="     Ptolemaeus [245pc]":ENDIF
IF st04=1:st04$=smb$+"  M39 [253pc]":ENDIF
IF st04=-1: st04$="     M39 [253pc]":ENDIF
IF st05=1:st05$=smb$+"  M34 [460pc]":ENDIF
IF st05=-1: st05$="     M34 [460pc]":ENDIF
IF st06=1:st06$=smb$+"  M6 [488pc]":ENDIF
IF st06=-1: st06$="     M6 [488pc]":ENDIF
IF st15=1:st15$=smb$+"  M47 [490.8pc]":ENDIF
IF st15=-1: st15$="     M47 [490.8pc]":ENDIF
IF st16=1:st16$=smb$+"  M23 [628.8pc]":ENDIF
IF st16=-1: st16$="     M23 [628.8pc]":ENDIF
IF st17=1:st17$=smb$+"  M25 [644.2pc]":ENDIF
IF st17=-1: st17$="     M25 [644.2pc]":ENDIF
IF st18=1:st18$=smb$+"  M41 [705.5pc]":ENDIF
IF st18=-1: st18$="     M41 [705.5pc]":ENDIF
IF st19=1:st19$=smb$+"  M73 [705.5pc]":ENDIF
IF st19=-1: st19$="     M73 [705.5pc]":ENDIF
IF st07=1:st07$=smb$+"  M48 [767pc]":ENDIF
IF st07=-1: st07$="     M48 [767pc]":ENDIF
IF st08=1:st08$=smb$+"  M67 [828pc]":ENDIF
IF st08=-1: st08$="     M67 [828pc]":ENDIF
IF st20=1:st20$=smb$+"  M50 [880.4pc]":ENDIF
IF st20=-1: st20$="     M50 [880.4pc]":ENDIF
IF st21=1:st21$=smb$+"  M35 [911.0pc]":ENDIF
IF st21=-1: st21$="     M35 [911.0pc]":ENDIF
IF st22=1:st22$=smb$+"  M93 [1.0kpc]":ENDIF
IF st22=-1: st22$="     M93 [1.0kpc]":ENDIF
IF st23=1:st23$=smb$+"  M38 [1.1kpc]":ENDIF
IF st23=-1: st23$="     M38 [1.1kpc]":ENDIF
IF st24=1:st24$=smb$+"  M29 [1.1kpc]":ENDIF
IF st24=-1: st24$="     M29 [1.1kpc]":ENDIF
IF st25=1:st25$=smb$+"  M36 [1.3kpc]":ENDIF
IF st25=-1: st25$="     M36 [1.3kpc]":ENDIF
IF st26=1:st26$=smb$+"  M18 [1.3kpc]":ENDIF
IF st26=-1: st26$="     M18 [1.3kpc]":ENDIF
IF st27=1:st27$=smb$+"  M37 [1.4kpc]":ENDIF
IF st27=-1: st27$="     M37 [1.4kpc]":ENDIF
IF st28=1:st28$=smb$+"  M21 [1.3kpc]":ENDIF
IF st28=-1: st28$="     M21 [1.3kpc]":ENDIF
IF st29=1:st29$=smb$+"  M52 [1.4kpc]":ENDIF
IF st29=-1: st29$="     M52 [1.4kpc]":ENDIF
IF st30=1:st30$=smb$+"  M46 [1.5kpc]":ENDIF
IF st30=-1: st30$="     M46 [1.5kpc]":ENDIF
IF st31=1:st31$=smb$+"  M26 [1.6kpc]":ENDIF
IF st31=-1: st31$="     M26 [1.6kpc]":ENDIF
IF st32=1:st32$=smb$+"  Wildenten [1.9kpc]":ENDIF
IF st32=-1: st32$="     Wildenten [1.9kpc]":ENDIF
IF st09=1:st09$=smb$+"  M4 [2.2kpc]":ENDIF
IF st09=-1: st09$="     M4 [2.2kpc]":ENDIF
IF st33=1:st33$=smb$+"  M103 [2.6kpc]":ENDIF
IF st33=-1: st33$="     M103 [2.6kpc]":ENDIF
IF st34=1:st34$=smb$+"  M22 [3.2kpc]":ENDIF
IF st34=-1: st34$="     M22 [3.2kpc]":ENDIF
IF st35=1:st35$=smb$+"  M71 [4.0kpc]":ENDIF
IF st35=-1: st35$="     M71 [4.0kpc]":ENDIF
IF st36=1:st36$=smb$+"  M10 [4.4kpc]":ENDIF
IF st36=-1: st36$="     M10 [4.4kpc]":ENDIF
IF st10=1:st10$=smb$+"  "+CHR$(969)+" Haufen [4.8kpc]":ENDIF
IF st10=-1: st10$="     "+CHR$(969)+" Haufen [4.8kpc]":ENDIF
IF st37=1:st37$=smb$+"  M12 [5.0kpc]":ENDIF
IF st37=-1: st37$="     M12 [5.0kpc]":ENDIF
IF st38=1:st38$=smb$+"  M55 [5.4kpc]":ENDIF
IF st38=-1: st38$="     M55 [5.4kpc]":ENDIF
IF st39=1:st39$=smb$+"  M28 [5.4kpc]":ENDIF
IF st39=-1: st39$="     M28 [5.4kpc]":ENDIF
IF st40=1:st40$=smb$+"  M107 [6.4kpc]":ENDIF
IF st40=-1: st40$="     M107 [6.4kpc]":ENDIF
IF st41=1:st41$=smb$+"  M62 [6.6kpc]":ENDIF
IF st41=-1: st41$="     M62 [6.6kpc]":ENDIF
IF st11=1:st11$=smb$+"  M13 [6.8kpc]":ENDIF
IF st11=-1: st11$="     M13 [6.8kpc]":ENDIF
IF st42=1:st42$=smb$+"  M5 [7.5kpc]":ENDIF
IF st42=-1: st42$="     M5 [7.5kpc]":ENDIF
IF st43=1:st43$=smb$+"  M9 [7.9kpc]":ENDIF
IF st43=-1: st43$="     M9 [7.9kpc]":ENDIF
IF st44=1:st44$=smb$+"  M92 [8.2kpc]":ENDIF
IF st44=-1: st44$="     M92 [8.2kpc]":ENDIF
IF st45=1:st45$=smb$+"  M30 [8.3kpc]":ENDIF
IF st45=-1: st45$="     M30 [8.3kpc]":ENDIF
IF st46=1:st46$=smb$+"  M19 [8.8kpc]":ENDIF
IF st46=-1: st46$="     M19 [8.8kpc]":ENDIF
IF st47=1:st47$=smb$+"  M69 [8.9kpc]":ENDIF
IF st47=-1: st47$="     M69 [8.9kpc]":ENDIF
IF st48=1:st48$=smb$+"  M70 [9.0kpc]":ENDIF
IF st48=-1: st48$="     M70 [9.0kpc]":ENDIF
IF st49=1:st49$=smb$+"  M14 [9.3kpc]":ENDIF
IF st49=-1: st49$="     M14 [9.3kpc]":ENDIF
IF st50=1:st50$=smb$+"  M80 [9.8kpc]":ENDIF
IF st50=-1: st50$="     M80 [9.8kpc]":ENDIF
IF st51=1:st51$=smb$+"  M56 [10.1kpc]":ENDIF
IF st51=-1: st51$="     M56 [10.1kpc]":ENDIF
IF st52=1:st52$=smb$+"  M2 [10.1kpc]":ENDIF
IF st52=-1: st52$="     M2 [10.1kpc]":ENDIF
IF st53=1:st53$=smb$+"  M68 [10.3kpc]":ENDIF
IF st53=-1: st53$="     M68 [10.3kpc]":ENDIF
IF st54=1:st54$=smb$+"  M3 [10.4kpc]":ENDIF
IF st54=-1: st54$="     M3 [10.4kpc]":ENDIF
IF st55=1:st55$=smb$+"  M15 [10.9kpc]":ENDIF
IF st55=-1: st55$="     M15 [10.9kpc]":ENDIF
IF st12=1:st12$=smb$+"  M79 [12.6kpc]":ENDIF
IF st12=-1: st12$="     M79 [12.6kpc]":ENDIF
IF st56=1:st56$=smb$+"  M72 [16.8kpc]":ENDIF
IF st56=-1: st56$="     M72 [16.8kpc]":ENDIF
IF st13=1:st13$=smb$+"  M53 [17.8kpc]":ENDIF
IF st13=-1: st13$="     M53 [17.8kpc]":ENDIF
IF st57=1:st57$=smb$+"  M75 [20.9kpc]":ENDIF
IF st57=-1: st57$="     M75 [20.9kpc]":ENDIF
!!
 IF st__=1:st__$=smb$+"  __ [__pc]":ENDIF
 IF st__=-1: st__$="     __ [__pc]":ENDIF
!!
st99$=smq$+"  Projektion an/aus"
IF t06st=1:st60$=smb$+"  Text":ENDIF
IF t06st=-1:st60$="     Text aus":ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
streset:
IF st99=1
 st01=-1
 st02=-1
 st03=-1
 st04=-1
 st05=-1
 st06=-1
 st07=-1
 st08=-1
 st09=-1
 st10=-1
 st11=-1
 st12=-1
 st13=-1
 st14=-1
 st15=-1
 st16=-1
 st17=-1
 st18=-1
 st19=-1
 st20=-1
 st21=-1
 st22=-1
 st23=-1
 st24=-1
 st25=-1
 st26=-1
 st27=-1
 st28=-1
 st29=-1
 st30=-1
 st31=-1
 st32=-1
 st33=-1
 st34=-1
 st35=-1
 st36=-1
 st37=-1
 st38=-1
 st39=-1
 st40=-1
 st41=-1
 st42=-1
 st43=-1
 st44=-1
 st45=-1
 st46=-1
 st47=-1
 st48=-1
 st49=-1
 st50=-1
 st51=-1
 st52=-1
 st53=-1
 st54=-1
 st55=-1
 st56=-1
 st57=-1
ELSE
 st01=1
 st02=1
 st03=1
 st04=1
 st05=1
 st06=1
 st07=1
 st08=1
 st09=1
 st10=1
 st11=1
 st12=1
 st13=1
 st14=1
 st15=1
 st16=1
 st17=1
 st18=1
 st19=1
 st20=1
 st21=1
 st22=1
 st23=1
 st24=1
 st25=1
 st26=1
 st27=1
 st28=1
 st29=1
 st30=1
 st31=1
 st32=1
 st33=1
 st34=1
 st35=1
 st36=1
 st37=1
 st38=1
 st39=1
 st40=1
 st41=1
 st42=1
 st43=1
 st44=1
 st45=1
 st46=1
 st47=1
 st48=1
 st49=1
 st50=1
 st51=1
 st52=1
 st53=1
 st54=1
 st55=1
 st56=1
 st57=1
ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Dialog Nebel %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog5prm:
nb00=1
nb01=-1
nb02=-1
nb10=-1
nb11=-1
nb12=-1
nb14=-1
nb15=-1
nb16=-1
nb17=-1
nb18=-1
nb19=-1
nb20=-1
nb21=-1
nb22=-1
nb99=-1
t06nb=1
!!
 nb__=-1
!!
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog5:
GOSUB menu5
std5:
ARRAY.LOAD sel5$[],nb00$,nb15$,nb01$,nb16$,nb17$,nb18$, nb19$,nb20$,nb21$,nb22$,nb10$,nb11$,nb12$,nb14$,nb99$,nb23$,"Ok"
DIALOG.SELECT sel5, sel5$[],"Nebel, Planetare Nebel und Supernovae: Darstellung/Projektion:"
IF sel5=1:nb00=nb00*-1:ENDIF
IF sel5=2:nb15=nb15*-1:ENDIF
IF sel5=3:nb01=nb01*-1:ENDIF
IF sel5=4:nb16=nb16*-1:ENDIF
IF sel5=5:nb17=nb17*-1:ENDIF
IF sel5=6:nb18=nb18*-1:ENDIF
IF sel5=7:nb19=nb19*-1:ENDIF
IF sel5=8:nb20=nb20*-1:ENDIF
IF sel5=9:nb21=nb21*-1:ENDIF
IF sel5=10:nb22=nb22*-1:ENDIF
IF sel5=11:nb10=nb10*-1:ENDIF
IF sel5=12:nb11=nb11*-1:ENDIF
IF sel5=13:nb12=nb12*-1:ENDIF
IF sel5=14:nb14=nb14*-1:ENDIF
!!
 IF sel5=__:nb__=nb__*-1:ENDIF
!!
IF sel5=15:GOSUB nbreset: nb99=nb99*-1:ENDIF
IF sel5=16:t06nb=t06nb*-1:ENDIF
IF sel5=17:RETURN:ENDIF
GOSUB menu5
GOTO std5
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu5:
IF nb00=1:nb00$=smb$+"  Ebene an":ENDIF
IF nb00=-1: nb00$="     Ebene aus":ENDIF
IF nb15=1:nb15$=smb$+"  Hantelnebel [400pc]":ENDIF
IF nb15=-1: nb15$="     Hantelnebel [400pc]":ENDIF
IF nb01=1:nb01$=smb$+"  Orionnebel [412pc]":ENDIF
IF nb01=-1: nb01$="     Orionnebel [412pc]":ENDIF
IF nb16=1:nb16$=smb$+"  M78 [490.8pc]":ENDIF
IF nb16=-1: nb16$="     M78 [490.8pc]":ENDIF
IF nb17=1:nb17$=smb$+"  Eulennebel [622.7pc]":ENDIF
IF nb17=-1: nb17$="     Eulennebel [622.7pc]":ENDIF
IF nb18=1:nb18$=smb$+"  M76 [766.9pc]":ENDIF
IF nb18=-1: nb18$="     M76 [766.9pc]":ENDIF
IF nb19=1:nb19$=smb$+"  Ringnebel [787.4pc]":ENDIF
IF nb19=-1: nb19$="     Ringnebel [787.4pc]":ENDIF
IF nb20=1:nb20$=smb$+"  Lagunennebel [1.3kpc]":ENDIF
IF nb20=-1: nb20$="     Lagunennebel [1.3kpc]":ENDIF
IF nb21=1:nb21$=smb$+"  Trifidnebel [1.6kpc]":ENDIF
IF nb21=-1: nb21$="     Trifidnebel [1.6kpc]":ENDIF
IF nb22=1:nb22$=smb$+"  Omeganebel [1.7kpc]":ENDIF
IF nb22=-1: nb22$="     Omeganebel [1.7kpc]":ENDIF
IF nb10=1:nb10$=smb$+"  Krebsnebel [2.0kpc]":ENDIF
IF nb10=-1: nb10$="     Krebsnebel [2.0kpc]":ENDIF
IF nb11=1:nb11$=smb$+"  Adlernebel [2.1kpc]":ENDIF
IF nb11=-1: nb11$="     Adlernebel [2.1kpc]":ENDIF
IF nb12=1:nb12$=smb$+"  Stundenglasnebel [2.5kpc]":ENDIF
IF nb12=-1: nb12$="     Stundenglasnebel [2.5kpc]":ENDIF
IF nb14=1:nb14$=smb$+"  V838 [6.1kpc]":ENDIF
IF nb14=-1: nb14$="     V838 [6.1kpc]":ENDIF
!!
 IF nb__=1:nb__$=smb$+"   __ [__pc]":ENDIF
 IF nb__=-1: nb__$="      __ [__pc]":ENDIF
!!
nb99$=smq$+"  Projektion an/aus"
IF t06nb=1:nb23$=smb$+"  Text":ENDIF
IF t06nb=-1:nb23$="     Text aus":ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nbreset:
IF nb99=1
 nb01=-1
 nb02=-1
 nb10=-1
 nb11=-1
 nb12=-1
 nb14=-1
 nb15=-1
 nb16=-1
 nb17=-1
 nb18=-1
 nb19=-1
 nb20=-1
 nb21=-1
 nb22=-1
ELSE
 nb01=1
 nb02=1
 nb10=1
 nb11=1
 nb12=1
 nb14=1
 nb15=1
 nb16=1
 nb17=1
 nb18=1
 nb19=1
 nb20=1
 nb21=1
 nb22=1
ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Dialog Milchstraße %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog6prm:
gm00=1
gm01=-1
gm02=-1
gm03=-1
gm04=-1
gm05=-1
gm06=-1
gm99=-1
t06gm=1
!!
 gm__=-1
!!
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog6:
GOSUB menu6
std6:
ARRAY.LOAD sel6$[],gm00$,gm05$,gm06$,gm01$,gm02$,gm03$,gm04$,gm99$,gm30$,"Ok"
DIALOG.SELECT sel6, sel6$[],"Milchstraßen Objekte: Darstellung/Projektion:"
IF sel6=1:gm00=gm00*-1:ENDIF
IF sel6=2:gm05=gm05*-1:ENDIF
IF sel6=3:gm06=gm06*-1:ENDIF
IF sel6=4:gm01=gm01*-1:ENDIF
IF sel6=5:gm02=gm02*-1:ENDIF
IF sel6=6:gm03=gm03*-1:ENDIF
IF sel6=7:gm04=gm04*-1:ENDIF
!!
 IF sel6=__:gm__=gm__*-1:ENDIF
!!
IF sel6=8:GOSUB gmreset: gm99=gm99*-1:ENDIF
IF sel6=9:t06gm=t06gm*-1:ENDIF
IF sel6=10:RETURN:ENDIF
GOSUB menu6
GOTO std6
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu6:
IF gm00=1:gm00$=smb$+"  Ebene an":ENDIF
IF gm00=-1: gm00$="     Ebene aus":ENDIF
IF gm05=1:gm05$=smb$+"   Sagittarius Wolke [3.8kpc]":ENDIF
IF gm05=-1: gm05$="      Sagittarius Wolke [3.8kpc]":ENDIF
IF gm06=1:gm06$=smb$+"   Zentrum [4.6kpc]":ENDIF
IF gm06=-1: gm06$="      Zentrum [4.6kpc]":ENDIF
IF gm01=1:gm01$=smb$+"   Sag DEG [22.0kpc]":ENDIF
IF gm01=-1: gm01$="      Sag DEG [22.0kpc]":ENDIF
IF gm02=1:gm02$=smb$+"   M54 [26.8kpc]":ENDIF
IF gm02=-1: gm02$="      M54 [26.8kpc]":ENDIF
IF gm03=1:gm03$=smb$+"   Große Wolke [50.0kpc]":ENDIF
IF gm03=-1: gm03$="      Große Wolke [50.0kpc]":ENDIF
IF gm04=1:gm04$=smb$+"   Kleine Wolke [64.1kpc]":ENDIF
IF gm04=-1: gm04$="      Kleine Wolke [64.1kpc]":ENDIF
!!
 IF gm__=1:gm__$=smb$+"   __ [__kpc]":ENDIF
 IF gm__=-1: gm__$="      __ [__kpc]":ENDIF
!!
gm99$=smq$+"  Projektion an/aus"
IF t06gm=1:gm30$=smb$+"  Text":ENDIF
IF t06gm=-1:gm30$="     Text aus":ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gmreset:
IF gm99=1
 gm01=-1
 gm02=-1
 gm03=-1
 gm04=-1
 gm05=-1
 gm06=-1
ELSE
 gm01=1
 gm02=1
 gm03=1
 gm04=1
 gm05=1
 gm06=1
ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Dialog Galaxien %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog7prm:
gx00=1
gx01=-1
gx02=-1
gx03=-1
gx04=-1
gx05=-1
gx06=-1
gx07=-1
gx08=-1
gx09=-1
gx10=-1
gx11=-1
gx12=-1
gx13=-1
gx14=-1
gx15=-1
gx16=-1
gx17=-1
gx18=-1
gx19=-1
gx20=-1
gx21=-1
gx22=-1
gx23=-1
gx24=-1
gx25=-1
gx26=-1
gx27=-1
gx28=-1
gx29=-1
gx30=-1
gx31=-1
gx32=-1
gx33=-1
gx99=-1
t06gx=1
!!
 gx__=-1
!!
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog7:
GOSUB menu7
std7:
ARRAY.LOAD sel7$[],gx00$,gx01$,gx05$,gx11$,gx12$,gx20$,gx13$,gx02$,gx27$,gx03$,gx21$,gx04$,gx32$,gx10$,gx22$,gx33$,gx29$,gx28$,gx14$,gx23$,gx31$,gx15$,gx26$,gx30$,gx07$,gx17$,gx19$,gx06$,gx16$,gx09$,gx08$,gx25$,gx18$,gx24$,gx99$,gx40$,"Ok"
DIALOG.SELECT sel7, sel7$[],"Galaxien: Darstellung/Projektion:"
IF sel7=1:gx00=gx00*-1:ENDIF
IF sel7=2:gx01=gx01*-1:ENDIF
IF sel7=3:gx05=gx05*-1:ENDIF
IF sel7=4:gx11=gx11*-1:ENDIF
IF sel7=5:gx12=gx12*-1:ENDIF
IF sel7=6:gx20=gx20*-1:ENDIF
IF sel7=7:gx13=gx13*-1:ENDIF
IF sel7=8:gx02=gx02*-1:ENDIF
IF sel7=9:gx27=gx27*-1:ENDIF
IF sel7=10:gx03=gx03*-1:ENDIF
IF sel7=11:gx21=gx21*-1:ENDIF
IF sel7=12:gx04=gx04*-1:ENDIF
IF sel7=13:gx32=gx32*-1:ENDIF
IF sel7=14:gx10=gx10*-1:ENDIF
IF sel7=15:gx22=gx22*-1:ENDIF
IF sel7=16:gx33=gx33*-1:ENDIF
IF sel7=17:gx29=gx29*-1:ENDIF
IF sel7=18:gx28=gx28*-1:ENDIF
IF sel7=19:gx14=gx14*-1:ENDIF
IF sel7=20:gx23=gx23*-1:ENDIF
IF sel7=21:gx31=gx31*-1:ENDIF
IF sel7=22:gx15=gx15*-1:ENDIF
IF sel7=23:gx26=gx26*-1:ENDIF
IF sel7=24:gx30=gx30*-1:ENDIF
IF sel7=25:gx07=gx07*-1:ENDIF
IF sel7=26:gx17=gx17*-1:ENDIF
IF sel7=27:gx19=gx19*-1:ENDIF
IF sel7=28:gx06=gx06*-1:ENDIF
IF sel7=29:gx16=gx16*-1:ENDIF
IF sel7=30:gx09=gx09*-1:ENDIF
IF sel7=31:gx08=gx08*-1:ENDIF
IF sel7=32:gx25=gx25*-1:ENDIF
IF sel7=33:gx18=gx18*-1:ENDIF
IF sel7=34:gx24=gx24*-1:ENDIF
!!
 IF sel7=__:gx__=gx__*-1:ENDIF
!!
IF sel7=35:GOSUB gxreset: gx99=gx99*-1:ENDIF
IF sel7=36:t06gx=t06gx*-1:ENDIF
IF sel7=37:RETURN:ENDIF
GOSUB menu7
GOTO std7
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu7:
IF gx00=1:gx00$=smb$+"  Ebene an":ENDIF
IF gx00=-1: gx00$="     Ebene aus":ENDIF
IF gx01=1:gx01$=smb$+"  Andromeda [0.8Mpc]":ENDIF
IF gx01=-1: gx01$="     Andromeda [777.8kpc]":  ENDIF
IF gx05=1:gx05$=smb$+"  Triangulum [0.9Mpc]":ENDIF
IF gx05=-1: gx05$="     Triangulum [981.6kpc]":ENDIF
IF gx11=1:gx11$=smb$+"  M81 [3.6Mpc]":ENDIF
IF gx11=-1: gx11$="     M81 [3.6Mpc]":ENDIF
IF gx12=1:gx12$=smb$+"  M82 [4.3Mpc]":ENDIF
IF gx12=-1: gx12$="     M82 [4.3Mpc]":ENDIF
IF gx20=1:gx20$=smb$+"  M94 [5Mpc]":ENDIF
IF gx20=-1: gx20$="     M94 [5Mpc]":ENDIF
IF gx13=1:gx13$=smb$+"  M83 [5.2Mpc]":ENDIF
IF gx13=-1: gx13$="     M83 [5.2Mpc]":ENDIF
IF gx02=1:gx02$=smb$+"  M101 [6.4Mpc]":ENDIF
IF gx02=-1: gx02$="     M101 [6.4Mpc]":ENDIF
IF gx27=1:gx27$=smb$+"  M106 [7Mpc]":ENDIF
IF gx27=-1: gx27$="     M106 [7Mpc]":ENDIF
IF gx03=1:gx03$=smb$+"  M51 [7.1Mpc]":ENDIF
IF gx03=-1: gx03$="     M51 [7.1Mpc]":ENDIF
IF gx21=1:gx21$=smb$+"  M95 [9Mpc]":ENDIF
IF gx21=-1: gx21$="     M95 [9Mpc]":ENDIF
IF gx04=1:gx04$=smb$+"  M104 [9Mpc]":ENDIF
IF gx04=-1: gx04$="     M104 [9Mpc]":ENDIF
IF gx32=1:gx32$=smb$+"  M51 [10Mpc]":ENDIF
IF gx32=-1: gx32$="     M51 [10Mpc]":ENDIF
IF gx10=1:gx10$=smb$+"  M74 [10Mpc]":ENDIF
IF gx10=-1: gx10$="     M74 [10Mpc]":ENDIF
IF gx22=1:gx22$=smb$+"  M96 [10Mpc]":ENDIF
IF gx22=-1: gx22$="     M96 [10Mpc]":ENDIF
IF gx33=1:gx33$=smb$+"  M104 [10Mpc]":ENDIF
IF gx33=-1: gx33$="     M104 [10Mpc]":ENDIF
IF gx29=1:gx29$=smb$+"  M108 [10Mpc]":ENDIF
IF gx29=-1: gx29$="     M108 [10Mpc]":ENDIF
IF gx28=1:gx28$=smb$+"  M105 [11Mpc]":ENDIF
IF gx28=-1: gx28$="     M105 [11Mpc]":ENDIF
IF gx14=1:gx14$=smb$+"  M84 [13Mpc]":ENDIF
IF gx14=-1: gx14$="     M84 [13Mpc]":ENDIF
IF gx23=1:gx23$=smb$+"  M98 [14Mpc]":ENDIF
IF gx23=-1: gx23$="     M98 [14Mpc]":ENDIF
IF gx31=1:gx31$=smb$+"  M77 [14.4Mpc]":ENDIF
IF gx31=-1: gx31$="     M77 [14.4Mpc]":ENDIF
IF gx15=1:gx15$=smb$+"  M85 [15Mpc]":ENDIF
IF gx15=-1: gx15$="     M85 [15Mpc]":ENDIF
IF gx26=1:gx26$=smb$+"  M102 [15Mpc]":ENDIF
IF gx26=-1: gx26$="     M102 [15Mpc]":ENDIF
IF gx30=1:gx30$=smb$+"  M109 [15Mpc]":ENDIF
IF gx30=-1: gx30$="     M109 [15Mpc]":ENDIF
IF gx07=1:gx07$=smb$+"  M49 [17Mpc]":ENDIF
IF gx07=-1: gx07$="     M49 [17Mpc]":ENDIF
IF gx17=1:gx17$=smb$+"  M87 [17Mpc]":ENDIF
IF gx17=-1: gx17$="     M87 [17Mpc]":ENDIF
IF gx19=1:gx19$=smb$+"  M89 [17Mpc]":ENDIF
IF gx19=-1: gx19$="     M89 [17Mpc]":ENDIF
IF gx06=1:gx06$=smb$+"  M90 [18Mpc]":ENDIF
IF gx06=-1: gx06$="     M90 [18Mpc]":ENDIF
IF gx16=1:gx16$=smb$+"  M86 [19Mpc]":ENDIF
IF gx16=-1: gx16$="     M86 [19Mpc]":ENDIF
IF gx09=1:gx09$=smb$+"  M91 [19Mpc]":ENDIF
IF gx09=-1: gx09$="     M91 [19Mpc]":ENDIF
IF gx08=1:gx08$=smb$+"  M58 [21Mpc]":ENDIF
IF gx08=-1: gx08$="     M58 [21Mpc]":ENDIF
IF gx25=1:gx25$=smb$+"  M100 [21Mpc]":ENDIF
IF gx25=-1: gx25$="     M100 [21Mpc]":ENDIF
IF gx18=1:gx18$=smb$+"  M88 [25Mpc]":ENDIF
IF gx18=-1: gx18$="     M88 [25Mpc]":ENDIF
IF gx24=1:gx24$=smb$+"  M99 [32Mpc]":ENDIF
IF gx24=-1: gx24$="     M99 [32Mpc]":ENDIF
!!
 IF gx__=1:gx__$=smb$+"  ___ [Mpc]":ENDIF
 IF gx__=-1: gx__$="     ___ [Mpc]":ENDIF
!!
gx99$=smq$+"  Projektion an/aus"
IF t06gx=1:gx40$=smb$+"  Text":ENDIF
IF t06gx=-1:gx40$="     Text aus":ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gxreset:
IF gx99=1
 gx01=-1
 gx02=-1
 gx03=-1
 gx04=-1
 gx05=-1
 gx06=-1
 gx07=-1
 gx08=-1
 gx09=-1
 gx10=-1
 gx11=-1
 gx12=-1
 gx13=-1
 gx14=-1
 gx15=-1
 gx16=-1
 gx17=-1
 gx18=-1
 gx19=-1
 gx20=-1
 gx21=-1
 gx22=-1
 gx23=-1
 gx24=-1
 gx25=-1
 gx26=-1
 gx27=-1
 gx28=-1
 gx29=-1
 gx30=-1
 gx31=-1
 gx32=-1
 gx33=-1
ELSE
 gx01=1
 gx02=1
 gx03=1
 gx04=1
 gx05=1
 gx06=1
 gx07=1
 gx08=1
 gx09=1
 gx10=1
 gx11=1
 gx12=1
 gx13=1
 gx14=1
 gx15=1
 gx16=1
 gx17=1
 gx18=1
 gx19=1
 gx20=1
 gx21=1
 gx22=1
 gx23=1
 gx24=1
 gx25=1
 gx26=1
 gx27=1
 gx28=1
 gx29=1
 gx30=1
 gx31=1
 gx32=1
 gx33=1
ENDIF
RETURN
! % Dialog Galaxienhaufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog8prm:
gh00=1
gh01=-1
gh02=-1
gh03=-1
gh04=-1
gh05=-1
gh06=-1
gh07=-1
gh08=-1
gh09=-1
gh10=-1
gh11=-1
gh12=-1
gh13=-1
gh14=-1
gh15=-1
gh99=-1
t06gh=1
!!
 gh__=-1
!!
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog8:
GOSUB menu8
std8:
ARRAY.LOAD sel8$[],gh00$,gh01$,gh03$,gh04$,gh06$,gh09$,gh02$,gh04$,gh10$,gh11$,gh05$,gh12$,gh13$,gh14$,gh15$,gh08$,gh99$,gh30$,"Ok"
DIALOG.SELECT sel8, sel8$[],"Galaxien Haufen und Superhaufen: Darstellung/Projektion:"
IF sel8=1:gh00=gh00*-1:ENDIF
IF sel8=2:gh01=gh01*-1:ENDIF
IF sel8=3:gh03=gh03*-1:ENDIF
IF sel8=4:gh04=gh04*-1:ENDIF
IF sel8=5:gh06=gh06*-1:ENDIF
IF sel8=6:gh09=gh09*-1:ENDIF
IF sel8=7:gh02=gh02*-1:ENDIF
IF sel8=8:gh04=gh04*-1:ENDIF
IF sel8=9:gh10=gh10*-1:ENDIF
IF sel8=10:gh11=gh11*-1:ENDIF
IF sel8=11:gh05=gh05*-1:ENDIF
IF sel8=12:gh12=gh12*-1:ENDIF
IF sel8=13:gh13=gh13*-1:ENDIF
IF sel8=14:gh14=gh14*-1:ENDIF
IF sel8=15:gh15=gh15*-1:ENDIF
IF sel8=16:gh08=gh08*-1:ENDIF
!!
 IF sel8=__:gh__=gh__*-1:ENDIF
!!
IF sel8=17:GOSUB ghreset: gh99=gh99*-1:ENDIF
IF sel8=18:t06gh=t06gh*-1:ENDIF
IF sel8=19:RETURN:ENDIF
GOSUB menu8
GOTO std8
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu8:
IF gh00=1:gh00$=smb$+"  Ebene an":ENDIF
IF gh00=-1: gh00$="     Ebene aus":ENDIF
IF gh01=1:gh01$=smb$+"  Virgo  [16.5Mpc]":ENDIF
IF gh01=-1: gh01$="     Virgo  [16.5Mpc]":ENDIF
IF gh03=1:gh03$=smb$+"  Fornax [19.0Mpc]":ENDIF
IF gh03=-1: gh03$="     Fornax [19.0Mpc]":ENDIF
IF gh04=1:gh04$=smb$+"  Fornax II [23.0Mpc]":ENDIF
IF gh04=-1: gh04$="     Eridanus [23.0Mpc]":ENDIF
IF gh06=1:gh06$=smb$+"  Antila [40.7Mpc]":ENDIF
IF gh06=-1: gh06$="     Antila [40.7Mpc]":ENDIF
IF gh09=1:gh09$=smb$+"  Hydra [49.1Mpc]":ENDIF
IF gh09=-1: gh09$="     Hydra [49.1Mpc]":ENDIF
IF gh02=1:gh02$=smb$+"  Norma [67.8Mpc]":ENDIF
IF gh02=-1: gh02$="     Norma [67.8Mpc]":ENDIF
IF gh07=1:gh07$=smb$+"  Laniakea S. [76.7Mpc]":ENDIF
IF gh07=-1: gh07$="     Großer Attraktor [76.7Mpc]":ENDIF
IF gh10=1:gh10$=smb$+"  Perseus-Pi. S. [76.7Mpc]":ENDIF
IF gh10=-1: gh10$="     Perseus-Pi. S. [76.7Mpc]":ENDIF
IF gh11=1:gh11$=smb$+"  Coma S. [92.0Mpc]":ENDIF
IF gh11=-1: gh11$="     Coma S. [92.0Mpc]":ENDIF
IF gh05=1:gh05$=smb$+"  Coma [103.0Mpc]":ENDIF
IF gh05=-1: gh05$="     Große Wand [103.0Mpc]":ENDIF
IF gh12=1:gh12$=smb$+"  Ophiuchus S. [113.5Mpc]":ENDIF
IF gh12=-1: gh12$="     Ophiuchus S. [113.5Mpc]":ENDIF
IF gh13=1:gh13$=smb$+"  Leo S. [135.0Mpc]":ENDIF
IF gh13=-1: gh13$="     Leo S. [135.0Mpc]":ENDIF
IF gh14=1:gh14$=smb$+"  Herkules S. [135.3Mpc]":ENDIF
IF gh14=-1: gh14$="     Herkules S. [135.3Mpc]":ENDIF
IF gh15=1:gh15$=smb$+"  Shapley S. [199.4Mpc]":ENDIF
IF gh15=-1: gh15$="     Shapley S. [199.4Mpc]":ENDIF
IF gh08=1:gh08$=smb$+"  Geschoß [1.0Gpc]":ENDIF
IF gh08=-1: gh08$="     Geschoß [1042.9Mpc]":ENDIF
!!
 IF gh__=1:gh__$=smb$+"  ___ [Mpc]":ENDIF
 IF gh__=-1: gh__$="     ___ [Mpc]":ENDIF
!!
gh99$=smq$+"  Projektion an/aus"
IF t06gh=1:gh30$=smb$+"  Text":ENDIF
IF t06gh=-1:gh30$="     Text aus":ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ghreset:
IF gh99=1
 gh01=-1
 gh02=-1
 gh03=-1
 gh04=-1
 gh05=-1
 gh06=-1
 gh07=-1
 gh08=-1
 gh09=-1
 gh10=-1
 gh11=-1
 gh12=-1
 gh13=-1
 gh14=-1
 gh15=-1
ELSE
 gh01=1
 gh02=1
 gh03=1
 gh04=1
 gh05=1
 gh06=1
 gh07=1
 gh08=1
 gh09=1
 gh10=1
 gh11=1
 gh12=1
 gh13=1
 gh14=1
 gh15=1
ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Dialog Quasare %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog9prm:
gq00=1
gq01=-1
gq02=-1
gq03=-1
gq04=-1
gq05=-1
gq06=-1
gq07=-1
gq08=-1
gq09=-1
gq10=-1
gq11=-1
gq12=-1
gq13=-1
gq14=-1
gq15=-1
gq16=-1
gq17=-1
gq18=-1
gq19=-1
gq20=-1
gq99=-1
t06gq=1
!!
 gq__=-1
!!
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog9:
GOSUB menu9
std9:
ARRAY.LOAD sel9$[],gq00$,gq01$,gq13$,gq03$,gq14$,gq04$,gq20$,gq15$,gq05$,gq06$,gq16$,gq07$,gq09$,gq08$,gq17$,gq18$,gq19$,gq02$,gq99$,gq30$,"Ok"
DIALOG.SELECT sel9, sel9$[],"Quasare: Darstellung/Projektion:"
IF sel9=1:gq00=gq00*-1:ENDIF
IF sel9=2:gq01=gq01*-1:ENDIF
IF sel9=3:gq13=gq13*-1:ENDIF
IF sel9=4:gq03=gq03*-1:ENDIF
IF sel9=5:gq14=gq14*-1:ENDIF
IF sel9=6:gq04=gq04*-1:ENDIF
IF sel9=7:gq20=gq20*-1:ENDIF
IF sel9=8:gq15=gq15*-1:ENDIF
IF sel9=9:gq05=gq05*-1:ENDIF
IF sel9=10:gq06=gq06*-1:ENDIF
IF sel9=11:gq16=gq16*-1:ENDIF
IF sel9=12:gq07=gq07*-1:ENDIF
IF sel9=13:gq09=gq09*-1:ENDIF
IF sel9=14:gq08=gq08*-1:ENDIF
IF sel9=15:gq17=gq17*-1:ENDIF
IF sel9=16:gq18=gq18*-1:ENDIF
IF sel9=17:gq19=gq19*-1:ENDIF
IF sel9=18:gq02=gq02*-1:ENDIF
!!
 IF sel9=_:gq__=gq__*-1:ENDIF
!!
IF sel9=19:GOSUB gqreset: gq99=gq99*-1:ENDIF
IF sel9=20:t06gq=t06gq*-1:ENDIF
IF sel9=21:RETURN:ENDIF
GOSUB menu9
GOTO std9
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu9:
IF gq00=1:gq00$=smb$+"  Ebene an":ENDIF
IF gq00=-1: gq00$="     Ebene aus":ENDIF
IF gq01=1:gq01$=smb$+"  UGC 8085 [178Mpc]":ENDIF
IF gq01=-1: gq01$="     UGC 8085 [178Mpc]":ENDIF
IF gq13=1:gq13$=smb$+"  J1430+1339 [306.8Mpc]":ENDIF
IF gq13=-1: gq13$="     J1430+1339 [306.8Mpc]":ENDIF
IF gq03=1:gq03$=smb$+"  3C 273 [736Mpc]":ENDIF
IF gq03=-1: gq03$="     3C 273 [736Mpc]":ENDIF
IF gq14=1:gq14$=smb$+"  CID-42 [1.2Gpc]":ENDIF
IF gq14=-1: gq14$="     CID-42 [1.2Gpc]":ENDIF
IF gq04=1:gq04$=smb$+"  3C 48 [1.22Gpc]":ENDIF
IF gq04=-1: gq04$="     3C 48 [1.22Gpc]":ENDIF
IF gq20=1:gq20$=smb$+"  3C 47 [1.3Gpc]":ENDIF
IF gq20=-1: gq20$="     3C 47 [1.3Gpc]":ENDIF
IF gq15=1:gq15$=smb$+"  3C 279 [1.5Gpc]":ENDIF
IF gq15=-1: gq15$="     3C 279 [1.5Gpc]":ENDIF
IF gq05=1:gq05$=smb$+"  3C 147 [1.56Gpc]":ENDIF
IF gq05=-1: gq05$="     3C 147 [1.56Gpc]":ENDIF
IF gq06=1:gq06$=smb$+"  CTA-102 [2.45Gpc]":ENDIF
IF gq06=-1: gq06$="     CTA-102 [2.45Gpc]":ENDIF
IF gq16=1:gq16$=smb$+"  Einstein Cross [2.5Gpc]":ENDIF
IF gq16=-1: gq16$="     Einstein Cross [2.5Gpc]":ENDIF
IF gq07=1:gq07$=smb$+"  QSO 0957+561 [2.7Gpc]":ENDIF
IF gq07=-1: gq07$="     QSO 0957+561 [2.7Gpc]":ENDIF
IF gq09=1:gq09$=smb$+"  Huge-LQG [2.8Gpc]":ENDIF
IF gq09=-1: gq09$="     Huge-LQG [2.8Gpc]":ENDIF
IF gq08=1:gq08$=smb$+"  3C 9 [3.1Gpc]":ENDIF
IF gq08=-1: gq08$="     3C 9 [3.1Gpc]":ENDIF
IF gq17=1:gq17$=smb$+"  TON 618 [3.3Gpc]":ENDIF
IF gq17=-1: gq17$="     TON 618 [3.3Gpc]":ENDIF
IF gq18=1:gq18$=smb$+"  H1413+117 [3.4Gpc]":ENDIF
IF gq18=-1: gq18$="     H1413+117 [3.4Gpc]":ENDIF
IF gq19=1:gq19$=smb$+"  APM 08279+5255 [7.2Gpc]":ENDIF
IF gq19=-1: gq19$="     APM 08279+5255 [7.2Gpc]":ENDIF
IF gq02=1:gq02$=smb$+"  QSO J0313-1806 [9Gpc]":ENDIF
IF gq02=-1: gq02$="     QSO J0313-1806 [9Gpc]":ENDIF
!!
 IF gq__=1:gq__$=smb$+"  __ [__pc]":ENDIF
 IF gq__=-1: gq__$="     __ [__pc]":ENDIF
!!
gq99$=smq$+"  Projektion an/aus"
IF t06gq=1:gq30$=smb$+"  Text":ENDIF
IF t06gq=-1:gq30$="     Text aus":ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gqreset:
IF gq99=1
 gq01=-1
 gq02=-1
 gq03=-1
 gq04=-1
 gq05=-1
 gq06=-1
 gq07=-1
 gq08=-1
 gq09=-1
 gq10=-1
 gq11=-1
 gq12=-1
 gq13=-1
 gq14=-1
 gq15=-1
 gq16=-1
 gq17=-1
 gq18=-1
 gq19=-1
 gq20=-1
ELSE
 gq01=1
 gq02=1
 gq03=1
 gq04=1
 gq05=1
 gq06=1
 gq07=1
 gq08=1
 gq09=1
 gq10=1
 gq11=1
 gq12=1
 gq13=1
 gq14=1
 gq15=1
 gq16=1
 gq17=1
 gq18=1
 gq19=1
 gq20=1
ENDIF
RETURN
! % Dialog Größenvergleich %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menuvgl:
vg01$="Beteigeuze [3.55AE]"
vg02$="Orionnebel [12Lj]"
vg03$="Aldebaran [0.20AE]"
vg04$= CHR$(945)+" Centauri A [0.006AE]"
vg05$= "Sirius [0.008AE]"
vg06$= "RSGC2-01 [10.75AE]"
ARRAY.LOAD vgl$[],vg04$,vg05$,vg03$,vg01$,vg06$,vg02$
DIALOG.SELECT vglst, vgl$[],"Größenvergleich:"
RETURN 
! % Dialog Skalen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog10prm:
s01=-1
s02=-1
s03=-1
s04=-1
s08=-1
s10=1
t31=-1
t34=-1
t37=-1
t39=-1
t99=-1
t98=-1
RETURN
dialog10:
GOSUB menu10
std10:
ARRAY.LOAD sel10$[],sk01$,sk02$,sk03$,sk06$,sk04$,o01$,o02$,o03$,o04$,o08$,sk05$,o09$,"Ok"
DIALOG.SELECT sel10, sel10$[],"Skalen:"
IF sel10=1:s10=s10*-1:ENDIF
IF sel10=2:t31=t31*-1
 IF t31=1
  INPUT"Stunde h=…",h_,0
  INPUT"Minute min=…",m_,0
  INPUT"Sekunde sec=…",s_,0
  rk$=" "+INT$(h_)+CHR$(688)
  rk$= rk$+INT$(m_)+"'"
  rk$= rk$+INT$(s_)+CHR$(34)
 ENDIF
 IF t31=-1 THEN t39=-1
ENDIF
IF sel10=3:t39=t39*-1
 IF t31=-1 THEN t39=-1
 IF t39=1
  INPUT"Grad °=…",dg_,0
  INPUT"Minute min=…",dm_,0
  INPUT"Sekunde sec=…",ds_,0
  dkl$=" "+INT$(dg_)+"°"
  dkl$= dkl$+INT$(dm_)+"'"
  dkl$= dkl$+INT$(ds_)+CHR$(34)
 ENDIF
ENDIF
IF sel10=4:t99=t99*-1:ENDIF 
IF sel10=5:t34=t34*-1:ENDIF 
IF sel10=6:s01=s01*-1:ENDIF
IF sel10=7:s02=s02*-1:ENDIF
IF sel10=8
 s03=s03*-1
 swu=-1:ur$=""
 IF s07=1 & s03=1
  GOSUB dialogu
 ENDIF
ENDIF
IF sel10=9:s04=s04*-1:ENDIF
IF sel10=10:s08=s08*-1
 IF s08=1 THEN GOSUB dialogk
ENDIF
IF sel10=11
 t37=t37*-1
 IF t37=1 THEN GOSUB menuvgl
ENDIF
IF sel10=12:t98=t98*-1:ENDIF
IF sel10=13:RETURN:ENDIF
GOSUB menu10
GOTO std10
RETURN
menu10:
IF s10=1:sk01$=smb$+"  Entfernungen":ENDIF
IF s10=-1: sk01$="     Entfernungen aus":ENDIF
IF t31=1:sk02$=smb$+"  Rektaszension"+rk$:ENDIF
IF t31=-1: sk02$="     Rektaszension":ENDIF
IF t39=1:sk03$=smb$+"  Deklination"+dkl$:ENDIF
IF t39=-1: sk03$="     Deklination":ENDIF
IF t99=1:sk06$=smb$+"  Tierkreis":ENDIF
IF t99=-1: sk06$="     Tierkreis aus":ENDIF
IF t34=1:sk04$=smb$+"  Himmelsgewölbe":ENDIF
IF t34=-1: sk04$="     Himmelsgewölbe aus":ENDIF
IF s01=1:o01$=smb$+"  Jahreszeiten":ENDIF
IF s01=-1: o01$="     Jahreszeiten aus":ENDIF
IF s02=1:o02$=smb$+"  Monate":ENDIF
IF s02=-1: o02$="     Monate aus":ENDIF
IF s03=1:o03$=smb$+"  Horizont "+ur$:ENDIF
IF s03=-1: o03$="     Horizont aus":ENDIF
IF s04=1:o04$=smb$+"  Erdprojektion":ENDIF
IF s04=-1: o04$="     Erdprojektion aus":ENDIF
IF s08=1:o08$=smb$+"  Kompass "+kp$:ENDIF
IF s08=-1:o08$="     Kompass aus":ENDIF
IF t37=1:sk05$=smb$+"  = "+vgl$[vglst]:ENDIF
IF t37=-1: sk05$="     Größenvergleich aus":ENDIF
IF t98=1:o09$=smb$+"  Historie ":ENDIF
IF t98=-1:o09$="     Historie aus":ENDIF
RETURN
! % Dialog Modus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog3:
r01$="Vollsimulation"
r02$="Simulation"
r03$="Echtzeit"
r04$="Entfernung:"+aed$
r05$="i Information"
ARRAY.LOAD sel3$[],r03$,r02$,r01$,r04$,r05$
DIALOG.SELECT sel3, sel3$[],"Modus:"
IF sel3=1
 INPUT"Zeitrafferfaktor ve=…",vse,1.05:s07=1
ENDIF
IF sel3=2:s07=-1:ENDIF
IF sel3=3
 INPUT"Zeitrafferfaktor vs=…",vsm,1.05:s07=0
ENDIF
IF sel3=4                  %in AE
 ARRAY.LOAD selae0$[],"Astronomische Einheit AE","Lichtjahr Lj","Parsec pc"
 DIALOG.SELECT selae0, selae0$[],"Anfangsentfernung, Einheit [ 1Lj=63241.1AE | 1pc=206264.8AE ]:"
 IF selae0=1:INPUT"Anfangsentfernung AEo=…",aed,1:ENDIF
 IF selae0=2:INPUT"Anfangsentfernung Ljo=…",aed,1
 aed=aed*Lj_:ENDIF
 IF selae0=3:INPUT"Anfangsentfernung pco=…",aed,1
 aed=aed*pc_:ENDIF
 ed=(sx/2.9)/aed           %Anfangsentfernungsfaktor ed
 GOSUB anfangsentfernung
ENDIF
IF sel3=5
 GOSUB dialoginf:GOTO st0
ENDIF
IF s07<>1 THEN ur$=""
RETURN
anfangsentfernung:
IF aed<Lj_:aed$=FORMAT$("#####.#",aed)+"AE":ENDIF
IF aed>=Lj_
 Ljd=aed/Lj_
 IF Ljd<=pcl_:aed$=FORMAT$("#.#",Ljd)+"Lj":ENDIF
 IF Ljd>pcl_
  IF Ljd < pcl_*10^3
  aed$= FORMAT$("###.#",Ljd/pcl_)+"pc":ENDIF
  IF Ljd >= pcl_*10^3 & Ljd< pcl_*10^6
  aed$= FORMAT$("###.#",Ljd/(pcl_*10^3))+"kpc":ENDIF
  IF Ljd >= pcl_*10^6 & Ljd< pcl_*10^9
  aed$= FORMAT$("###.#",Ljd/(pcl_*10^6))+"Mpc":ENDIF
  IF Ljd >= pcl_*10^9
  aed$= FORMAT$("###.#",Ljd/(pcl_*10^9))+"Gpc":ENDIF
 ENDIF
ENDIF
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialoginf:
GR.ORIENTATION 1
GR.SCREEN sx,sy            % Bildschirmformat
mx=sx/2:my=sy/2
GR.SET.STROKE 2
ARRAY.LOAD selinf$[],"i Astronomische Parameter","i Sonnensystem Parameter","i Stern Größenvergleich","i Rotationen im inneren Sonnensystem","i Rotationen im äußeren Sonnensystem","i Sonne-Mond-Erde Distanz"
DIALOG.SELECT selinf, selinf$[],"i Information:"
GOSUB global
IF selinf=1:INCLUDE ssr_parameter1.bas:ENDIF
IF selinf=2:INCLUDE ssr_systemgr.bas  :ENDIF
IF selinf=3:INCLUDE ssr_sterngr.bas   :ENDIF
IF selinf=4:INCLUDE ssr_rotat1.bas    :ENDIF
IF selinf=5:INCLUDE ssr_rotat2.bas    :ENDIF
IF selinf=6:INCLUDE ssr_distanz.bas   :ENDIF
GR.ORIENTATION -1
GR.SCREEN sx,sy            % Bildschirmformat
mx=sx/2:my=sy/2
RETURN 
! % Dialog Uhrzeit, Kalender %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialogu:
x01$="Ja"
x02$="Nein"
ARRAY.LOAD sel4$[],x01$,x02$
DIALOG.SELECT sel4, sel4$[],"Uhrzeit und Kalenderskala:"
IF sel4=1:swu=1:ur$=CHR$(8986):ENDIF
IF sel4=2:swu=-1:ur$="":ENDIF
RETURN
! % Dialog Kompass %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialogk:
k01$="Kompass"
k02$="Position"
k03$="Kompass und Position"
ARRAY.LOAD sel5$[],k01$,k02$,k03$
DIALOG.SELECT sel5, sel5$[],"Kompassoptionen:"
IF sel5=1:swk=1:kp$=CHR$(8251):ENDIF
IF sel5=2:swk=-1:kp$=CHR$(8663):ENDIF
IF sel5=3:swk=0:kp$=CHR$(8251)+CHR$(8663):ENDIF
RETURN
! % Einstellungen Start %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
einstellungen:
FILE.EXISTS fx, "ssr.ini"
IF fx
 TEXT.OPEN r, fsr, "ssr.ini"
 TEXT.READLN fsr, ini$:s00=VAL(ini$)
 TEXT.READLN fsr, ini$:s01=VAL(ini$)
 TEXT.READLN fsr, ini$:s02=VAL(ini$)
 TEXT.READLN fsr, ini$:s03=VAL(ini$)
 TEXT.READLN fsr, ini$:s04=VAL(ini$)
 TEXT.READLN fsr, ini$:u00=VAL(ini$)
 TEXT.READLN fsr, ini$:t00=VAL(ini$)
 TEXT.READLN fsr, ini$:s07=VAL(ini$)
 TEXT.READLN fsr, ini$:s08=VAL(ini$)
 TEXT.READLN fsr, ini$:s09=VAL(ini$)
 TEXT.READLN fsr, ini$:s10=VAL(ini$)
 TEXT.READLN fsr, ini$:s11=VAL(ini$)
 TEXT.READLN fsr, ini$:st00=VAL(ini$)
 TEXT.READLN fsr, ini$:nb00=VAL(ini$)
 TEXT.READLN fsr, ini$:gm00=VAL(ini$)
 TEXT.READLN fsr, ini$:gx00=VAL(ini$)
 TEXT.READLN fsr, ini$:gq00=VAL(ini$)
 TEXT.READLN fsr, ini$:gh00=VAL(ini$)
 TEXT.READLN fsr, ini$:t98=VAL(ini$)
 TEXT.READLN fsr, ini$:t99=VAL(ini$)
 TEXT.READLN fsr, ini$:t01=VAL(ini$)
 TEXT.READLN fsr, ini$:t02=VAL(ini$)
 TEXT.READLN fsr, ini$:t03=VAL(ini$)
 TEXT.READLN fsr, ini$:gx01=VAL(ini$)
 TEXT.READLN fsr, ini$:t05=VAL(ini$)
 TEXT.READLN fsr, ini$:t06=VAL(ini$)
 TEXT.READLN fsr, ini$:t06s=VAL(ini$)
 TEXT.READLN fsr, ini$:t06st=VAL(ini$)
 TEXT.READLN fsr, ini$:t06nb=VAL(ini$)
 TEXT.READLN fsr, ini$:t06gm=VAL(ini$)
 TEXT.READLN fsr, ini$:t06gx=VAL(ini$)
 TEXT.READLN fsr, ini$:t06gh=VAL(ini$)
 TEXT.READLN fsr, ini$:t06gq=VAL(ini$)
 TEXT.READLN fsr, ini$:s99=VAL(ini$)
 TEXT.READLN fsr, ini$:st99=VAL(ini$)
 TEXT.READLN fsr, ini$:nb99=VAL(ini$)
 TEXT.READLN fsr, ini$:gm99=VAL(ini$)
 TEXT.READLN fsr, ini$:gx99=VAL(ini$)
 TEXT.READLN fsr, ini$:gh99=VAL(ini$)
 TEXT.READLN fsr, ini$:gq99=VAL(ini$)
 TEXT.READLN fsr, ini$:t07=VAL(ini$)
 TEXT.READLN fsr, ini$:t08=VAL(ini$)
 TEXT.READLN fsr, ini$:t09=VAL(ini$)
 TEXT.READLN fsr, ini$:t10=VAL(ini$)
 TEXT.READLN fsr, ini$:t11=VAL(ini$)
 TEXT.READLN fsr, ini$:t12=VAL(ini$)
 TEXT.READLN fsr, ini$:t13=VAL(ini$)
 TEXT.READLN fsr, ini$:t14=VAL(ini$)
 TEXT.READLN fsr, ini$:t15=VAL(ini$)
 TEXT.READLN fsr, ini$:st01=VAL(ini$)
 TEXT.READLN fsr, ini$:st02=VAL(ini$)
 TEXT.READLN fsr, ini$:st03=VAL(ini$)
 TEXT.READLN fsr, ini$:st04=VAL(ini$)
 TEXT.READLN fsr, ini$:st05=VAL(ini$)
 TEXT.READLN fsr, ini$:st06=VAL(ini$)
 TEXT.READLN fsr, ini$:st07=VAL(ini$)
 TEXT.READLN fsr, ini$:st08=VAL(ini$)
 TEXT.READLN fsr, ini$:st09=VAL(ini$)
 TEXT.READLN fsr, ini$:st10=VAL(ini$)
 TEXT.READLN fsr, ini$:st11=VAL(ini$)
 TEXT.READLN fsr, ini$:st12=VAL(ini$)
 TEXT.READLN fsr, ini$:st13=VAL(ini$)
 TEXT.READLN fsr, ini$:st14=VAL(ini$)
 TEXT.READLN fsr, ini$:st15=VAL(ini$)
 TEXT.READLN fsr, ini$:st16=VAL(ini$)
 TEXT.READLN fsr, ini$:st17=VAL(ini$)
 TEXT.READLN fsr, ini$:st18=VAL(ini$)
 TEXT.READLN fsr, ini$:st19=VAL(ini$)
 TEXT.READLN fsr, ini$:st20=VAL(ini$)
 TEXT.READLN fsr, ini$:st21=VAL(ini$)
 TEXT.READLN fsr, ini$:st22=VAL(ini$)
 TEXT.READLN fsr, ini$:st23=VAL(ini$)
 TEXT.READLN fsr, ini$:st24=VAL(ini$)
 TEXT.READLN fsr, ini$:st25=VAL(ini$)
 TEXT.READLN fsr, ini$:st26=VAL(ini$)
 TEXT.READLN fsr, ini$:st27=VAL(ini$)
 TEXT.READLN fsr, ini$:st28=VAL(ini$)
 TEXT.READLN fsr, ini$:st29=VAL(ini$)
 TEXT.READLN fsr, ini$:st30=VAL(ini$)
 TEXT.READLN fsr, ini$:st31=VAL(ini$)
 TEXT.READLN fsr, ini$:st32=VAL(ini$)
 TEXT.READLN fsr, ini$:st33=VAL(ini$)
 TEXT.READLN fsr, ini$:st34=VAL(ini$)
 TEXT.READLN fsr, ini$:st35=VAL(ini$)
 TEXT.READLN fsr, ini$:st36=VAL(ini$)
 TEXT.READLN fsr, ini$:st37=VAL(ini$)
 TEXT.READLN fsr, ini$:st38=VAL(ini$)
 TEXT.READLN fsr, ini$:st39=VAL(ini$)
 TEXT.READLN fsr, ini$:st40=VAL(ini$)
 TEXT.READLN fsr, ini$:st41=VAL(ini$)
 TEXT.READLN fsr, ini$:st42=VAL(ini$)
 TEXT.READLN fsr, ini$:st43=VAL(ini$)
 TEXT.READLN fsr, ini$:st44=VAL(ini$)
 TEXT.READLN fsr, ini$:st45=VAL(ini$)
 TEXT.READLN fsr, ini$:st46=VAL(ini$)
 TEXT.READLN fsr, ini$:st47=VAL(ini$)
 TEXT.READLN fsr, ini$:st48=VAL(ini$)
 TEXT.READLN fsr, ini$:st49=VAL(ini$)
 TEXT.READLN fsr, ini$:st50=VAL(ini$)
 TEXT.READLN fsr, ini$:st51=VAL(ini$)
 TEXT.READLN fsr, ini$:st52=VAL(ini$)
 TEXT.READLN fsr, ini$:st53=VAL(ini$)
 TEXT.READLN fsr, ini$:st54=VAL(ini$)
 TEXT.READLN fsr, ini$:st55=VAL(ini$)
 TEXT.READLN fsr, ini$:st56=VAL(ini$)
 TEXT.READLN fsr, ini$:st57=VAL(ini$)
 TEXT.READLN fsr, ini$:t17=VAL(ini$)
 TEXT.READLN fsr, ini$:t18=VAL(ini$)
 TEXT.READLN fsr, ini$:t19=VAL(ini$)
 TEXT.READLN fsr, ini$:t20=VAL(ini$)
 TEXT.READLN fsr, ini$:nb10=VAL(ini$)
 TEXT.READLN fsr, ini$:nb11=VAL(ini$)
 TEXT.READLN fsr, ini$:nb12=VAL(ini$)
 TEXT.READLN fsr, ini$:nb14=VAL(ini$)
 TEXT.READLN fsr, ini$:nb15=VAL(ini$)
 TEXT.READLN fsr, ini$:nb16=VAL(ini$)
 TEXT.READLN fsr, ini$:nb17=VAL(ini$)
 TEXT.READLN fsr, ini$:nb18=VAL(ini$)
 TEXT.READLN fsr, ini$:nb19=VAL(ini$)
 TEXT.READLN fsr, ini$:nb20=VAL(ini$)
 TEXT.READLN fsr, ini$:nb21=VAL(ini$)
 TEXT.READLN fsr, ini$:nb22=VAL(ini$)
 TEXT.READLN fsr, ini$:gm01=VAL(ini$)
 TEXT.READLN fsr, ini$:gm02=VAL(ini$)
 TEXT.READLN fsr, ini$:gm03=VAL(ini$)
 TEXT.READLN fsr, ini$:gm04=VAL(ini$)
 TEXT.READLN fsr, ini$:gm05=VAL(ini$)
 TEXT.READLN fsr, ini$:gm06=VAL(ini$)
 TEXT.READLN fsr, ini$:gx02=VAL(ini$)
 TEXT.READLN fsr, ini$:gx03=VAL(ini$)
 TEXT.READLN fsr, ini$:gx04=VAL(ini$)
 TEXT.READLN fsr, ini$:gx05=VAL(ini$)
 TEXT.READLN fsr, ini$:gx06=VAL(ini$)
 TEXT.READLN fsr, ini$:gx07=VAL(ini$)
 TEXT.READLN fsr, ini$:gx08=VAL(ini$)
 TEXT.READLN fsr, ini$:gx09=VAL(ini$)
 TEXT.READLN fsr, ini$:gx10=VAL(ini$)
 TEXT.READLN fsr, ini$:gx11=VAL(ini$)
 TEXT.READLN fsr, ini$:gx12=VAL(ini$)
 TEXT.READLN fsr, ini$:gx13=VAL(ini$)
 TEXT.READLN fsr, ini$:gx14=VAL(ini$)
 TEXT.READLN fsr, ini$:gx15=VAL(ini$)
 TEXT.READLN fsr, ini$:gx16=VAL(ini$)
 TEXT.READLN fsr, ini$:gx17=VAL(ini$)
 TEXT.READLN fsr, ini$:gx18=VAL(ini$)
 TEXT.READLN fsr, ini$:gx19=VAL(ini$)
 TEXT.READLN fsr, ini$:gx20=VAL(ini$)
 TEXT.READLN fsr, ini$:gx21=VAL(ini$)
 TEXT.READLN fsr, ini$:gx22=VAL(ini$)
 TEXT.READLN fsr, ini$:gx23=VAL(ini$)
 TEXT.READLN fsr, ini$:gx24=VAL(ini$)
 TEXT.READLN fsr, ini$:gx25=VAL(ini$)
 TEXT.READLN fsr, ini$:gx26=VAL(ini$)
 TEXT.READLN fsr, ini$:gx27=VAL(ini$)
 TEXT.READLN fsr, ini$:gx28=VAL(ini$)
 TEXT.READLN fsr, ini$:gx29=VAL(ini$)
 TEXT.READLN fsr, ini$:gx30=VAL(ini$)
 TEXT.READLN fsr, ini$:gx31=VAL(ini$)
 TEXT.READLN fsr, ini$:gx32=VAL(ini$)
 TEXT.READLN fsr, ini$:gx33=VAL(ini$)
 TEXT.READLN fsr, ini$:gh01=VAL(ini$)
 TEXT.READLN fsr, ini$:gh02=VAL(ini$)
 TEXT.READLN fsr, ini$:gh03=VAL(ini$)
 TEXT.READLN fsr, ini$:gh04=VAL(ini$)
 TEXT.READLN fsr, ini$:gh05=VAL(ini$)
 TEXT.READLN fsr, ini$:gh06=VAL(ini$)
 TEXT.READLN fsr, ini$:gh07=VAL(ini$)
 TEXT.READLN fsr, ini$:gh08=VAL(ini$)
 TEXT.READLN fsr, ini$:gh09=VAL(ini$)
 TEXT.READLN fsr, ini$:gh10=VAL(ini$)
 TEXT.READLN fsr, ini$:gh11=VAL(ini$)
 TEXT.READLN fsr, ini$:gh12=VAL(ini$)
 TEXT.READLN fsr, ini$:gh13=VAL(ini$)
 TEXT.READLN fsr, ini$:gh14=VAL(ini$)
 TEXT.READLN fsr, ini$:gh15=VAL(ini$)
 TEXT.READLN fsr, ini$:t31=VAL(ini$)
 TEXT.READLN fsr, ini$:t32=VAL(ini$)
 TEXT.READLN fsr, ini$:t33=VAL(ini$)
 TEXT.READLN fsr, ini$:t34=VAL(ini$)
 TEXT.READLN fsr, ini$:t35=VAL(ini$)
 TEXT.READLN fsr, ini$:t36=VAL(ini$)
 TEXT.READLN fsr, ini$:t37=VAL(ini$)
 TEXT.READLN fsr, ini$:t38=VAL(ini$)
 TEXT.READLN fsr, ini$:t82=VAL(ini$)
 TEXT.READLN fsr, ini$:t83=VAL(ini$)
 TEXT.READLN fsr, ini$:t84=VAL(ini$)
 TEXT.READLN fsr, ini$:t85=VAL(ini$)
 TEXT.READLN fsr, ini$:t86=VAL(ini$)
 TEXT.READLN fsr, ini$:t87=VAL(ini$)
 TEXT.READLN fsr, ini$:t88=VAL(ini$)
 TEXT.READLN fsr, ini$:t89=VAL(ini$)
 TEXT.READLN fsr, ini$:t90=VAL(ini$)
 TEXT.READLN fsr, ini$:t91=VAL(ini$)
 TEXT.READLN fsr, ini$:t92=VAL(ini$)
 TEXT.READLN fsr, ini$:t93=VAL(ini$)
 TEXT.READLN fsr, ini$:t94=VAL(ini$)
 TEXT.READLN fsr, ini$:t95=VAL(ini$)
 TEXT.READLN fsr, ini$:t96=VAL(ini$)
 TEXT.READLN fsr, ini$:t97=VAL(ini$)
 TEXT.READLN fsr, ini$:t100=VAL(ini$)
 TEXT.READLN fsr, ini$:t101=VAL(ini$)
 TEXT.READLN fsr, ini$:t102=VAL(ini$)
 TEXT.READLN fsr, ini$:t103=VAL(ini$)
 TEXT.READLN fsr, ini$:t104=VAL(ini$)
 TEXT.READLN fsr, ini$:t105=VAL(ini$)
 TEXT.READLN fsr, ini$:t106=VAL(ini$)
 TEXT.READLN fsr, ini$:t107=VAL(ini$)
 TEXT.READLN fsr, ini$:t108=VAL(ini$)
 TEXT.READLN fsr, ini$:t109=VAL(ini$)
 TEXT.READLN fsr, ini$:t110=VAL(ini$)
 TEXT.READLN fsr, ini$:t111=VAL(ini$)
 TEXT.READLN fsr, ini$:t112=VAL(ini$)
 TEXT.READLN fsr, ini$:t113=VAL(ini$)
 TEXT.READLN fsr, ini$:t114=VAL(ini$)
 TEXT.READLN fsr, ini$:t115=VAL(ini$)
 TEXT.READLN fsr, ini$:t116=VAL(ini$)
 TEXT.READLN fsr, ini$:t117=VAL(ini$)
 TEXT.READLN fsr, ini$:t118=VAL(ini$)
 TEXT.READLN fsr, ini$:t119=VAL(ini$)
 TEXT.READLN fsr, ini$:t120=VAL(ini$)
 TEXT.READLN fsr, ini$:t121=VAL(ini$)
 TEXT.READLN fsr, ini$:t122=VAL(ini$)
 TEXT.READLN fsr, ini$:t123=VAL(ini$)
 TEXT.READLN fsr, ini$:t124=VAL(ini$)
 TEXT.READLN fsr, ini$:t125=VAL(ini$)
 TEXT.READLN fsr, ini$:t126=VAL(ini$)
 TEXT.READLN fsr, ini$:t127=VAL(ini$)
 TEXT.READLN fsr, ini$:t128=VAL(ini$)
 TEXT.READLN fsr, ini$:t129=VAL(ini$)
 TEXT.READLN fsr, ini$:t130=VAL(ini$)
 TEXT.READLN fsr, ini$:nb01=VAL(ini$)
 TEXT.READLN fsr, ini$:t39=VAL(ini$)
 TEXT.READLN fsr, ini$:gq01=VAL(ini$)
 TEXT.READLN fsr, ini$:gq02=VAL(ini$)
 TEXT.READLN fsr, ini$:gq03=VAL(ini$)
 TEXT.READLN fsr, ini$:gq04=VAL(ini$)
 TEXT.READLN fsr, ini$:gq05=VAL(ini$)
 TEXT.READLN fsr, ini$:gq06=VAL(ini$)
 TEXT.READLN fsr, ini$:gq07=VAL(ini$)
 TEXT.READLN fsr, ini$:gq08=VAL(ini$)
 TEXT.READLN fsr, ini$:gq09=VAL(ini$)
 TEXT.READLN fsr, ini$:gq10=VAL(ini$)
 TEXT.READLN fsr, ini$:gq11=VAL(ini$)
 TEXT.READLN fsr, ini$:gq12=VAL(ini$)
 TEXT.READLN fsr, ini$:gq13=VAL(ini$)
 TEXT.READLN fsr, ini$:gq14=VAL(ini$)
 TEXT.READLN fsr, ini$:gq15=VAL(ini$)
 TEXT.READLN fsr, ini$:gq16=VAL(ini$)
 TEXT.READLN fsr, ini$:gq17=VAL(ini$)
 TEXT.READLN fsr, ini$:gq18=VAL(ini$)
 TEXT.READLN fsr, ini$:gq19=VAL(ini$)
 TEXT.READLN fsr, ini$:gq20=VAL(ini$)
 TEXT.READLN fsr, ini$:u01=VAL(ini$)
 TEXT.READLN fsr, ini$:u02=VAL(ini$)
 TEXT.READLN fsr, ini$:u03=VAL(ini$)
 TEXT.READLN fsr, ini$:u04=VAL(ini$)
 TEXT.READLN fsr, ini$:u05=VAL(ini$)
 TEXT.READLN fsr, ini$:u06=VAL(ini$)
 TEXT.READLN fsr, ini$:u07=VAL(ini$)
 TEXT.READLN fsr, ini$:u08=VAL(ini$)
 TEXT.READLN fsr, ini$:u09=VAL(ini$)
 TEXT.READLN fsr, ini$:u10=VAL(ini$)
 TEXT.READLN fsr, ini$:u11=VAL(ini$)
 TEXT.READLN fsr, ini$:u13=VAL(ini$)
 TEXT.READLN fsr, ini$:u14=VAL(ini$)
 TEXT.READLN fsr, ini$:u15=VAL(ini$)
 TEXT.READLN fsr, ini$:aed=VAL(ini$)
 TEXT.READLN fsr, ini$:aed$=ini$
 TEXT.READLN fsr, ini$:ed=VAL(ini$) %%%
 TEXT.READLN fsr, ini$:swu=VAL(ini$)
 TEXT.READLN fsr, ini$:swk=VAL(ini$)
 TEXT.READLN fsr, ini$:inf=VAL(ini$)
 TEXT.READLN fsr, ini$:vsm=VAL(ini$)
 TEXT.READLN fsr, ini$:vse=VAL(ini$)
 TEXT.READLN fsr, ini$:ae1=VAL(ini$)
 TEXT.READLN fsr, ini$:v=VAL(ini$)
 TEXT.READLN fsr, ini$:sw=VAL(ini$)
 TEXT.READLN fsr, ini$:sec1=VAL(ini$)
 TEXT.READLN fsr, ini$:h_=VAL(ini$)
 TEXT.READLN fsr, ini$:m_=VAL(ini$)
 TEXT.READLN fsr, ini$:s_=VAL(ini$)
 TEXT.READLN fsr, ini$:dg_=VAL(ini$)
 TEXT.READLN fsr, ini$:dm_=VAL(ini$)
 TEXT.READLN fsr, ini$:ds_=VAL(ini$)
 TEXT.READLN fsr, ini$:rk$=ini$
 TEXT.READLN fsr, ini$:dkl$=ini$
 TEXT.READLN fsr, ini$:ur$=ini$
 TEXT.READLN fsr, ini$:kp$=ini$
 TEXT.CLOSE fsr
ELSE                % Voreinstellung
 GOSUB dialogprm
 GOSUB dialog1prm
 GOSUB dialog2prm
 GOSUB dialog4prm
 GOSUB dialog5prm
 GOSUB dialog6prm
 GOSUB dialog7prm
 GOSUB dialog8prm
 GOSUB dialog9prm
 GOSUB dialog10prm
 aed=1              % Entfernung
 aed$=" 1.0AE"
 ed=sx/2.9 %%%%%%%% % Vergrösserungsfaktor
 inf=1              % Startinfofensterschalter
 swu=-1             % Uhrzeit- und Kalenderskala
 ur$=""
 swk=0              % Kompassoption
 kp$=""
 vse=1.05           % Geschwindigkeit 
 vsm=1.05           % Geschwindigkeit Vollsimulation
 v=0.1              % Umlaufgeschwindigkeit bei Simulation
 sw=1               % Vollsimulation Schalter
 sec1=-1            %
ENDIF
RETURN
! % Einstellungen Ende %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fin:
TEXT.OPEN w, fsr, "ssr.ini"
TEXT.WRITELN fsr, s00
TEXT.WRITELN fsr, s01
TEXT.WRITELN fsr, s02
TEXT.WRITELN fsr, s03
TEXT.WRITELN fsr, s04
TEXT.WRITELN fsr, u00
TEXT.WRITELN fsr, t00
TEXT.WRITELN fsr, s07
TEXT.WRITELN fsr, s08
TEXT.WRITELN fsr, s09
TEXT.WRITELN fsr, s10
TEXT.WRITELN fsr, s11
TEXT.WRITELN fsr, st00
TEXT.WRITELN fsr, nb00
TEXT.WRITELN fsr, gm00
TEXT.WRITELN fsr, gx00
TEXT.WRITELN fsr, gq00
TEXT.WRITELN fsr, gh00
TEXT.WRITELN fsr, t98
TEXT.WRITELN fsr, t99
TEXT.WRITELN fsr, t01
TEXT.WRITELN fsr, t02
TEXT.WRITELN fsr, t03
TEXT.WRITELN fsr, gx01
TEXT.WRITELN fsr, t05
TEXT.WRITELN fsr, t06
TEXT.WRITELN fsr, t06s
TEXT.WRITELN fsr, t06st
TEXT.WRITELN fsr, t06nb
TEXT.WRITELN fsr, t06gm
TEXT.WRITELN fsr, t06gx
TEXT.WRITELN fsr, t06gh
TEXT.WRITELN fsr, t06gq
TEXT.WRITELN fsr, s99
TEXT.WRITELN fsr, st99
TEXT.WRITELN fsr, nb99
TEXT.WRITELN fsr, gm99
TEXT.WRITELN fsr, gx99
TEXT.WRITELN fsr, gh99
TEXT.WRITELN fsr, gq99
TEXT.WRITELN fsr, t07
TEXT.WRITELN fsr, t08
TEXT.WRITELN fsr, t09
TEXT.WRITELN fsr, t10
TEXT.WRITELN fsr, t11
TEXT.WRITELN fsr, t12
TEXT.WRITELN fsr, t13
TEXT.WRITELN fsr, t14
TEXT.WRITELN fsr, t15
TEXT.WRITELN fsr, st01
TEXT.WRITELN fsr, st02
TEXT.WRITELN fsr, st03
TEXT.WRITELN fsr, st04
TEXT.WRITELN fsr, st05
TEXT.WRITELN fsr, st06
TEXT.WRITELN fsr, st07
TEXT.WRITELN fsr, st08
TEXT.WRITELN fsr, st09
TEXT.WRITELN fsr, st10
TEXT.WRITELN fsr, st11
TEXT.WRITELN fsr, st12
TEXT.WRITELN fsr, st13
TEXT.WRITELN fsr, st14
TEXT.WRITELN fsr, st15
TEXT.WRITELN fsr, st16
TEXT.WRITELN fsr, st17
TEXT.WRITELN fsr, st18
TEXT.WRITELN fsr, st19
TEXT.WRITELN fsr, st20
TEXT.WRITELN fsr, st21
TEXT.WRITELN fsr, st22
TEXT.WRITELN fsr, st23
TEXT.WRITELN fsr, st24
TEXT.WRITELN fsr, st25
TEXT.WRITELN fsr, st26
TEXT.WRITELN fsr, st27
TEXT.WRITELN fsr, st28
TEXT.WRITELN fsr, st29
TEXT.WRITELN fsr, st30
TEXT.WRITELN fsr, st31
TEXT.WRITELN fsr, st32
TEXT.WRITELN fsr, st33
TEXT.WRITELN fsr, st34
TEXT.WRITELN fsr, st35
TEXT.WRITELN fsr, st36
TEXT.WRITELN fsr, st37
TEXT.WRITELN fsr, st38
TEXT.WRITELN fsr, st39
TEXT.WRITELN fsr, st40
TEXT.WRITELN fsr, st41
TEXT.WRITELN fsr, st42
TEXT.WRITELN fsr, st43
TEXT.WRITELN fsr, st44
TEXT.WRITELN fsr, st45
TEXT.WRITELN fsr, st46
TEXT.WRITELN fsr, st47
TEXT.WRITELN fsr, st48
TEXT.WRITELN fsr, st49
TEXT.WRITELN fsr, st50
TEXT.WRITELN fsr, st51
TEXT.WRITELN fsr, st52
TEXT.WRITELN fsr, st53
TEXT.WRITELN fsr, st54
TEXT.WRITELN fsr, st55
TEXT.WRITELN fsr, st56
TEXT.WRITELN fsr, st57
TEXT.WRITELN fsr, t17
TEXT.WRITELN fsr, t18
TEXT.WRITELN fsr, t19
TEXT.WRITELN fsr, t20
TEXT.WRITELN fsr, nb10
TEXT.WRITELN fsr, nb11
TEXT.WRITELN fsr, nb12
TEXT.WRITELN fsr, nb14
TEXT.WRITELN fsr, nb15
TEXT.WRITELN fsr, nb16
TEXT.WRITELN fsr, nb17
TEXT.WRITELN fsr, nb18
TEXT.WRITELN fsr, nb19
TEXT.WRITELN fsr, nb20
TEXT.WRITELN fsr, nb21
TEXT.WRITELN fsr, nb22
TEXT.WRITELN fsr, gm01
TEXT.WRITELN fsr, gm02
TEXT.WRITELN fsr, gm03
TEXT.WRITELN fsr, gm04
TEXT.WRITELN fsr, gm05
TEXT.WRITELN fsr, gm06
TEXT.WRITELN fsr, gx02
TEXT.WRITELN fsr, gx03
TEXT.WRITELN fsr, gx04
TEXT.WRITELN fsr, gx05
TEXT.WRITELN fsr, gx06
TEXT.WRITELN fsr, gx07
TEXT.WRITELN fsr, gx08
TEXT.WRITELN fsr, gx09
TEXT.WRITELN fsr, gx10
TEXT.WRITELN fsr, gx11
TEXT.WRITELN fsr, gx12
TEXT.WRITELN fsr, gx13
TEXT.WRITELN fsr, gx14
TEXT.WRITELN fsr, gx15
TEXT.WRITELN fsr, gx16
TEXT.WRITELN fsr, gx17
TEXT.WRITELN fsr, gx18
TEXT.WRITELN fsr, gx19
TEXT.WRITELN fsr, gx20
TEXT.WRITELN fsr, gx21
TEXT.WRITELN fsr, gx22
TEXT.WRITELN fsr, gx23
TEXT.WRITELN fsr, gx24
TEXT.WRITELN fsr, gx25
TEXT.WRITELN fsr, gx26
TEXT.WRITELN fsr, gx27
TEXT.WRITELN fsr, gx28
TEXT.WRITELN fsr, gx29
TEXT.WRITELN fsr, gx30
TEXT.WRITELN fsr, gx31
TEXT.WRITELN fsr, gx32
TEXT.WRITELN fsr, gx33
TEXT.WRITELN fsr, gh01
TEXT.WRITELN fsr, gh02
TEXT.WRITELN fsr, gh03
TEXT.WRITELN fsr, gh04
TEXT.WRITELN fsr, gh05
TEXT.WRITELN fsr, gh06
TEXT.WRITELN fsr, gh07
TEXT.WRITELN fsr, gh08
TEXT.WRITELN fsr, gh09
TEXT.WRITELN fsr, gh10
TEXT.WRITELN fsr, gh11
TEXT.WRITELN fsr, gh12
TEXT.WRITELN fsr, gh13
TEXT.WRITELN fsr, gh14
TEXT.WRITELN fsr, gh14
TEXT.WRITELN fsr, t31
TEXT.WRITELN fsr, t32
TEXT.WRITELN fsr, t33
TEXT.WRITELN fsr, t34
TEXT.WRITELN fsr, t35
TEXT.WRITELN fsr, t36
TEXT.WRITELN fsr, t37
TEXT.WRITELN fsr, t38
TEXT.WRITELN fsr, t82
TEXT.WRITELN fsr, t83
TEXT.WRITELN fsr, t84
TEXT.WRITELN fsr, t85
TEXT.WRITELN fsr, t86
TEXT.WRITELN fsr, t87
TEXT.WRITELN fsr, t88
TEXT.WRITELN fsr, t89
TEXT.WRITELN fsr, t90
TEXT.WRITELN fsr, t91
TEXT.WRITELN fsr, t92
TEXT.WRITELN fsr, t93
TEXT.WRITELN fsr, t94
TEXT.WRITELN fsr, t95
TEXT.WRITELN fsr, t96
TEXT.WRITELN fsr, t97
TEXT.WRITELN fsr, t100
TEXT.WRITELN fsr, t101
TEXT.WRITELN fsr, t102
TEXT.WRITELN fsr, t103
TEXT.WRITELN fsr, t104
TEXT.WRITELN fsr, t105
TEXT.WRITELN fsr, t106
TEXT.WRITELN fsr, t107
TEXT.WRITELN fsr, t108
TEXT.WRITELN fsr, t109
TEXT.WRITELN fsr, t110
TEXT.WRITELN fsr, t111
TEXT.WRITELN fsr, t112
TEXT.WRITELN fsr, t113
TEXT.WRITELN fsr, t114
TEXT.WRITELN fsr, t115
TEXT.WRITELN fsr, t116
TEXT.WRITELN fsr, t117
TEXT.WRITELN fsr, t118
TEXT.WRITELN fsr, t119
TEXT.WRITELN fsr, t120
TEXT.WRITELN fsr, t121
TEXT.WRITELN fsr, t122
TEXT.WRITELN fsr, t123
TEXT.WRITELN fsr, t124
TEXT.WRITELN fsr, t125
TEXT.WRITELN fsr, t126
TEXT.WRITELN fsr, t127
TEXT.WRITELN fsr, t128
TEXT.WRITELN fsr, t129
TEXT.WRITELN fsr, t130
TEXT.WRITELN fsr, nb01
TEXT.WRITELN fsr, t39
TEXT.WRITELN fsr, gq01
TEXT.WRITELN fsr, gq02
TEXT.WRITELN fsr, gq03
TEXT.WRITELN fsr, gq04
TEXT.WRITELN fsr, gq05
TEXT.WRITELN fsr, gq06
TEXT.WRITELN fsr, gq07
TEXT.WRITELN fsr, gq08
TEXT.WRITELN fsr, gq09
TEXT.WRITELN fsr, gq10
TEXT.WRITELN fsr, gq11
TEXT.WRITELN fsr, gq12
TEXT.WRITELN fsr, gq13
TEXT.WRITELN fsr, gq14
TEXT.WRITELN fsr, gq15
TEXT.WRITELN fsr, gq16
TEXT.WRITELN fsr, gq17
TEXT.WRITELN fsr, gq18
TEXT.WRITELN fsr, gq19
TEXT.WRITELN fsr, gq20
TEXT.WRITELN fsr, u01
TEXT.WRITELN fsr, u02
TEXT.WRITELN fsr, u03
TEXT.WRITELN fsr, u04
TEXT.WRITELN fsr, u05
TEXT.WRITELN fsr, u06
TEXT.WRITELN fsr, u07
TEXT.WRITELN fsr, u08
TEXT.WRITELN fsr, u09
TEXT.WRITELN fsr, u10
TEXT.WRITELN fsr, u11
TEXT.WRITELN fsr, u13
TEXT.WRITELN fsr, u14
TEXT.WRITELN fsr, u15
TEXT.WRITELN fsr, aed
TEXT.WRITELN fsr, aed$
TEXT.WRITELN fsr, ed
TEXT.WRITELN fsr, swu
TEXT.WRITELN fsr, swk
TEXT.WRITELN fsr, inf
TEXT.WRITELN fsr, vsm
TEXT.WRITELN fsr, vse
TEXT.WRITELN fsr, ae1
TEXT.WRITELN fsr, v
TEXT.WRITELN fsr, sw
TEXT.WRITELN fsr, sec1
TEXT.WRITELN fsr, h_
TEXT.WRITELN fsr, m_
TEXT.WRITELN fsr, s_
TEXT.WRITELN fsr, dg_
TEXT.WRITELN fsr, dm_
TEXT.WRITELN fsr, ds_
TEXT.WRITELN fsr, rk$
TEXT.WRITELN fsr, dkl$
TEXT.WRITELN fsr, ur$
TEXT.WRITELN fsr, kp$
TEXT.CLOSE fsr
CONSOLE.TITLE _name$
PRINT _name$+" SONNENSYSTEMROTATION "+_ver$
PRINT"Copyright "+cr$+" 2020-23 by Dietmar Gerald SCHRAUSSER"
PRINT"https://github.com/Schrausser/SSR"
RETURN
! % ENDE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
