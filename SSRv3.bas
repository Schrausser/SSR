!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                    SONNENSYSTEMROTATION
                   + semper ubique sum +

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
           © 2020-23 by Dietmar Gerald Schrausser
!!
_name$="SSR"
_ver$="v3.7.20"
INCLUDE strg_.inc
INCLUDE ssr.inc
SENSORS.OPEN 3          %
SENSORS.OPEN 8          %
GR.OPEN 255,0,0,0,0,-1  %
GR.SCREEN sx,sy
GOSUB global            % Globale Variablen
c_m=299792458           % c in m/s (exakt, SI)
au_=149597870700        % AE in m (exakt, quasi SI)
pc_=648000/PI()         % pc aus AE (IAU, 2016)
a_=365.25               % Tage pro Jahr
ca_=360/a_              % Korrekturfaktor bei Simulation
GOSUB astroparameter    %
!
INCLUDE ssr_globals1.bas % Globale Parameter (NASA)
INCLUDE ssr_globals2.bas % Globale Parameter (CDS SIMBAD)
!
GR.BITMAP.CREATE scrs, sx,sy
pat$="../../SSR/"
!   
INCLUDE ssr_ini.bas     % ini
GOSUB weitere_ini       %
GOSUB zeit:jx=yr        % Jahr für Simulation
GOSUB tagnr             % Tagnr für Simulation
GOSUB mnt               % Monatslängen
GOSUB dialog            % Hauptmenü
!
st0: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DO 
 GR.SET.STROKE skl      % 1-5
 IF s07=1               % bei Echtzeit
  GOSUB zeit            % Aktuelle Zeit
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
  i=((tg/a_)*360)-135     % Tagposition
  j=0                     % Tagzaehler
  jx=yr                   % Jahr
  !
 ENDIF
 GR.SCREEN sx,sy          % Bildschirmformat
 mx=sx/2:my=sy/2
 IF sx>sy
  swbs=0                  % Schalter Breitformat
 ELSE
  swbs=1                  % Schalter Hochformat
 ENDIF
 !
 mnc=min/60               % Minutentakt
 ae=(sx/2.9)/ed      %%%% % Faktor ed zu AE
 aed=ae
 IF s07=1 THEN v=0        % bei Echtzeit
 i=i+v                    % Tagposition bei Simulation
 nt=nt+v/ca_              % Tagnummer bei Simulation
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
   IF u10=1:GR.COLOR 35,20,30,30,1
  ELSE:    GR.COLOR 75,20,30,30,1: ENDIF
   GR.CIRCLE sn,mx,my,ed*d*c145
   IF u10=1:GR.COLOR cc,10,10,10,1
  ELSE:    GR.COLOR cc,0,0,0,1: ENDIF
   GR.CIRCLE sn,mx,my,ed*d/4
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
  gr1=ed*d*c142
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
   GR.CIRCLE sn,mx,my,ed*d*c142
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
     GR.TEXT.DRAW tx,mx,sx*c142,INT$(24-hr)
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
    GR.TEXT.DRAW tx,mx,sy/4.5,_gd$+dkl$
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
   GR.TEXT.DRAW tx,mx,sy/5,_ga$+rk$
  ENDIF
 ENDIF
 ! % Monate %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF s02=1 
  FOR s=1 TO 12
   GR.ROTATE.START 180-((s/12)*360)-((10/a_)*360),mx,my
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
    GR.TEXT.DRAW tx,mx,my-dis,_tz01$
    GR.ROTATE.END
    GR.ROTATE.START 46,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,_tz02$
    GR.ROTATE.END
    GR.ROTATE.START 75,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,_tz03$
    GR.ROTATE.END
    GR.ROTATE.START 105,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,_tz04$
    GR.ROTATE.END
    GR.ROTATE.START 135,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,_tz05$
    GR.ROTATE.END
    GR.ROTATE.START 165,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,_tz06$
    GR.ROTATE.END
    GR.ROTATE.START 196,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,_tz07$
    GR.ROTATE.END
    GR.ROTATE.START 226,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,_tz08$
    GR.ROTATE.END
    GR.ROTATE.START 256,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,_tz09$
    GR.ROTATE.END
    GR.ROTATE.START 286,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,_tz10$
    GR.ROTATE.END
    GR.ROTATE.START 316,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,_tz11$
    GR.ROTATE.END
    GR.ROTATE.START 345,mx,my
    GR.TEXT.DRAW tx,mx,my-dis,_tz12$
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
   GR.TEXT.DRAW txt,mx,my+grh-c10,"170 Ptolemaeus" % [1]
  ENDIF
  grh=ed*((jx-0)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"0 AD"
  ENDIF
  grh=ed*((jx+1200)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-1200 Troja" %[2]
  ENDIF
  grh=ed*((jx+3500)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-3500 Noah" %[3]
  ENDIF
  grh=ed*((jx+5500)*Lj_)*c145
  IF grh>40
   GR.CIRCLE cl,mx,my,grh
   GR.TEXT.DRAW txt,mx,my+grh-c10,"-5500 Jahr der Welt" %[3]
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
!!
References:
[1]Halma, N. (1813). Composition Mathematique de Claude Ptolemee. Vorwort. Paris.
[2]Eratosthenes. (-220). Chronographai. Verloren, nach Kokkinos, 2009.
[3]Petavius, D. (1630). Uranologion sive systema variorum authorum. S. 351. Lutetiae Parisiorum.
!!
 ! % Grössenvergleich %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF swvgl=1 
  dst=500
  SW.BEGIN vglst
   SW.CASE 4 %%%%%%%%%%%%%%%%%
    gr1=(ed*r_btg_ae)*c142
    GR.COLOR (cc-155),cc,0,0,1
    vglst$="'Beteigeuze'"
    SW.BREAK
   SW.CASE 6 %%%%%%%%%%%%%%%%% 
    dst=Lj_*1400
    gr1=(ed*r_orn_ae)*c142
    GR.COLOR cc/3,cc,cc/3,cc/2,1
    vglst$="'Orionnebel'"
    SW.BREAK
   SW.CASE 2 %%%%%%%%%%%%%%%%%
    gr1=(ed*r_srs_ae)*c142
    GR.COLOR (cc-55),cc,cc,0,1
    vglst$="'Sirius'"
    SW.BREAK
   SW.CASE 1 %%%%%%%%%%%%%%%%%
    gr1=(ed*r_acn_ae)*c142
    GR.COLOR cc-20,cc,cc,cc,1
    vglst$="'"+_ga$+" Centauri A'"
    SW.BREAK
   SW.CASE 3 %%%%%%%%%%%%%%%%%
    gr1=(ed*r_adb_ae)*c142
    GR.COLOR (cc-40),cc,0,0,1
    vglst$="'Aldebaran'"
    SW.BREAK
   SW.CASE 5 %%%%%%%%%%%%%%%%%
    gr1=(ed*r_rsg_ae)*c142
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
 IF gw00=1                   THEN GOSUB weitere
 !
 ! % Simulation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 jc=i-(j*360)
 IF jc>=360-135+10          % Vor
  j=j+1:jx=jx+1:nt=1.25     %%%%%
  !TONE 11500,55
 ENDIF
 IF nt<1                    % Zurück
  j=j-1:jx=jx-1:nt=a_-0.25  %%%%%%%%
  !TONE 11500,55
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
   GR.TEXT.DRAW txt,mx,sy-dtx3,FORMAT$("#####.##",AE)+"AE"
  ENDIF
  IF AE>=Lj_*0.1               % 1Lichtjahr
   GR.COLOR 30,cc,cc,cc,0
   GR.CIRCLE cl,mx,my,mx       % Skala
   GR.COLOR 80,cc,cc,cc,0
   IF AE<Lj_*pcl_
    GR.TEXT.DRAW txt,mx,sy-dtx3,FORMAT$("# ######.##",ae)+"AE"
    GR.TEXT.DRAW txt,mx,sy-dtx2,FORMAT$("#.##",ae/Lj_)+"Lj"
   ENDIF
  ENDIF
  IF AE>=Lj_*pcl_              % 1Parsec
   CLIPBOARD.PUT STR$(ae/pc_)
   GR.TEXT.DRAW txt,mx,sy-dtx3,FORMAT$("###### ###### ######.##",AE)+"AE"
   IF ae<Lj_*(pcl_*10^3)       %
    GR.TEXT.DRAW txt,mx,sy-dtx2,FORMAT$("###.##",ae/pc_)+"pc"
   ENDIF
   IF ae>=Lj_*(pcl_*10^3)      %
    IF ae<Lj_*(pcl_*10^6)      %
     GR.TEXT.DRAW txt,mx,sy-dtx2,FORMAT$("###.##",(ae/pc_)/10^3)+"kpc"
    ENDIF
    IF ae>=Lj_*(pcl_*10^6) & ae<Lj_*(pcl_*10^9)
     GR.TEXT.DRAW txt,mx,sy-dtx2,FORMAT$("# ###### ######.##",(ae/pc_)/10^6)+"Mpc"
    ENDIF
    IF ae>=Lj_*(pcl_*10^9)
     mxd=ae/pc_:IF mxd>=14.25*10^9 THEN mxd=14.25*10^9
     CLIPBOARD.PUT STR$(mxd)
     GR.TEXT.DRAW txt,mx,sy-dtx2,FORMAT$("# ###### ######.##",mxd/10^9)+"Gpc"
    ENDIF
   ENDIF
  ENDIF
  GR.TEXT.ALIGN 3
  IF s07=0                     % bei Vollsimulation
   GR.TEXT.DRAW txt,sx,sy-dtx3,FORMAT$("# ###### ###### ###### ######",v_)+"AE/h"
   GR.TEXT.DRAW txt,sx,sy-dtx2,FORMAT$("# ###### ###### ######",v_c)+"c"
  ENDIF
  IF s07=1                     % bei Echtzeit
   GR.TEXT.DRAW txt,sx,sy-dtx2,FORMAT$("## ###### ######",VAL(y$)-AE/Lj_+1)
  ENDIF
  IF s07=-1                    % bei Simulation
   GR.TEXT.DRAW txt,sx,sy-dtx2,FORMAT$("## ###### ######",jx-AE/Lj_+1)
  ENDIF
 ENDIF
 IF s09=1 % Text %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  IF s07=0                     % bei Vollsimulation
   GR.TEXT.ALIGN 1
   GR.TEXT.DRAW txt,dtx4,dtx1,"SSR SONNENSYSTEMROTATION "+_ver$+" Vollsimulation"
   GR.TEXT.DRAW txt,dtx4,dtx1+dtx1,"Copyright "+_cr$+" 2023 by Dietmar Gerald Schrausser"
  ENDIF
  IF s07=-1                    % bei Simulation
   GR.TEXT.ALIGN 1
   GR.TEXT.DRAW txt,dtx4,dtx1,INT$(jx)
   GR.TEXT.ALIGN 3
   GR.TEXT.DRAW txt,sx,dtx1,INT$(nt+1)+"T"
   GR.TEXT.DRAW txt,sx,sy-dtx3,"Simulation: "+STR$(ROUND(v/0.1,3))+"×"
  ENDIF
  IF s07=1                     % bei Echtzeit
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
  IF ae/pc_<14.25*10^9          % // max Entfernung //
   IF ty<sy/3 THEN ed=ed/vse    %%%%%%%%
  ENDIF
  IF ae>=0.002                  % // min Entfernung //
   IF ty>sy*2/3 THEN ed=ed*vse  %%%%%%%%
  ENDIF
  IF s07=-1                     % bei Simulation
   IF ty<=sy*2/3 & ty>=sy/3
    IF tx<mx THEN v=v+vsmn
    IF tx>mx THEN v=v-vsmn
    IF v>10 THEN v=10           % Grenzwert 100x
    IF v<-10 THEN v=-10         %
   ENDIF
  ENDIF
 ENDIF
 ! % Vollsimulation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF s07=0
  IF sw=1
   ed=ed/vsm %%%%%%%% 
   IF ae/pc_>=vsm_mx:sw=-1:PAUSE 2000:ENDIF
  ENDIF
  IF sw=-1
   ed=ed*vsm %%%%%%%% 
   IF ae<=vsm_mn:sw=1:PAUSE 2000:ENDIF
  ENDIF
  GOSUB zeit
  IF sec<>sec1                % Geschwindigkeit
   sec1=sec
   v_=ABS(ae-ae1)*3600        % AE/h
   v_c=v_*(au_/1000)
   v_c=v_c/c_                 % c
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
ONERROR:
GOSUB fin
END
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
c142=1.42               % 1.42 corr
c10=sy/231              % 10 corr
c01=sx/1080             % 1 corr
c02=c01*2               % 2 corr
cc=255                  % Farbe
dis=sy/5.372            % Tierkreis Distanz
gr_0=sx/400             % allg. Objekt Größe 
swvgl=-1                % sw Grössenvergleich
!ed=ed/aed              % Anfangsentfernung
vgr=1                   % Vergrößerungsfaktor
vgrp0=100               % Vergrößerungsfaktor 0 Planeten
vgrs0=200000            % Vergrößerungsfaktor 0 Sterne
CLIPBOARD.PUT "0"       % Berechnungen
RETURN
! Bei Start %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
astroparameter:
pcm_=pc_*au_            % pc in m 
c_=c_m*3.6              % c in km/h
Lj_m=c_m*31557600       % Lj in m
Lj_=Lj_m/au_            % Lj in AE  
pcl_=pcm_/Lj_m          % pc in Lj
GOSUB sterne            %
GOSUB sternhaufen       %
GOSUB nebel             %
GOSUB milchstrasse      %
GOSUB galaxien          %
GOSUB haufen            %
GOSUB quasare           %
GOSUB weitere_in        %
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
weitere:: INCLUDE ssr_weitere.bas: RETURN 
! % Beobachtbares Universum r=14.25 Gpc %%%%%%%%%%%%%%%%%%
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Objektdarstellung %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objdarst: 
GR.ROTATE.START pos,mx,my
IF ae<200*d                        %Darstellung
 IF symsw=-1 THEN symb=gr_0        %Symbol
 IF symsw=1 THEN symb=rds          %Maßstab
 !IF otype=-1 | symsw=-1
 IF symsw=-1
  GR.CIRCLE cl,mx-ed*d,my-ed*d,symb*vgr
 ENDIF
 !
 !IF otype=0 & symsw=1
 IF symsw=1
  GR.CIRCLE cl,mx-ed*d,my-ed*d,(ed*symb*Lj_)*vgr
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
GOSUB anfangsentfernung %aed$
GOSUB menu
std:
ARRAY.LOAD sel$[],o05$,o06$,o12$,o13$,o14$,o15$,o17$,o16$,o18$,o10$,o09$,o07$,o11$,"Ok",_ex$+"  Exit"
DIALOG.SELECT sel, sel$[],_name$+" SONNENSYSTEMROTATION "+_ver$+" - Ebenen:"
IF sel=1:GOSUB dialog1:ENDIF 
IF sel=2:GOSUB dialog2:ENDIF 
IF sel=3:GOSUB dialog4:ENDIF
IF sel=4:GOSUB dialog5:ENDIF
IF sel=5:GOSUB dialog6:ENDIF
IF sel=6:GOSUB dialog7:ENDIF
IF sel=7:GOSUB dialog8:ENDIF
IF sel=8:GOSUB dialog9:ENDIF
IF sel=9:GOSUB dialog11:ENDIF
IF sel=10:GOSUB dialog10:ENDIF
IF sel=11:s09=s09*-1:ENDIF
IF sel=12:GOSUB dialog3:ENDIF
IF sel=13:s11=s11*-1:ENDIF
IF sel=14:RETURN:   ENDIF
IF sel=15:GOSUB fin: END:  ENDIF
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
IF gw00=1:o18$=smb$+"  Weitere...":ENDIF
IF gw00=-1:o18$="     Weitere aus":ENDIF
IF s07=1:o07$=smq$+"  Echtzeit @ "+aed$:ENDIF
IF s07=-1:o07$= smq$+ "  Simulation @ "+aed$:ENDIF
IF s07=0:o07$=oo$+"  Vollsimulation":ENDIF
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
u16=1
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog1:
GOSUB menu1
std1:
ARRAY.LOAD sel1$[],q00$,q20$,q01$,q02$,q03$,q04$,q05$,q06$,q07$,q08$,q09$,q13$,q14$,q15$,q10$,q12$,q16$,q11$,"Ok"
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
IF sel1=16:GOSUB dlgvgr:vgr_p=_vgr:ENDIF
IF sel1=17:u16=u16*-1:ENDIF
IF sel1=18:u11=u11*-1:ENDIF
IF sel1=19:RETURN:   ENDIF
GOSUB menu1
GOTO std1
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu1:
IF u00=1:q00$=smb$+"  Ebene an":ENDIF
IF u00=-1: q00$="     Ebene aus":ENDIF
IF s00=1:q20$=smb$+"  Umlaufbahnen":ENDIF
IF s00=-1: q20$="     Umlaufbahnen aus":ENDIF
IF u01=1:q01$=smb$+"  Merkur ["+STR$(ROUND(d_mkr_ae,1))+"AE]":ENDIF
IF u01=-1: q01$="     Merkur ["+STR$(ROUND(d_mkr_ae,1))+"AE]":ENDIF
IF u02=1:q02$=smb$+"  Venus ["+STR$(ROUND(d_vns_ae,1))+"AE]":ENDIF
IF u02=-1: q02$="     Venus ["+STR$(ROUND(d_vns_ae,1))+"AE]":ENDIF
IF u03=1:q03$=smb$+"  Mars ["+STR$(ROUND(d_mrs_ae,1))+"AE]":ENDIF
IF u03=-1: q03$="     Mars ["+STR$(ROUND(d_mrs_ae,1))+"AE]":ENDIF
IF u04=1:q04$=smb$+"  Asteroidengürtel [~3.3AE]":ENDIF
IF u04=-1: q04$="     Asteroidengürtel [~3.3AE]":ENDIF
IF u05=1:q05$=smb$+"  Jupiter ["+STR$(ROUND(d_jpt_ae,1))+"AE]":ENDIF
IF u05=-1: q05$="     Jupiter ["+STR$(ROUND(d_jpt_ae,1))+"AE]":ENDIF
IF u06=1:q06$=smb$+"  Saturn ["+STR$(ROUND(d_stn_ae,1))+"AE]":ENDIF
IF u06=-1: q06$="     Saturn ["+STR$(ROUND(d_stn_ae,1))+"AE]":ENDIF
IF u07=1:q07$=smb$+"  Uranus ["+STR$(ROUND(d_urs_ae,1))+"AE]":ENDIF
IF u07=-1: q07$="     Uranus ["+STR$(ROUND(d_urs_ae,1))+"AE]":ENDIF
IF u08=1:q08$=smb$+"  Neptun ["+STR$(ROUND(d_npt_ae,1))+"AE]":ENDIF
IF u08=-1: q08$="     Neptun ["+STR$(ROUND(d_npt_ae,1))+"AE]":ENDIF
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
q12$=smq$+"  Vergrößerung: "+INT$(vgr_p)+" ×"
IF u16=-1:q16$=_smbl$+"    Symbol":ENDIF
IF u16=1:q16$=_mst$+"    Maßstab × "+INT$(vgrp0):ENDIF
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
s101=-1
t06s=1
!!
 t__=-1
!!
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog2:
GOSUB menu2
std2:
ARRAY.LOAD sel2$[],p00$,p01$,p82$,p05$,p35$,p08$,p07$,p36$,p09$,p38$,p03$,p11$,p12$,p33$,p10$,p83$,p02$,p84$,p85$,p86$,p13$,p87$,p88$,p89$,p90$,p91$,p14$,p92$,p93$,p94$,p95$,p96$,p97$,p100$,p101$,p102$,p103$,p104$,p105$,p106$,p107$,p108$,p109$,p110$,p111$,p112$,p113$,p32$,p114$,p115$,p116$,p117$,p118$,p15$,p119$,p120$,p121$,p17$,p122$,p18$,p123$,p124$,p19$,p125$,p126$,p127$,p128$,p20$,p129$,p130$,s99$,s100$,s101$,p06$,"Ok"
DIALOG.SELECT sel2, sel2$[],"Sterne: Darstellung/Projektion:"
IF sel2=1:t00=t00*-1:IF t00=-1 THEN RETURN:ENDIF
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
IF sel2=72
 GOSUB dlgvgr
 vgr_s=_vgr:IF s101=1 THEN vgr_s=vgr_s
 vgr=vgr_s
ENDIF
IF sel2=73:s101=s101*-1:ENDIF
IF sel2=74:t06s=t06s*-1:ENDIF
IF sel2=75:RETURN:   ENDIF
GOSUB menu2
GOTO std2
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu2:
IF t00=1:p00$=smb$+"  Ebene an":ENDIF
IF t00=-1: p00$="     Ebene aus":ENDIF
IF t01=1:p01$=smb$+"  "+_ga$+" Centauri ["+STR$(ROUND(s_d01,1))+"pc]":ENDIF
IF t01=-1: p01$="     "+_ga$+" Centauri ["+STR$(ROUND(s_d01,1))+"pc]":  ENDIF
IF t82=1:p82$=smb$+"  Barnards Stern ["+STR$(ROUND(s_d02,1))+"pc]":ENDIF
IF t82=-1: p82$="     Barnards Stern ["+STR$(ROUND(s_d02,1))+"pc]":ENDIF
IF t05=1:p05$=smb$+"  Sirius ["+STR$(ROUND(s_d03,1))+"pc]":ENDIF
IF t05=-1: p05$="     Sirius ["+STR$(ROUND(s_d03,1))+"pc]":ENDIF
IF t35=1:p35$=smb$+"  Procyon ["+STR$(ROUND(s_d04,1))+"pc]":ENDIF
IF t35=-1: p35$="     Procyon ["+STR$(ROUND(s_d04,1))+"pc]":ENDIF
IF t08=1:p08$=smb$+"  Altair ["+STR$(ROUND(s_d05,1))+"pc]":ENDIF
IF t08=-1: p08$="     Altair ["+STR$(ROUND(s_d05,1))+"pc]":ENDIF
IF t07=1:p07$=smb$+"  Vega ["+STR$(ROUND(s_d06,1))+"pc]":ENDIF
IF t07=-1: p07$="     Vega ["+STR$(ROUND(s_d06,1))+"pc]":ENDIF
IF t36=1:p36$=smb$+"  Fomalhaut ["+STR$(ROUND(s_d07,1))+"pc]":ENDIF
IF t36=-1: p36$="     Fomalhaut ["+STR$(ROUND(s_d07,1))+"pc]":ENDIF
IF t09=1:p09$=smb$+"  Pollux ["+STR$(ROUND(s_d08,1))+"pc]":ENDIF
IF t09=-1: p09$="     Pollux ["+STR$(ROUND(s_d08,1))+"pc]":ENDIF
IF t38=1:p38$=smb$+"  Denebola ["+STR$(ROUND(s_d09,1))+"pc]":ENDIF
IF t38=-1: p38$="     Denebola ["+STR$(ROUND(s_d09,1))+"pc]":ENDIF
IF t03=1:p03$=smb$+"  Arkturus ["+STR$(ROUND(s_d10,1))+"pc]":ENDIF
IF t03=-1: p03$="     Arkturus ["+STR$(ROUND(s_d10,1))+"pc]":ENDIF
IF t11=1:p11$=smb$+"  Capella ["+STR$(ROUND(s_d11,1))+"pc]":ENDIF
IF t11=-1: p11$="     Capella ["+STR$(ROUND(s_d11,1))+"pc]":ENDIF
IF t12=1:p12$=smb$+"  Rasalhague ["+STR$(ROUND(s_d12,1))+"pc]":ENDIF
IF t12=-1: p12$="     Rasalhague ["+STR$(ROUND(s_d12,1))+"pc]":ENDIF
IF t33=1:p33$=smb$+"  Alderamin ["+STR$(ROUND(s_d13,1))+"pc]":ENDIF
IF t33=-1: p33$="     Alderamin ["+STR$(ROUND(s_d13,1))+"pc]":ENDIF
IF t10=1:p10$=smb$+"  Castor ["+STR$(ROUND(s_d14,1))+"pc]":ENDIF
IF t10=-1: p10$="     Castor ["+STR$(ROUND(s_d14,1))+"pc]":ENDIF
IF t83=1:p83$=smb$+"  Caph ["+STR$(ROUND(s_d15,1))+"pc]":ENDIF
IF t83=-1: p83$="     Caph ["+STR$(ROUND(s_d15,1))+"pc]":ENDIF
IF t02=1:p02$=smb$+"  Aldebaran ["+STR$(ROUND(s_d16,1))+"pc]":ENDIF
IF t02=-1: p02$="     Aldebaran ["+STR$(ROUND(s_d16,1))+"pc]":  ENDIF
IF t84=1:p84$=smb$+"  Hamal ["+STR$(ROUND(s_d17,1))+"pc]":ENDIF
IF t84=-1: p84$="     Hamal ["+STR$(ROUND(s_d17,1))+"pc]":ENDIF
IF t85=1:p85$=smb$+"  Unuk ["+STR$(ROUND(s_d18,1))+"pc]":ENDIF
IF t85=-1: p85$="     Unuk ["+STR$(ROUND(s_d18,1))+"pc]":ENDIF
IF t86=1:p86$=smb$+"  Alphecca ["+STR$(ROUND(s_d19,1))+"pc]":ENDIF
IF t86=-1: p86$="     Alphecca ["+STR$(ROUND(s_d19,1))+"pc]":ENDIF
IF t13=1:p13$=smb$+"  Regulus ["+STR$(ROUND(s_d20,1))+"pc]":ENDIF
IF t13=-1: p13$="     Regulus ["+STR$(ROUND(s_d20,1))+"pc]":ENDIF
IF t87=1:p87$=smb$+"  Merak ["+STR$(ROUND(s_d21,1))+"pc]":ENDIF
IF t87=-1: p87$="     Merak ["+STR$(ROUND(s_d21,1))+"pc]":ENDIF
IF t88=1:p88$=smb$+"  Ankaa ["+STR$(ROUND(s_d22,1))+"pc]":ENDIF
IF t88=-1: p88$="     Ankaa ["+STR$(ROUND(s_d22,1))+"pc]":ENDIF
IF t89=1:p89$=smb$+"  Alioth ["+STR$(ROUND(s_d23,1))+"pc]":ENDIF
IF t89=-1: p89$="     Alioth ["+STR$(ROUND(s_d23,1))+"pc]":ENDIF
IF t90=1:p90$=smb$+"  Phecda ["+STR$(ROUND(s_d24,1))+"pc]":ENDIF
IF t90=-1: p90$="     Phecda ["+STR$(ROUND(s_d24,1))+"pc]":ENDIF
IF t91=1:p91$=smb$+"  Gacrux ["+STR$(ROUND(s_d25,1))+"pc]":ENDIF
IF t91=-1: p91$="     Gacrux ["+STR$(ROUND(s_d25,1))+"pc]":ENDIF
IF t14=1:p14$=smb$+"  Algol ["+STR$(ROUND(s_d26,1))+"pc]":ENDIF
IF t14=-1: p14$="     Algol ["+STR$(ROUND(s_d26,1))+"pc]":ENDIF
IF t92=1:p92$=smb$+"  Alpheratz ["+STR$(ROUND(s_d27,1))+"pc]":ENDIF
IF t92=-1: p92$="     Alpheratz ["+STR$(ROUND(s_d27,1))+"pc]":ENDIF
IF t93=1:p93$=smb$+"  Alnair ["+STR$(ROUND(s_d28,1))+"pc]":ENDIF
IF t93=-1: p93$="     Alnair ["+STR$(ROUND(s_d28,1))+"pc]":ENDIF
IF t94=1:p94$=smb$+"  Alhena ["+STR$(ROUND(s_d29,1))+"pc]":ENDIF
IF t94=-1: p94$="     Alhena ["+STR$(ROUND(s_d29,1))+"pc]":ENDIF
IF t95=1:p95$=smb$+"  Vindemiatrix ["+STR$(ROUND(s_d30,1))+"pc]":ENDIF
IF t95=-1: p95$="     Vindemiatrix ["+STR$(ROUND(s_d30,1))+"pc]":ENDIF
IF t96=1:p96$=smb$+"  Dubhe ["+STR$(ROUND(s_d31,1))+"pc]":ENDIF
IF t96=-1: p96$="     Dubhe ["+STR$(ROUND(s_d31,1))+"pc]":ENDIF
IF t97=1:p97$=smb$+"  Algieba ["+STR$(ROUND(s_d32,1))+"pc]":ENDIF
IF t97=-1: p97$="     Algieba ["+STR$(ROUND(s_d32,1))+"pc]":ENDIF
IF t100=1:p100$=smb$+"  Kochab ["+STR$(ROUND(s_d33,1))+"pc]":ENDIF
IF t100=-1: p100$="     Kochab ["+STR$(ROUND(s_d33,1))+"pc]":ENDIF
IF t101=1:p101$=smb$+"  Markab ["+STR$(ROUND(s_d34,1))+"pc]":ENDIF
IF t101=-1: p101$="     Markab ["+STR$(ROUND(s_d34,1))+"pc]":ENDIF
IF t102=1:p102$=smb$+"  Elnath ["+STR$(ROUND(s_d35,1))+"pc]":ENDIF
IF t102=-1: p102$="     Elnath ["+STR$(ROUND(s_d35,1))+"pc]":ENDIF
IF t103=1:p103$=smb$+"  Achernar ["+STR$(ROUND(s_d36,1))+"pc]":ENDIF
IF t103=-1: p103$="     Achernar ["+STR$(ROUND(s_d36,1))+"pc]":ENDIF
IF t104=1:p104$=smb$+"  Kaus Australis ["+STR$(ROUND(s_d37,1))+"pc]":ENDIF
IF t104=-1: p104$="     Kaus Australis ["+STR$(ROUND(s_d37,1))+"pc]":ENDIF
IF t105=1:p105$=smb$+"  Eltanin ["+STR$(ROUND(s_d38,1))+"pc]":ENDIF
IF t105=-1: p105$="     Eltanin ["+STR$(ROUND(s_d38,1))+"pc]":ENDIF
IF t106=1:p106$=smb$+"  Alphard ["+STR$(ROUND(s_d39,1))+"pc]":ENDIF
IF t106=-1: p106$="     Alphard ["+STR$(ROUND(s_d39,1))+"pc]":ENDIF
IF t107=1:p107$=smb$+"  Scheat ["+STR$(ROUND(s_d40,1))+"pc]":ENDIF
IF t107=-1: p107$="     Scheat ["+STR$(ROUND(s_d40,1))+"pc]":ENDIF
IF t108=1:p108$=smb$+"  Mirach ["+STR$(ROUND(s_d41,1))+"pc]":ENDIF
IF t108=-1: p108$="     Mirach ["+STR$(ROUND(s_d41,1))+"pc]":ENDIF
IF t109=1:p109$=smb$+"  Nunki ["+STR$(ROUND(s_d42,1))+"pc]":ENDIF
IF t109=-1: p109$="     Nunki ["+STR$(ROUND(s_d42,1))+"pc]":ENDIF
IF t110=1:p110$=smb$+"  Schedar ["+STR$(ROUND(s_d43,1))+"pc]":ENDIF
IF t110=-1: p110$="     Schedar ["+STR$(ROUND(s_d43,1))+"pc]":ENDIF
IF t111=1:p111$=smb$+"  Izar ["+STR$(ROUND(s_d44,1))+"pc]":ENDIF
IF t111=-1: p111$="     Izar ["+STR$(ROUND(s_d44,1))+"pc]":ENDIF
IF t112=1:p112$=smb$+"  Menkar ["+STR$(ROUND(s_d45,1))+"pc]":ENDIF
IF t112=-1: p112$="     Menkar ["+STR$(ROUND(s_d45,1))+"pc]":ENDIF
IF t113=1:p113$=smb$+"  Bellatrix ["+STR$(ROUND(s_d46,1))+"pc]":ENDIF
IF t113=-1: p113$="     Bellatrix ["+STR$(ROUND(s_d46,1))+"pc]":ENDIF
IF t32=1:p32$=smb$+"  Spica ["+STR$(ROUND(s_d47,1))+"pc]":ENDIF
IF t32=-1: p32$="     Spica ["+STR$(ROUND(s_d47,1))+"pc]":ENDIF
IF t114=1:p114$=smb$+"  Deneb Kaitos ["+STR$(ROUND(s_d48,1))+"pc]":ENDIF
IF t114=-1: p114$="     Deneb Kaitos ["+STR$(ROUND(s_d48,1))+"pc]":ENDIF
IF t115=1:p115$=smb$+"  Canopus ["+STR$(ROUND(s_d49,1))+"pc]":ENDIF
IF t115=-1: p115$="     Canopus ["+STR$(ROUND(s_d49,1))+"pc]":ENDIF
IF t116=1:p116$=smb$+"  Acrux ["+STR$(ROUND(s_d50,1))+"pc]":ENDIF
IF t116=-1: p116$="     Acrux ["+STR$(ROUND(s_d50,1))+"pc]":ENDIF
IF t117=1:p117$=smb$+"  Hadar ["+STR$(ROUND(s_d51,1))+"pc]":ENDIF
IF t117=-1: p117$="     Hadar ["+STR$(ROUND(s_d51,1))+"pc]":ENDIF
IF t118=1:p118$=smb$+"  Polaris ["+STR$(ROUND(s_d52,1))+"pc]":ENDIF
IF t118=-1: p118$="     Polaris ["+STR$(ROUND(s_d52,1))+"pc]":ENDIF
IF t15=1:p15$=smb$+"  Mira ["+STR$(ROUND(s_d53,1))+"pc]":ENDIF
IF t15=-1: p15$="     Mira ["+STR$(ROUND(s_d53,1))+"pc]":ENDIF
IF t119=1:p119$=smb$+"  Adhara ["+STR$(ROUND(s_d54,1))+"pc]":ENDIF
IF t119=-1: p119$="     Adhara ["+STR$(ROUND(s_d54,1))+"pc]":ENDIF
IF t120=1:p120$=smb$+"  Algenib ["+STR$(ROUND(s_d55,1))+"pc]":ENDIF
IF t120=-1: p120$="     Algenib ["+STR$(ROUND(s_d55,1))+"pc]":ENDIF
IF t121=1:p121$=smb$+"  Mirfak ["+STR$(ROUND(s_d56,1))+"pc]":ENDIF
IF t121=-1: p121$="     Mirfak ["+STR$(ROUND(s_d56,1))+"pc]":ENDIF
IF t17=1:p17$=smb$+"  Antares ["+STR$(ROUND(s_d57,1))+"pc]":ENDIF
IF t17=-1: p17$="     Antares ["+STR$(ROUND(s_d57,1))+"pc]":ENDIF
IF t122=1:p122$=smb$+"  Shaula ["+STR$(ROUND(s_d58,1))+"pc]":ENDIF
IF t122=-1: p122$="     Shaula ["+STR$(ROUND(s_d58,1))+"pc]":ENDIF
IF t18=1:p18$=smb$+"  Beteigeuze ["+STR$(ROUND(s_d59,1))+"pc]":ENDIF
IF t18=-1: p18$="     Beteigeuze ["+STR$(ROUND(s_d59,1))+"pc]":ENDIF
IF t123=1:p123$=smb$+"  Saiph ["+STR$(ROUND(s_d60,1))+"pc]":ENDIF
IF t123=-1: p123$="     Saiph ["+STR$(ROUND(s_d60,1))+"pc]":ENDIF
IF t124=1:p124$=smb$+"  Enif ["+STR$(ROUND(s_d61,1))+"pc]":ENDIF
IF t124=-1: p124$="     Enif ["+STR$(ROUND(s_d61,1))+"pc]":ENDIF
IF t19=1:p19$=smb$+"  Rigel ["+STR$(ROUND(s_d62,1))+"pc]":ENDIF
IF t19=-1: p19$="     Rigel ["+STR$(ROUND(s_d62,1))+"pc]":ENDIF
IF t125=1:p125$=smb$+"  Mintaka ["+STR$(ROUND(s_d63,1))+"pc]":ENDIF
IF t125=-1: p125$="     Mintaka ["+STR$(ROUND(s_d63,1))+"pc]":ENDIF
IF t126=1:p126$=smb$+"  Alnitak ["+STR$(ROUND(s_d64,1))+"pc]":ENDIF
IF t126=-1: p126$="     Alnitak ["+STR$(ROUND(s_d64,1))+"pc]":ENDIF
IF t127=1:p127$=smb$+"  Alnilam ["+STR$(ROUND(s_d65,1))+"pc]":ENDIF
IF t127=-1: p127$="     Alnilam ["+STR$(ROUND(s_d65,1))+"pc]":ENDIF
IF t128=1:p128$=smb$+"  Arneb ["+STR$(ROUND(s_d66,1))+"pc]":ENDIF
IF t128=-1: p128$="     Arneb ["+STR$(ROUND(s_d66,1))+"pc]":ENDIF
IF t20=1:p20$=smb$+"  Deneb ["+STR$(ROUND(s_d67/1000,1))+"kpc]":ENDIF
IF t20=-1: p20$="     Deneb ["+STR$(ROUND(s_d67,1))+"pc]":ENDIF
IF t129=1:p129$=smb$+"  RSGC2-01 ["+STR$(ROUND(s_d68/1000,1))+"kpc]":ENDIF
IF t129=-1: p129$="     RSGC2-01 ["+STR$(ROUND(s_d68/1000,1))+"kpc]":ENDIF
IF t130=1:p130$=smb$+"  RSGC-F01 ["+STR$(ROUND(s_d69/1000,1))+"kpc]":ENDIF
IF t130=-1: p130$="     RSGC-F01 ["+STR$(ROUND(s_d69/1000,1))+"kpc]":ENDIF
!!
 IF t__=1:p__$=smb$+"  __ [__pc]":ENDIF
 IF t__=-1: p__$="     __ [__pc]":ENDIF
!!
s99$=smq$+"  Projektion an/aus"
s100$=smq$+"  Vergrößerung: "+INT$(vgr_s)+" ×"
IF s101=-1:s101$=_smbl$+"    Symbol":ENDIF
IF s101=1:s101$=_mst$+"    Maßstab × "+INT$(vgrs0):ENDIF
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
st101=1 %%%
t06st=1
!!
 st__=-1
!!
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog4:
GOSUB menu4
std4:
ARRAY.LOAD sel4$[],st00$,st01$,st14$,st02$,st03$,st04$,st05$,st06$,st15$,st16$,st17$,st18$,st19$,st07$,st08$,st20$,st21$,st22$,st23$,st24$,st25$,st26$,st27$,st28$,st29$,st30$,st31$,st32$,st09$,st33$,st34$,st35$,st36$,st10$,st37$,st38$,st39$,st40$,st41$,st11$,st42$,st43$,st44$,st45$,st46$,st47$,st48$,st49$,st50$,st51$,st52$,st53$,st54$,st55$,st12$,st56$,st13$,st57$,st99$,st100$,st101$,st60$,"Ok"
DIALOG.SELECT sel4, sel4$[],"Offene Sternhaufen und Kugelsternhaufen: Darstellung/Projektion:"
IF sel4=1:st00=st00*-1:IF st00=-1 THEN RETURN:ENDIF
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
IF sel4=23:st27=st27*-1:ENDIF
IF sel4=24:st28=st28*-1:ENDIF
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
IF sel4=57:st57=st57*-1:ENDIF
IF sel4=58:st13=st13*-1:ENDIF
!!
 IF sel4=_:st__=st__*-1:ENDIF
!!
IF sel4=59:GOSUB streset: st99=st99*-1:ENDIF
IF sel4=60
 GOSUB dlgvgr
 vgr_st=_vgr:vgr=vgr_st
ENDIF
IF sel4=61:st101=st101*-1:ENDIF
IF sel4=62:t06st=t06st*-1:ENDIF
IF sel4=63:RETURN:ENDIF
GOSUB menu4
GOTO std4
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu4:
IF st00=1:st00$=smb$+"  Ebene an":ENDIF
IF st00=-1: st00$="     Ebene aus":ENDIF
IF st01=1:st01$=smb$+"  Plejaden ["+STR$(ROUND(st_d01,1))+"pc]":ENDIF
IF st01=-1: st01$="     Plejaden ["+STR$(ROUND(st_d01,1))+"pc]":ENDIF
IF st14=1:st14$=smb$+"  Winnecke 4 ["+STR$(ROUND(st_d02,1))+"pc]":ENDIF
IF st14=-1: st14$="     Winnecke 4 ["+STR$(ROUND(st_d02,1))+"pc]":ENDIF
IF st02=1:st02$=smb$+"  Praesepe ["+STR$(ROUND(st_d03,1))+"pc]":ENDIF
IF st02=-1: st02$="     Praesepe ["+STR$(ROUND(st_d03,1))+"pc]":ENDIF
IF st03=1:st03$=smb$+"  Ptolemaeus ["+STR$(ROUND(st_d04,1))+"pc]":ENDIF
IF st03=-1: st03$="     Ptolemaeus ["+STR$(ROUND(st_d04,1))+"pc]":ENDIF
IF st04=1:st04$=smb$+"  M39 ["+STR$(ROUND(st_d05,1))+"pc]":ENDIF
IF st04=-1: st04$="     M39 ["+STR$(ROUND(st_d05,1))+"pc]":ENDIF
IF st05=1:st05$=smb$+"  M34 ["+STR$(ROUND(st_d06,1))+"pc]":ENDIF
IF st05=-1: st05$="     M34 ["+STR$(ROUND(st_d06,1))+"pc]":ENDIF
IF st06=1:st06$=smb$+"  M6 ["+STR$(ROUND(st_d07,1))+"pc]":ENDIF
IF st06=-1: st06$="     M6 ["+STR$(ROUND(st_d07,1))+"pc]":ENDIF
IF st15=1:st15$=smb$+"  M47 ["+STR$(ROUND(st_d08,1))+"pc]":ENDIF
IF st15=-1: st15$="     M47 ["+STR$(ROUND(st_d08,1))+"pc]":ENDIF
IF st16=1:st16$=smb$+"  M23 ["+STR$(ROUND(st_d09,1))+"pc]":ENDIF
IF st16=-1: st16$="     M23 ["+STR$(ROUND(st_d09,1))+"pc]":ENDIF
IF st17=1:st17$=smb$+"  M25 ["+STR$(ROUND(st_d10,1))+"pc]":ENDIF
IF st17=-1: st17$="     M25 ["+STR$(ROUND(st_d10,1))+"pc]":ENDIF
IF st18=1:st18$=smb$+"  M41 ["+STR$(ROUND(st_d11,1))+"pc]":ENDIF
IF st18=-1: st18$="     M41 ["+STR$(ROUND(st_d11,1))+"pc]":ENDIF
IF st19=1:st19$=smb$+"  M73 ["+STR$(ROUND(st_d12,1))+"pc]":ENDIF
IF st19=-1: st19$="     M73 ["+STR$(ROUND(st_d12,1))+"pc]":ENDIF
IF st07=1:st07$=smb$+"  M48 ["+STR$(ROUND(st_d13,1))+"pc]":ENDIF
IF st07=-1: st07$="     M48 ["+STR$(ROUND(st_d13,1))+"pc]":ENDIF
IF st08=1:st08$=smb$+"  M67 ["+STR$(ROUND(st_d14,1))+"pc]":ENDIF
IF st08=-1: st08$="     M67 ["+STR$(ROUND(st_d14,1))+"pc]":ENDIF
IF st20=1:st20$=smb$+"  M50 ["+STR$(ROUND(st_d15,1))+"pc]":ENDIF
IF st20=-1: st20$="     M50 ["+STR$(ROUND(st_d15,1))+"pc]":ENDIF
IF st21=1:st21$=smb$+"  M35 ["+STR$(ROUND(st_d16,1))+"pc]":ENDIF
IF st21=-1: st21$="     M35 ["+STR$(ROUND(st_d16,1))+"pc]":ENDIF
IF st22=1:st22$=smb$+"  M93 ["+STR$(ROUND(st_d17/10^3,1))+"kpc]":ENDIF
IF st22=-1: st22$="     M93 ["+STR$(ROUND(st_d17/10^3,1))+"kpc]":ENDIF
IF st23=1:st23$=smb$+"  M38 ["+STR$(ROUND(st_d18/10^3,1))+"kpc]":ENDIF
IF st23=-1: st23$="     M38 ["+STR$(ROUND(st_d18/10^3,1))+"kpc]":ENDIF
IF st24=1:st24$=smb$+"  M29 ["+STR$(ROUND(st_d19/10^3,1))+"kpc]":ENDIF
IF st24=-1: st24$="     M29 ["+STR$(ROUND(st_d19/10^3,1))+"kpc]":ENDIF
IF st25=1:st25$=smb$+"  M36 ["+STR$(ROUND(st_d20/10^3,1))+"kpc]":ENDIF
IF st25=-1: st25$="     M36 ["+STR$(ROUND(st_d20/10^3,1))+"kpc]":ENDIF
IF st26=1:st26$=smb$+"  M18 ["+STR$(ROUND(st_d21/10^3,1))+"kpc]":ENDIF
IF st26=-1: st26$="     M18 ["+STR$(ROUND(st_d21/10^3,1))+"kpc]":ENDIF
IF st28=1:st28$=smb$+"  M21 ["+STR$(ROUND(st_d23/10^3,1))+"kpc]":ENDIF
IF st28=-1: st28$="     M21 ["+STR$(ROUND(st_d23/10^3,1))+"kpc]":ENDIF
IF st27=1:st27$=smb$+"  M37 ["+STR$(ROUND(st_d22/10^3,1))+"kpc]":ENDIF
IF st27=-1: st27$="     M37 ["+STR$(ROUND(st_d22/10^3,1))+"kpc]":ENDIF
IF st29=1:st29$=smb$+"  M52 ["+STR$(ROUND(st_d24/10^3,1))+"kpc]":ENDIF
IF st29=-1: st29$="     M52 ["+STR$(ROUND(st_d24/10^3,1))+"kpc]":ENDIF
IF st30=1:st30$=smb$+"  M46 ["+STR$(ROUND(st_d25/10^3,1))+"kpc]":ENDIF
IF st30=-1: st30$="     M46 ["+STR$(ROUND(st_d25/10^3,1))+"kpc]":ENDIF
IF st31=1:st31$=smb$+"  M26 ["+STR$(ROUND(st_d26/10^3,1))+"kpc]":ENDIF
IF st31=-1: st31$="     M26 ["+STR$(ROUND(st_d26/10^3,1))+"kpc]":ENDIF
IF st32=1:st32$=smb$+"  Wildenten ["+STR$(ROUND(st_d27/10^3,1))+"kpc]":ENDIF
IF st32=-1: st32$="     Wildenten ["+STR$(ROUND(st_d27/10^3,1))+"kpc]":ENDIF
IF st09=1:st09$=smb$+"  M4 ["+STR$(ROUND(st_d28/10^3,1))+"kpc]":ENDIF
IF st09=-1: st09$="     M4 ["+STR$(ROUND(st_d28/10^3,1))+"kpc]":ENDIF
IF st33=1:st33$=smb$+"  M103 ["+STR$(ROUND(st_d29/10^3,1))+"kpc]":ENDIF
IF st33=-1: st33$="     M103 ["+STR$(ROUND(st_d29/10^3,1))+"kpc]":ENDIF
IF st34=1:st34$=smb$+"  M22 ["+STR$(ROUND(st_d30/10^3,1))+"kpc]":ENDIF
IF st34=-1: st34$="     M22 ["+STR$(ROUND(st_d30/10^3,1))+"kpc]":ENDIF
IF st35=1:st35$=smb$+"  M71 ["+STR$(ROUND(st_d31/10^3,1))+"kpc]":ENDIF
IF st35=-1: st35$="     M71 ["+STR$(ROUND(st_d31/10^3,1))+"kpc]":ENDIF
IF st36=1:st36$=smb$+"  M10 ["+STR$(ROUND(st_d32/10^3,1))+"kpc]":ENDIF
IF st36=-1: st36$="     M10 ["+STR$(ROUND(st_d32/10^3,1))+"kpc]":ENDIF
IF st10=1:st10$=smb$+"  "+_go$+" Haufen ["+STR$(ROUND(st_d33/10^3,1))+"kpc]":ENDIF
IF st10=-1: st10$="     "+_go$+" Haufen ["+STR$(ROUND(st_d33/10^3,1))+"kpc]":ENDIF
IF st37=1:st37$=smb$+"  M12 ["+STR$(ROUND(st_d34/10^3,1))+"kpc]":ENDIF
IF st37=-1: st37$="     M12 ["+STR$(ROUND(st_d34/10^3,1))+"kpc]":ENDIF
IF st38=1:st38$=smb$+"  M55 ["+STR$(ROUND(st_d35/10^3,1))+"kpc]":ENDIF
IF st38=-1: st38$="     M55 ["+STR$(ROUND(st_d35/10^3,1))+"kpc]":ENDIF
IF st39=1:st39$=smb$+"  M28 ["+STR$(ROUND(st_d36/10^3,1))+"kpc]":ENDIF
IF st39=-1: st39$="     M28 ["+STR$(ROUND(st_d36/10^3,1))+"kpc]":ENDIF
IF st40=1:st40$=smb$+"  M107 ["+STR$(ROUND(st_d37/10^3,1))+"kpc]":ENDIF
IF st40=-1: st40$="     M107 ["+STR$(ROUND(st_d37/10^3,1))+"kpc]":ENDIF
IF st41=1:st41$=smb$+"  M62 ["+STR$(ROUND(st_d38/10^3,1))+"kpc]":ENDIF
IF st41=-1: st41$="     M62 ["+STR$(ROUND(st_d38/10^3,1))+"kpc]":ENDIF
IF st11=1:st11$=smb$+"  M13 ["+STR$(ROUND(st_d39/10^3,1))+"kpc]":ENDIF
IF st11=-1: st11$="     M13 ["+STR$(ROUND(st_d39/10^3,1))+"kpc]":ENDIF
IF st42=1:st42$=smb$+"  M5 ["+STR$(ROUND(st_d40/10^3,1))+"kpc]":ENDIF
IF st42=-1: st42$="     M5 ["+STR$(ROUND(st_d40/10^3,1))+"kpc]":ENDIF
IF st43=1:st43$=smb$+"  M9 ["+STR$(ROUND(st_d41/10^3,1))+"kpc]":ENDIF
IF st43=-1: st43$="     M9 ["+STR$(ROUND(st_d41/10^3,1))+"kpc]":ENDIF
IF st44=1:st44$=smb$+"  M92 ["+STR$(ROUND(st_d42/10^3,1))+"kpc]":ENDIF
IF st44=-1: st44$="     M92 ["+STR$(ROUND(st_d42/10^3,1))+"kpc]":ENDIF
IF st45=1:st45$=smb$+"  M30 ["+STR$(ROUND(st_d43/10^3,1))+"kpc]":ENDIF
IF st45=-1: st45$="     M30 ["+STR$(ROUND(st_d43/10^3,1))+"kpc]":ENDIF
IF st46=1:st46$=smb$+"  M19 ["+STR$(ROUND(st_d44/10^3,1))+"kpc]":ENDIF
IF st46=-1: st46$="     M19 ["+STR$(ROUND(st_d44/10^3,1))+"kpc]":ENDIF
IF st47=1:st47$=smb$+"  M69 ["+STR$(ROUND(st_d45/10^3,1))+"kpc]":ENDIF
IF st47=-1: st47$="     M69 ["+STR$(ROUND(st_d45/10^3,1))+"kpc]":ENDIF
IF st48=1:st48$=smb$+"  M70 ["+STR$(ROUND(st_d46/10^3,1))+"kpc]":ENDIF
IF st48=-1: st48$="     M70 ["+STR$(ROUND(st_d46/10^3,1))+"kpc]":ENDIF
IF st49=1:st49$=smb$+"  M14 ["+STR$(ROUND(st_d47/10^3,1))+"kpc]":ENDIF
IF st49=-1: st49$="     M14 ["+STR$(ROUND(st_d47/10^3,1))+"kpc]":ENDIF
IF st50=1:st50$=smb$+"  M80 ["+STR$(ROUND(st_d48/10^3,1))+"kpc]":ENDIF
IF st50=-1: st50$="     M80 ["+STR$(ROUND(st_d48/10^3,1))+"kpc]":ENDIF
IF st51=1:st51$=smb$+"  M56 ["+STR$(ROUND(st_d49/10^3,1))+"kpc]":ENDIF
IF st51=-1: st51$="     M56 ["+STR$(ROUND(st_d49/10^3,1))+"kpc]":ENDIF
IF st52=1:st52$=smb$+"  M2 ["+STR$(ROUND(st_d50/10^3,1))+"kpc]":ENDIF
IF st52=-1: st52$="     M2 ["+STR$(ROUND(st_d50/10^3,1))+"kpc]":ENDIF
IF st53=1:st53$=smb$+"  M68 ["+STR$(ROUND(st_d51/10^3,1))+"kpc]":ENDIF
IF st53=-1: st53$="     M68 ["+STR$(ROUND(st_d51/10^3,1))+"kpc]":ENDIF
IF st54=1:st54$=smb$+"  M3 ["+STR$(ROUND(st_d52/10^3,1))+"kpc]":ENDIF
IF st54=-1: st54$="     M3 ["+STR$(ROUND(st_d52/10^3,1))+"kpc]":ENDIF
IF st55=1:st55$=smb$+"  M15 ["+STR$(ROUND(st_d53/10^3,1))+"kpc]":ENDIF
IF st55=-1: st55$="     M15 ["+STR$(ROUND(st_d53/10^3,1))+"kpc]":ENDIF
IF st12=1:st12$=smb$+"  M79 ["+STR$(ROUND(st_d54/10^3,1))+"kpc]":ENDIF
IF st12=-1: st12$="     M79 ["+STR$(ROUND(st_d54/10^3,1))+"kpc]":ENDIF
IF st56=1:st56$=smb$+"  M72 ["+STR$(ROUND(st_d55/10^3,1))+"kpc]":ENDIF
IF st56=-1: st56$="     M72 ["+STR$(ROUND(st_d55/10^3,1))+"kpc]":ENDIF
IF st57=1:st57$=smb$+"  M75 ["+STR$(ROUND(st_d57/10^3,1))+"kpc]":ENDIF
IF st57=-1: st57$="     M75 ["+STR$(ROUND(st_d57/10^3,1))+"kpc]":ENDIF
IF st13=1:st13$=smb$+"  M53 ["+STR$(ROUND(st_d56/10^3,1))+"kpc]":ENDIF
IF st13=-1: st13$="     M53 ["+STR$(ROUND(st_d56/10^3,1))+"kpc]":ENDIF
!!
 IF st__=1:st__$=smb$+"  __ [__pc]":ENDIF
 IF st__=-1: st__$="     __ [__pc]":ENDIF
!!
st99$=smq$+"  Projektion an/aus"
st100$=smq$+"  Vergrößerung: "+INT$(vgr_st)+" ×"
IF st101=-1:st101$=_smbl$+"    Symbol":ENDIF
IF st101=1:st101$=_mst$+"    Maßstab":ENDIF
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
nb101=1 %%%%
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
ARRAY.LOAD sel5$[],nb00$,nb15$,nb01$,nb16$,nb17$,nb18$, nb19$,nb20$,nb21$,nb22$,nb10$,nb11$,nb12$,nb14$,nb99$,nb100$,nb101$,nb23$,"Ok"
DIALOG.SELECT sel5, sel5$[],"Nebel, Planetare Nebel und Supernovae: Darstellung/Projektion:"
IF sel5=1:nb00=nb00*-1:IF nb00=-1 THEN RETURN:ENDIF
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
IF sel5=16
 GOSUB dlgvgr
 vgr_nb=_vgr:vgr=vgr_nb
ENDIF
IF sel5=17:nb101=nb101*-1:ENDIF
IF sel5=18:t06nb=t06nb*-1:ENDIF
IF sel5=19:RETURN:ENDIF
GOSUB menu5
GOTO std5
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu5:
IF nb00=1:nb00$=smb$+"  Ebene an":ENDIF
IF nb00=-1: nb00$="     Ebene aus":ENDIF
IF nb15=1:nb15$=smb$+"  Hantelnebel ["+STR$(ROUND(nb_d01,1))+"pc]":ENDIF
IF nb15=-1: nb15$="     Hantelnebel ["+STR$(ROUND(nb_d01,1))+"pc]":ENDIF
IF nb01=1:nb01$=smb$+"  Orionnebel ["+STR$(ROUND(nb_d02,1))+"pc]":ENDIF
IF nb01=-1: nb01$="     Orionnebel ["+STR$(ROUND(nb_d02,1))+"pc]":ENDIF
IF nb16=1:nb16$=smb$+"  M78 ["+STR$(ROUND(nb_d03,1))+"pc]":ENDIF
IF nb16=-1: nb16$="     M78 ["+STR$(ROUND(nb_d03,1))+"pc]":ENDIF
IF nb17=1:nb17$=smb$+"  Eulennebel ["+STR$(ROUND(nb_d04,1))+"pc]":ENDIF
IF nb17=-1: nb17$="     Eulennebel ["+STR$(ROUND(nb_d04,1))+"pc]":ENDIF
IF nb18=1:nb18$=smb$+"  M76 ["+STR$(ROUND(nb_d05,1))+"pc]":ENDIF
IF nb18=-1: nb18$="     M76 ["+STR$(ROUND(nb_d05,1))+"pc]":ENDIF
IF nb19=1:nb19$=smb$+"  Ringnebel ["+STR$(ROUND(nb_d06,1))+"pc]":ENDIF
IF nb19=-1: nb19$="     Ringnebel ["+STR$(ROUND(nb_d06,1))+"pc]":ENDIF
IF nb20=1:nb20$=smb$+"  Lagunennebel ["+STR$(ROUND(nb_d07/1000,1))+"kpc]":ENDIF
IF nb20=-1: nb20$="     Lagunennebel ["+STR$(ROUND(nb_d07/1000,1))+"kpc]":ENDIF
IF nb21=1:nb21$=smb$+"  Trifidnebel ["+STR$(ROUND(nb_d08/1000,1))+"kpc]":ENDIF
IF nb21=-1: nb21$="     Trifidnebel ["+STR$(ROUND(nb_d08/1000,1))+"kpc]":ENDIF
IF nb22=1:nb22$=smb$+"  Omeganebel ["+STR$(ROUND(nb_d09/1000,1))+"kpc]":ENDIF
IF nb22=-1: nb22$="     Omeganebel ["+STR$(ROUND(nb_d09/1000,1))+"kpc]":ENDIF
IF nb10=1:nb10$=smb$+"  Krebsnebel ["+STR$(ROUND(nb_d10/1000,1))+"kpc]":ENDIF
IF nb10=-1: nb10$="     Krebsnebel ["+STR$(ROUND(nb_d10/1000,1))+"kpc]":ENDIF
IF nb11=1:nb11$=smb$+"  Adlernebel ["+STR$(ROUND(nb_d11/1000,1))+"kpc]":ENDIF
IF nb11=-1: nb11$="     Adlernebel ["+STR$(ROUND(nb_d11/1000,1))+"kpc]":ENDIF
IF nb12=1:nb12$=smb$+"  Stundenglasnebel ["+STR$(ROUND(nb_d12/1000,1))+"kpc]":ENDIF
IF nb12=-1: nb12$="     Stundenglasnebel ["+STR$(ROUND(nb_d12/1000,1))+"kpc]":ENDIF
IF nb14=1:nb14$=smb$+"  V838 ["+STR$(ROUND(nb_d13/1000,1))+"kpc]":ENDIF
IF nb14=-1: nb14$="     V838 ["+STR$(ROUND(nb_d13/1000,1))+"kpc]":ENDIF
!!
 IF nb__=1:nb__$=smb$+"   __ [__pc]":ENDIF
 IF nb__=-1: nb__$="      __ [__pc]":ENDIF
!!
nb99$=smq$+"  Projektion an/aus"
nb100$=smq$+"  Vergrößerung: "+INT$(vgr_nb)+" ×"
IF nb101=-1:nb101$=_smbl$+"    Symbol":ENDIF
IF nb101=1:nb101$=_mst$+"    Maßstab":ENDIF
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
ARRAY.LOAD sel6$[],gm00$,gm05$,gm06$,gm01$,gm02$,gm04$,gm03$,gm99$,gm30$,"Ok"
DIALOG.SELECT sel6, sel6$[],"Milchstraßen Objekte: Darstellung/Projektion:"
IF sel6=1:gm00=gm00*-1:IF gm00=-1 THEN RETURN:ENDIF
IF sel6=2:gm05=gm05*-1:ENDIF
IF sel6=3:gm06=gm06*-1:ENDIF
IF sel6=4:gm01=gm01*-1:ENDIF
IF sel6=5:gm02=gm02*-1:ENDIF
IF sel6=6:gm04=gm04*-1:ENDIF
IF sel6=7:gm03=gm03*-1:ENDIF
!!
 IF sel6=__:gm__=gm__*-1:ENDIF
!!
IF sel6=8:GOSUB gmreset: gm99=gm99*-1:ENDIF
!!
IF sel6=9
 GOSUB dlgvgr
 vgr_gm=_vgr:vgr=vgr_gm
ENDIF
!!
IF sel6=9:t06gm=t06gm*-1:ENDIF
IF sel6=10:RETURN:ENDIF
GOSUB menu6
GOTO std6
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu6:
IF gm00=1:gm00$=smb$+"  Ebene an":ENDIF
IF gm00=-1: gm00$="     Ebene aus":ENDIF
IF gm05=1:gm05$=smb$+"   Sagittarius Wolke ["+STR$(ROUND(gm_d02/1000,1))+"kpc]":ENDIF
IF gm05=-1: gm05$="      Sagittarius Wolke ["+STR$(ROUND(gm_d02/1000,1))+"kpc]":ENDIF
IF gm06=1:gm06$=smb$+"   Zentrum ["+STR$(ROUND(gm_d01/1000,1))+"kpc]":ENDIF
IF gm06=-1: gm06$="      Zentrum ["+STR$(ROUND(gm_d01/1000,1))+"kpc]":ENDIF
IF gm01=1:gm01$=smb$+"   Sag DEG ["+STR$(ROUND(gm_d03/1000,1))+"kpc]":ENDIF
IF gm01=-1: gm01$="      Sag DEG ["+STR$(ROUND(gm_d03/1000,1))+"kpc]":ENDIF
IF gm02=1:gm02$=smb$+"   M54 ["+STR$(ROUND(gm_d04/1000,1))+"kpc]":ENDIF
IF gm02=-1: gm02$="      M54 ["+STR$(ROUND(gm_d04/1000,1))+"kpc]":ENDIF
IF gm03=1:gm03$=smb$+"   Große Wolke ["+STR$(ROUND(gm_d05/1000,1))+"kpc]":ENDIF
IF gm03=-1: gm03$="      Große Wolke ["+STR$(ROUND(gm_d05/1000,1))+"kpc]":ENDIF
IF gm04=1:gm04$=smb$+"   Kleine Wolke ["+STR$(ROUND(gm_d06/1000,1))+"kpc]":ENDIF
IF gm04=-1: gm04$="      Kleine Wolke ["+STR$(ROUND(gm_d06/1000,1))+"kpc]":ENDIF
!!
 IF gm__=1:gm__$=smb$+"   __ [__kpc]":ENDIF
 IF gm__=-1: gm__$="      __ [__kpc]":ENDIF
!!
gm99$=smq$+"  Projektion an/aus"
!gm100$=smq$+"  Vergrößerung: "+INT$(vgr_gm)+" ×"
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
gx99=-1
gx101=1 %%%
t06gx=1
!!
 gx__=-1
!!
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog7:
GOSUB menu7
std7:
ARRAY.LOAD sel7$[],gx00$,gx01$,gx05$,gx11$,gx12$,gx20$,gx13$,gx02$,gx27$,gx03$,gx21$,gx04$,gx10$,gx29$,gx22$,gx28$,gx14$,gx23$,gx31$,gx15$,gx26$,gx30$,gx17$,gx19$,gx07$,gx06$,gx16$,gx09$,gx08$,gx25$,gx18$,gx24$,gx99$,gx100$,gx101$,gx40$,"Ok"
DIALOG.SELECT sel7, sel7$[],"Galaxien: Darstellung/Projektion:"
IF sel7=1:gx00=gx00*-1:IF gx00=-1 THEN RETURN:ENDIF
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
IF sel7=13:gx10=gx10*-1:ENDIF
IF sel7=14:gx29=gx29*-1:ENDIF
IF sel7=15:gx22=gx22*-1:ENDIF
IF sel7=16:gx28=gx28*-1:ENDIF
IF sel7=17:gx14=gx14*-1:ENDIF
IF sel7=18:gx23=gx23*-1:ENDIF
IF sel7=19:gx31=gx31*-1:ENDIF
IF sel7=20:gx15=gx15*-1:ENDIF
IF sel7=21:gx26=gx26*-1:ENDIF
IF sel7=22:gx30=gx30*-1:ENDIF
IF sel7=23:gx17=gx17*-1:ENDIF
IF sel7=24:gx19=gx19*-1:ENDIF
IF sel7=25:gx07=gx07*-1:ENDIF
IF sel7=26:gx06=gx06*-1:ENDIF
IF sel7=27:gx16=gx16*-1:ENDIF
IF sel7=28:gx09=gx09*-1:ENDIF
IF sel7=29:gx08=gx08*-1:ENDIF
IF sel7=30:gx25=gx25*-1:ENDIF
IF sel7=31:gx18=gx18*-1:ENDIF
IF sel7=32:gx24=gx24*-1:ENDIF
!!
 IF sel7=__:gx__=gx__*-1:ENDIF
!!
IF sel7=33:GOSUB gxreset: gx99=gx99*-1:ENDIF
IF sel7=34
 GOSUB dlgvgr
 vgr_gx=_vgr:vgr=vgr_gx
ENDIF
IF sel7=35:gx101=gx101*-1:ENDIF
IF sel7=36:t06gx=t06gx*-1:ENDIF
IF sel7=37:RETURN:ENDIF
GOSUB menu7
GOTO std7
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu7:
IF gx00=1:gx00$=smb$+"  Ebene an":ENDIF
IF gx00=-1: gx00$="     Ebene aus":ENDIF
IF gx01=1:gx01$=smb$+"  Andromeda ["+STR$(ROUND(gx_d01/10^6,1))+"Mpc]":ENDIF
IF gx01=-1: gx01$="     Andromeda ["+STR$(ROUND(gx_d01/10^3,1))+"kpc]":  ENDIF
IF gx05=1:gx05$=smb$+"  Triangulum ["+STR$(ROUND(gx_d02/10^6,1))+"Mpc]":ENDIF
IF gx05=-1: gx05$="     Triangulum ["+STR$(ROUND(gx_d02/10^3,1))+"kpc]":ENDIF
IF gx11=1:gx11$=smb$+"  M81 ["+STR$(ROUND(gx_d03/10^6,1))+"Mpc]":ENDIF
IF gx11=-1: gx11$="     M81 ["+STR$(ROUND(gx_d03/10^6,1))+"Mpc]":ENDIF
IF gx12=1:gx12$=smb$+"  M82 ["+STR$(ROUND(gx_d04/10^6,1))+"Mpc]":ENDIF
IF gx12=-1: gx12$="     M82 ["+STR$(ROUND(gx_d04/10^6,1))+"Mpc]":ENDIF
IF gx20=1:gx20$=smb$+"  M94 ["+STR$(ROUND(gx_d05/10^6,1))+"Mpc]":ENDIF
IF gx20=-1: gx20$="     M94 ["+STR$(ROUND(gx_d05/10^6,1))+"Mpc]":ENDIF
IF gx13=1:gx13$=smb$+"  M83 ["+STR$(ROUND(gx_d06/10^6,1))+"Mpc]":ENDIF
IF gx13=-1: gx13$="     M83 ["+STR$(ROUND(gx_d06/10^6,1))+"Mpc]":ENDIF
IF gx02=1:gx02$=smb$+"  M101 ["+STR$(ROUND(gx_d07/10^6,1))+"Mpc]":ENDIF
IF gx02=-1: gx02$="     M101 ["+STR$(ROUND(gx_d07/10^6,1))+"Mpc]":ENDIF
IF gx27=1:gx27$=smb$+"  M106 ["+STR$(ROUND(gx_d08/10^6,1))+"Mpc]":ENDIF
IF gx27=-1: gx27$="     M106 ["+STR$(ROUND(gx_d08/10^6,1))+"Mpc]":ENDIF
IF gx21=1:gx21$=smb$+"  M95 ["+STR$(ROUND(gx_d09/10^6,1))+"Mpc]":ENDIF
IF gx21=-1: gx21$="     M95 ["+STR$(ROUND(gx_d09/10^6,1))+"Mpc]":ENDIF
IF gx03=1:gx03$=smb$+"  M51 ["+STR$(ROUND(gx_d10/10^6,1))+"Mpc]":ENDIF
IF gx03=-1: gx03$="     M51 ["+STR$(ROUND(gx_d10/10^6,1))+"Mpc]":ENDIF
IF gx04=1:gx04$=smb$+"  M104 ["+STR$(ROUND(gx_d11/10^6,1))+"Mpc]":ENDIF
IF gx04=-1: gx04$="     M104 ["+STR$(ROUND(gx_d11/10^6,1))+"Mpc]":ENDIF
IF gx10=1:gx10$=smb$+"  M74 ["+STR$(ROUND(gx_d13/10^6,1))+"Mpc]":ENDIF
IF gx10=-1: gx10$="     M74 ["+STR$(ROUND(gx_d13/10^6,1))+"Mpc]":ENDIF
IF gx29=1:gx29$=smb$+"  M108 ["+STR$(ROUND(gx_d16/10^6,1))+"Mpc]":ENDIF
IF gx29=-1: gx29$="     M108 ["+STR$(ROUND(gx_d16/10^6,1))+"Mpc]":ENDIF
IF gx22=1:gx22$=smb$+"  M96 ["+STR$(ROUND(gx_d14/10^6,1))+"Mpc]":ENDIF
IF gx22=-1: gx22$="     M96 ["+STR$(ROUND(gx_d14/10^6,1))+"Mpc]":ENDIF
IF gx28=1:gx28$=smb$+"  M105 ["+STR$(ROUND(gx_d17/10^6,1))+"Mpc]":ENDIF
IF gx28=-1: gx28$="     M105 ["+STR$(ROUND(gx_d17/10^6,1))+"Mpc]":ENDIF
IF gx14=1:gx14$=smb$+"  M84 ["+STR$(ROUND(gx_d18/10^6,1))+"Mpc]":ENDIF
IF gx14=-1: gx14$="     M84 ["+STR$(ROUND(gx_d18/10^6,1))+"Mpc]":ENDIF
IF gx23=1:gx23$=smb$+"  M98 ["+STR$(ROUND(gx_d19/10^6,1))+"Mpc]":ENDIF
IF gx23=-1: gx23$="     M98 ["+STR$(ROUND(gx_d19/10^6,1))+"Mpc]":ENDIF
IF gx31=1:gx31$=smb$+"  M77 ["+STR$(ROUND(gx_d20/10^6,1))+"Mpc]":ENDIF
IF gx31=-1: gx31$="     M77 ["+STR$(ROUND(gx_d20/10^6,1))+"Mpc]":ENDIF
IF gx15=1:gx15$=smb$+"  M85 ["+STR$(ROUND(gx_d21/10^6,1))+"Mpc]":ENDIF
IF gx15=-1: gx15$="     M85 ["+STR$(ROUND(gx_d21/10^6,1))+"Mpc]":ENDIF
IF gx26=1:gx26$=smb$+"  M102 ["+STR$(ROUND(gx_d22/10^6,1))+"Mpc]":ENDIF
IF gx26=-1: gx26$="     M102 ["+STR$(ROUND(gx_d22/10^6,1))+"Mpc]":ENDIF
IF gx30=1:gx30$=smb$+"  M109 ["+STR$(ROUND(gx_d23/10^6,1))+"Mpc]":ENDIF
IF gx30=-1: gx30$="     M109 ["+STR$(ROUND(gx_d23/10^6,1))+"Mpc]":ENDIF
IF gx17=1:gx17$=smb$+"  M87 ["+STR$(ROUND(gx_d33/10^6,1))+"Mpc]":ENDIF
IF gx17=-1: gx17$="     M87 ["+STR$(ROUND(gx_d33/10^6,1))+"Mpc]":ENDIF
IF gx19=1:gx19$=smb$+"  M89 ["+STR$(ROUND(gx_d24/10^6,1))+"Mpc]":ENDIF
IF gx19=-1: gx19$="     M89 ["+STR$(ROUND(gx_d24/10^6,1))+"Mpc]":ENDIF
IF gx07=1:gx07$=smb$+"  M49 ["+STR$(ROUND(gx_d25/10^6,1))+"Mpc]":ENDIF
IF gx07=-1: gx07$="     M49 ["+STR$(ROUND(gx_d25/10^6,1))+"Mpc]":ENDIF
IF gx06=1:gx06$=smb$+"  M90 ["+STR$(ROUND(gx_d26/10^6,1))+"Mpc]":ENDIF
IF gx06=-1: gx06$="     M90 ["+STR$(ROUND(gx_d26/10^6,1))+"Mpc]":ENDIF
IF gx16=1:gx16$=smb$+"  M86 ["+STR$(ROUND(gx_d27/10^6,1))+"Mpc]":ENDIF
IF gx16=-1: gx16$="     M86 ["+STR$(ROUND(gx_d27/10^6,1))+"Mpc]":ENDIF
IF gx09=1:gx09$=smb$+"  M91 ["+STR$(ROUND(gx_d28/10^6,1))+"Mpc]":ENDIF
IF gx09=-1: gx09$="     M91 ["+STR$(ROUND(gx_d28/10^6,1))+"Mpc]":ENDIF
IF gx08=1:gx08$=smb$+"  M58 ["+STR$(ROUND(gx_d29/10^6,1))+"Mpc]":ENDIF
IF gx08=-1: gx08$="     M58 ["+STR$(ROUND(gx_d29/10^6,1))+"Mpc]":ENDIF
IF gx25=1:gx25$=smb$+"  M100 ["+STR$(ROUND(gx_d30/10^6,1))+"Mpc]":ENDIF
IF gx25=-1: gx25$="     M100 ["+STR$(ROUND(gx_d30/10^6,1))+"Mpc]":ENDIF
IF gx18=1:gx18$=smb$+"  M88 ["+STR$(ROUND(gx_d31/10^6,1))+"Mpc]":ENDIF
IF gx18=-1: gx18$="     M88 ["+STR$(ROUND(gx_d31/10^6,1))+"Mpc]":ENDIF
IF gx24=1:gx24$=smb$+"  M99 ["+STR$(ROUND(gx_d32/10^6,1))+"Mpc]":ENDIF
IF gx24=-1: gx24$="     M99 ["+STR$(ROUND(gx_d32/10^6,1))+"Mpc]":ENDIF
!!
 IF gx__=1:gx__$=smb$+"  ___ [Mpc]":ENDIF
 IF gx__=-1: gx__$="     ___ [Mpc]":ENDIF
!!
gx99$=smq$+"  Projektion an/aus"
gx100$=smq$+"  Vergrößerung: "+INT$(vgr_gx)+" ×"
IF gx101=-1:gx101$=_smbl$+"    Symbol":ENDIF
IF gx101=1:gx101$=_mst$+"    Maßstab":ENDIF
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
ARRAY.LOAD sel8$[],gh00$,gh01$,gh03$,gh04$,gh06$,gh09$,gh02$,gh07$,gh10$,gh11$,gh05$,gh12$,gh13$,gh14$,gh15$,gh08$,gh99$,gh30$,"Ok"
DIALOG.SELECT sel8, sel8$[],"Galaxien Haufen und Superhaufen: Darstellung/Projektion:"
IF sel8=1:gh00=gh00*-1:IF gh00=-1 THEN RETURN:ENDIF
IF sel8=2:gh01=gh01*-1:ENDIF
IF sel8=3:gh03=gh03*-1:ENDIF
IF sel8=4:gh04=gh04*-1:ENDIF
IF sel8=5:gh06=gh06*-1:ENDIF
IF sel8=6:gh09=gh09*-1:ENDIF
IF sel8=7:gh02=gh02*-1:ENDIF
IF sel8=8:gh07=gh07*-1:ENDIF
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
!!
IF sel8=18
 GOSUB dlgvgr
 vgr_gh=_vgr:vgr=vgr_gh
ENDIF
!!
IF sel8=18:t06gh=t06gh*-1:ENDIF
IF sel8=19:RETURN:ENDIF
GOSUB menu8
GOTO std8
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu8:
IF gh00=1:gh00$=smb$+"  Ebene an":ENDIF
IF gh00=-1: gh00$="     Ebene aus":ENDIF
IF gh01=1:gh01$=smb$+"  Virgo  ["+STR$(ROUND(gh_d01/10^6,1))+"Mpc]":ENDIF
IF gh01=-1: gh01$="     Virgo  ["+STR$(ROUND(gh_d01/10^6,1))+"Mpc]":ENDIF
IF gh03=1:gh03$=smb$+"  Fornax ["+STR$(ROUND(gh_d02/10^6,1))+"Mpc]":ENDIF
IF gh03=-1: gh03$="     Fornax ["+STR$(ROUND(gh_d02/10^6,1))+"Mpc]":ENDIF
IF gh04=1:gh04$=smb$+"  Fornax II ["+STR$(ROUND(gh_d03/10^6,1))+"Mpc]":ENDIF
IF gh04=-1: gh04$="     Eridanus ["+STR$(ROUND(gh_d03/10^6,1))+"Mpc]":ENDIF
IF gh06=1:gh06$=smb$+"  Antila ["+STR$(ROUND(gh_d04/10^6,1))+"Mpc]":ENDIF
IF gh06=-1: gh06$="     Antila ["+STR$(ROUND(gh_d04/10^6,1))+"Mpc]":ENDIF
IF gh09=1:gh09$=smb$+"  Hydra ["+STR$(ROUND(gh_d05/10^6,1))+"Mpc]":ENDIF
IF gh09=-1: gh09$="     Hydra ["+STR$(ROUND(gh_d05/10^6,1))+"Mpc]":ENDIF
IF gh02=1:gh02$=smb$+"  Norma ["+STR$(ROUND(gh_d06/10^6,1))+"Mpc]":ENDIF
IF gh02=-1: gh02$="     Norma ["+STR$(ROUND(gh_d06/10^6,1))+"Mpc]":ENDIF
IF gh07=1:gh07$=smb$+"  Laniakea S. ["+STR$(ROUND(gh_d07/10^6,1))+"Mpc]":ENDIF
IF gh07=-1: gh07$="     Großer Attraktor ["+STR$(ROUND(gh_d07/10^6,1))+"Mpc]":ENDIF
IF gh10=1:gh10$=smb$+"  Perseus-Pi. S. ["+STR$(ROUND(gh_d08/10^6,1))+"Mpc]":ENDIF
IF gh10=-1: gh10$="     Perseus-Pi. S. ["+STR$(ROUND(gh_d08/10^6,1))+"Mpc]":ENDIF
IF gh11=1:gh11$=smb$+"  Coma S. ["+STR$(ROUND(gh_d09/10^6,1))+"Mpc]":ENDIF
IF gh11=-1: gh11$="     Coma S. ["+STR$(ROUND(gh_d09/10^6,1))+"Mpc]":ENDIF
IF gh05=1:gh05$=smb$+"  Coma ["+STR$(ROUND(gh_d10/10^6,1))+"Mpc]":ENDIF
IF gh05=-1: gh05$="     Große Wand ["+STR$(ROUND(gh_d10/10^6,1))+"Mpc]":ENDIF
IF gh12=1:gh12$=smb$+"  Ophiuchus S. ["+STR$(ROUND(gh_d11/10^6,1))+"Mpc]":ENDIF
IF gh12=-1: gh12$="     Ophiuchus S. ["+STR$(ROUND(gh_d11/10^6,1))+"Mpc]":ENDIF
IF gh13=1:gh13$=smb$+"  Leo S. ["+STR$(ROUND(gh_d12/10^6,1))+"Mpc]":ENDIF
IF gh13=-1: gh13$="     Leo S. ["+STR$(ROUND(gh_d12/10^6,1))+"Mpc]":ENDIF
IF gh14=1:gh14$=smb$+"  Herkules S. ["+STR$(ROUND(gh_d13/10^6,1))+"Mpc]":ENDIF
IF gh14=-1: gh14$="     Herkules S. ["+STR$(ROUND(gh_d13/10^6,1))+"Mpc]":ENDIF
IF gh15=1:gh15$=smb$+"  Shapley S. ["+STR$(ROUND(gh_d14/10^6,1))+"Mpc]":ENDIF
IF gh15=-1: gh15$="     Shapley S. ["+STR$(ROUND(gh_d14/10^6,1))+"Mpc]":ENDIF
IF gh08=1:gh08$=smb$+"  Geschoß ["+STR$(ROUND(gh_d15/10^9,1))+"Gpc]":ENDIF
IF gh08=-1: gh08$="     Geschoß ["+STR$(ROUND(gh_d15/10^6,1))+"Mpc]":ENDIF
!!
 IF gh__=1:gh__$=smb$+"  ___ [Mpc]":ENDIF
 IF gh__=-1: gh__$="     ___ [Mpc]":ENDIF
!!
gh99$=smq$+"  Projektion an/aus"
!gh100$=smq$+"  Vergrößerung: "+INT$(vgr_gh)+" ×"
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
gq101=1 %%%
t06gq=1
!!
 gq__=-1
!!
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog9:
GOSUB menu9
std9:
ARRAY.LOAD sel9$[],gq00$,gq01$,gq13$,gq03$,gq14$,gq04$,gq20$,gq15$,gq05$,gq06$,gq16$,gq07$,gq09$,gq08$,gq17$,gq18$,gq19$,gq02$,gq99$,gq100$,gq101$,gq30$,"Ok"
DIALOG.SELECT sel9, sel9$[],"Quasare: Darstellung/Projektion:"
IF sel9=1:gq00=gq00*-1:IF gq00=-1 THEN RETURN:ENDIF
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
IF sel9=20
 GOSUB dlgvgr
 vgr_gq=_vgr:vgr=vgr_gq
ENDIF
IF sel9=21:gq101=gq101*-1:ENDIF
IF sel9=22:t06gq=t06gq*-1:ENDIF
IF sel9=23:RETURN:ENDIF
GOSUB menu9
GOTO std9
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu9:
IF gq00=1:gq00$=smb$+"  Ebene an":ENDIF
IF gq00=-1: gq00$="     Ebene aus":ENDIF
IF gq01=1:gq01$=smb$+"  UGC 8085 ["+STR$(ROUND(gq_d01/10^6,1))+"Mpc]":ENDIF
IF gq01=-1: gq01$="     UGC 8085 ["+STR$(ROUND(gq_d01/10^6,1))+"Mpc]":ENDIF
IF gq13=1:gq13$=smb$+"  J1430+1339 ["+STR$(ROUND(gq_d02/10^6,1))+"Mpc]":ENDIF
IF gq13=-1: gq13$="     J1430+1339 ["+STR$(ROUND(gq_d02/10^6,1))+"Mpc]":ENDIF
IF gq03=1:gq03$=smb$+"  3C 273 ["+STR$(ROUND(gq_d03/10^6,1))+"Mpc]":ENDIF
IF gq03=-1: gq03$="     3C 273 ["+STR$(ROUND(gq_d03/10^6,1))+"Mpc]":ENDIF
IF gq14=1:gq14$=smb$+"  CID-42 ["+STR$(ROUND(gq_d04/10^9,1))+"Gpc]":ENDIF
IF gq14=-1: gq14$="     CID-42 ["+STR$(ROUND(gq_d04/10^9,1))+"Gpc]":ENDIF
IF gq04=1:gq04$=smb$+"  3C 48 ["+STR$(ROUND(gq_d05/10^9,1))+"Gpc]":ENDIF
IF gq04=-1: gq04$="     3C 48 ["+STR$(ROUND(gq_d05/10^9,1))+"Gpc]":ENDIF
IF gq20=1:gq20$=smb$+"  3C 47 ["+STR$(ROUND(gq_d06/10^9,1))+"Gpc]":ENDIF
IF gq20=-1: gq20$="     3C 47 ["+STR$(ROUND(gq_d06/10^9,1))+"Gpc]":ENDIF
IF gq15=1:gq15$=smb$+"  3C 279 ["+STR$(ROUND(gq_d07/10^9,1))+"Gpc]":ENDIF
IF gq15=-1: gq15$="     3C 279 ["+STR$(ROUND(gq_d07/10^9,1))+"Gpc]":ENDIF
IF gq05=1:gq05$=smb$+"  3C 147 ["+STR$(ROUND(gq_d08/10^9,1))+"Gpc]":ENDIF
IF gq05=-1: gq05$="     3C 147 ["+STR$(ROUND(gq_d08/10^9,1))+"Gpc]":ENDIF
IF gq06=1:gq06$=smb$+"  CTA-102 ["+STR$(ROUND(gq_d09/10^9,1))+"Gpc]":ENDIF
IF gq06=-1: gq06$="     CTA-102 ["+STR$(ROUND(gq_d09/10^9,1))+"Gpc]":ENDIF
IF gq16=1:gq16$=smb$+"  Einstein Cross ["+STR$(ROUND(gq_d10/10^9,1))+"Gpc]":ENDIF
IF gq16=-1: gq16$="     Einstein Cross ["+STR$(ROUND(gq_d10/10^9,1))+"Gpc]":ENDIF
IF gq07=1:gq07$=smb$+"  QSO 0957+561 ["+STR$(ROUND(gq_d11/10^9,1))+"Gpc]":ENDIF
IF gq07=-1: gq07$="     QSO 0957+561 ["+STR$(ROUND(gq_d11/10^9,1))+"Gpc]":ENDIF
IF gq09=1:gq09$=smb$+"  Huge-LQG ["+STR$(ROUND(gq_d12/10^9,1))+"Gpc]":ENDIF
IF gq09=-1: gq09$="     Huge-LQG ["+STR$(ROUND(gq_d12/10^9,1))+"Gpc]":ENDIF
IF gq08=1:gq08$=smb$+"  3C 9 ["+STR$(ROUND(gq_d13/10^9,1))+"Gpc]":ENDIF
IF gq08=-1: gq08$="     3C 9 ["+STR$(ROUND(gq_d13/10^9,1))+"Gpc]":ENDIF
IF gq17=1:gq17$=smb$+"  TON 618 ["+STR$(ROUND(gq_d14/10^9,1))+"Gpc]":ENDIF
IF gq17=-1: gq17$="     TON 618 ["+STR$(ROUND(gq_d14/10^9,1))+"Gpc]":ENDIF
IF gq18=1:gq18$=smb$+"  H1413+117 ["+STR$(ROUND(gq_d15/10^9,1))+"Gpc]":ENDIF
IF gq18=-1: gq18$="     H1413+117 ["+STR$(ROUND(gq_d15/10^9,1))+"Gpc]":ENDIF
IF gq19=1:gq19$=smb$+"  APM 08279+5255 ["+STR$(ROUND(gq_d16/10^9,1))+"Gpc]":ENDIF
IF gq19=-1: gq19$="     APM 08279+5255 ["+STR$(ROUND(gq_d16/10^9,1))+"Gpc]":ENDIF
IF gq02=1:gq02$=smb$+"  QSO J0313-1806 ["+STR$(ROUND(gq_d17/10^9,1))+"Gpc]":ENDIF
IF gq02=-1: gq02$="     QSO J0313-1806 ["+STR$(ROUND(gq_d17/10^9,1))+"Gpc]":ENDIF
!!
 IF gq__=1:gq__$=smb$+"  __ [__pc]":ENDIF
 IF gq__=-1: gq__$="     __ [__pc]":ENDIF
!!
gq99$=smq$+"  Projektion an/aus"
gq100$=smq$+"  Vergrößerung: "+INT$(vgr_gq)+" ×"
IF gq101=-1:gq101$=_smbl$+"    Symbol":ENDIF
IF gq101=1:gq101$=_mst$+"    Maßstab":ENDIF
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
! %, Eingabedatei für weitere Objekte %%%%%%%%%%%%%%%%%%%%
objdatei:
DIM inp$[100]
FILE.DIR pth$, inp$[] 
SELECT ninp, inp$[], _name$+" Objekt Definitionsdatei... ", "Select File" 
gwf$=inp$[ninp] 
ARRAY.DELETE inp$[]
RETURN 
! % Weitere Objekte ini %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
weitere_ini:                           % Objekte einlesen
DIM gw$[1000]
DIM gw_p[1000] 
DIM gw_r[1000]
DIM gw_d[1000] 
DIM gwdg[1000]
DIM gwdm[1000]
DIM gwds[1000]
DIM gwh_[1000]
DIM gwm_[1000]
DIM gws_[1000]
DIM gw_t[1000]
DIM gw_cl[1000]
FOR i_gw=1 TO 1000
 gw_p[i_gw]=-1                    %Projektionsvariable ini
NEXT                              %Objektdatei
GOSUB weitere_in
! % Weitere Objekte %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RETURN
weitere_in: 
n_gw=0
FILE.EXISTS fw, gwf$
IF fw
 TEXT.OPEN r, fw, gwf$
 DO
  TEXT.READLN fw, gwf_$:n_gw=n_gw+1           %Anzahl n_gw
 UNTIL gwf_$="EOF"
 TEXT.CLOSE fw
 n_gw=(n_gw-1)/12 %Anzahl der Optionen
 TEXT.OPEN r, fw, gwf$                        %Einlesen
 FOR i_gw=1 TO n_gw
  TEXT.READLN fw, gwf_$                       % Nr
  TEXT.READLN fw, gwf_$:gw$[i_gw]=gwf_$       % Name
  TEXT.READLN fw, gwf_$:gw_r[i_gw]=VAL(gwf_$) % r Lj
  IF gw_r[i_gw]=-1 THEN gw_r[i_gw]=gr_0       % Obj. Gr.
  TEXT.READLN fw, gwf_$:gw_d[i_gw]=VAL(gwf_$) % d Lj
  TEXT.READLN fw, gwf_$:gwdg[i_gw]=VAL(gwf_$) % dek g
  TEXT.READLN fw, gwf_$:gwdm[i_gw]=VAL(gwf_$) % dek m
  TEXT.READLN fw, gwf_$:gwds[i_gw]=VAL(gwf_$) % dek s
  TEXT.READLN fw, gwf_$:gwh_[i_gw]=VAL(gwf_$) % ra h
  TEXT.READLN fw, gwf_$:gwm_[i_gw]=VAL(gwf_$) % ra m
  TEXT.READLN fw, gwf_$:gws_[i_gw]=VAL(gwf_$) % ra s
  TEXT.READLN fw, gwf_$:gw_t[i_gw]=VAL(gwf_$) % typ
  TEXT.READLN fw, gwf_$:gw_cl[i_gw]=VAL(gwf_$) % typfarbe
 NEXT
 TEXT.CLOSE fw
ELSE 
 INCLUDE ssr_weitere_ini.bas      %wenn keine Objektdatei               
ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
weitere_out:                      % Objekte ausgeben
DIALOG.MESSAGE "Weitere Objekte:","Astronomische Objekte...",selob,"Anlegen","Löschen","Abbrechen"
IF selob=1
 n_gw=n_gw+1
 INPUT"Objektname…",gw_name$,"Objekt"+INT$(n_gw)
 INPUT"Radius in Lj[-1:Stern]…",gw_r_,-1
 gw_ty_=gw_r_:IF gw_r_>-1 THEN gw_ty_=0
 INPUT"Distanz in Lj…",gw_d_,15000
 INPUT"Rek. Stunde…",gw_rh_,0
 INPUT"Rek. Minute…",gw_rm_,0
 INPUT"Rek. Sekunde …",gw_rs_,0
 INPUT"Dekl. Grad…",gw_dg_,0
 INPUT"Dekl. Minute…",gw_dm_,0
 INPUT"Dekl. Sekunde …",gw_ds_,0
 % Typus und Farbe %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 ARRAY.LOAD seltp_$[],"Stern Gr1","Stern Gr2","Stern Gr3","Roter Riese","Blauer Riese","Nova/Supernova","Sternhaufen","Nebel","Planetarer Nebel","Kugelsternhaufen","Milchstraßenwolke","Galaxie","Haufen","Superhaufen","Quasar"
 DIALOG.SELECT seltp, seltp_$[],"Weitere Objekte: Typ..."
 DIALOG.MESSAGE "Weitere Objekte:","Neues astronomisches Objekt anlegen?",wrtout,"Speichern","Abbrechen"
 IF wrtout=1
  obnrdat$="&"+FORMAT$("0%%%%",n_gw)+"["+d$+"/"+m$+"/"+y$+"]"
  TEXT.OPEN a, fw, gwf$                %Ausgabe
  TEXT.WRITELN fw, obnrdat$            % Nummer, Datum
  TEXT.WRITELN fw, gw_name$            % Name
  TEXT.WRITELN fw, gw_r_               % r Lj
  TEXT.WRITELN fw, gw_d_               % d Lj
  TEXT.WRITELN fw, gw_dg_              % Dekl Grad
  TEXT.WRITELN fw, gw_dm_              % Dekl Minute
  TEXT.WRITELN fw, gw_ds_              % Dekl Sekunde
  TEXT.WRITELN fw, gw_rh_              % Rekt Stunde
  TEXT.WRITELN fw, gw_rm_              % Rekt Minute
  TEXT.WRITELN fw, gw_rs_              % Rekt Sekunde
  TEXT.WRITELN fw, gw_ty_              % Typ
  TEXT.WRITELN fw, seltp               % Typfarbe
  TEXT.CLOSE fw
 ENDIF
ENDIF
IF selob=2                             % Alle Löschen
 DIALOG.MESSAGE "Weitere Objekte:","Alle weiteren astronomischen Objekte löschen?",selob0,"Löschen","Abbrechen"
 IF selob0=1
  TEXT.OPEN w, fw, gwf$      
  TEXT.CLOSE fw      
 ENDIF            
ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Dialog Weitere Objekte %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog11prm:
gw00=1
gw99=-1
gw101=1
t06gw=1
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog11:
GOSUB weitere_in
GOSUB menu11
std11:
DIM sel11$[n_gw+8]
!
sel11$[1]=gw00$
sel11$[2]=smq$+"  Datei: "+gwf$
FOR i_gw=1 TO n_gw
 sel11$[i_gw+2]=gwmn$[i_gw]
NEXT
sel11$[n_gw+3]=smq$+"  Objekt anlegen/löschen"
sel11$[n_gw+4]=gw99$
sel11$[n_gw+5]=gw100$
sel11$[n_gw+6]=gw101$
sel11$[n_gw+7]=gw30$
sel11$[n_gw+8]="Ok"
!
DIALOG.SELECT sel11, sel11$[],"Weitere Objekte: Darstellung/Projektion:"
IF sel11=1:gw00=gw00*-1:IF gw00=-1 THEN RETURN:ENDIF
IF sel11=2:GOSUB objdatei:GOSUB weitere_in:ENDIF       
FOR i_gw=1 TO n_gw                    % Weitere Objekte
 IF sel11=i_gw+2:gw_p[i_gw]=gw_p[i_gw]*-1:ENDIF
NEXT
IF sel11=n_gw+3:GOSUB weitere_out:GOSUB weitere_in:ENDIF
IF sel11=n_gw+4:GOSUB gwreset: gw99=gw99*-1:ENDIF
IF sel11=n_gw+5
 GOSUB dlgvgr:vgr_w1=_vgr:vgr=vgr_w1
ENDIF
IF sel11=n_gw+6:gw101=gw101*-1:ENDIF
IF sel11=n_gw+7:t06gw=t06gw*-1:ENDIF
IF sel11=n_gw+8:RETURN:ENDIF
!
GOSUB menu11
GOTO std11
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menu11:
IF n_gw>0 THEN DIM gwmn$[n_gw]
IF gw00=1:gw00$=smb$+"  Ebene an":ENDIF
IF gw00=-1: gw00$="     Ebene aus":ENDIF
FOR i_gw=1 TO n_gw                    % Weitere Objekte
 IF gw_p[i_gw]=1:  gwmn$[i_gw]=smb$+"  "+gw$[i_gw]:ENDIF
 IF gw_p[i_gw]=-1: gwmn$[i_gw]="     "+gw$[i_gw]:ENDIF
NEXT
gw99$=smq$+"  Projektion an/aus"
gw100$=smq$+"  Vergrößerung: "+INT$(vgr_w1)+" ×"
IF gw101=-1:gw101$=_smbl$+"    Symbol":ENDIF
IF gw101=1:gw101$=_mst$+"    Maßstab":ENDIF
IF t06gw=1:gw30$=smb$+"  Text":ENDIF
IF t06gw=-1:gw30$="     Text aus":ENDIF
RETURN
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gwreset:
IF gw99=1
 FOR i_gw=1 TO n_gw
  gw_p[i_gw]=-1
 NEXT
ENDIF
IF gw99=-1
 FOR i_gw=1 TO n_gw
  gw_p[i_gw]=1
 NEXT
ENDIF
RETURN
! % Dialog Größenvergleich %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
menuvgl:
vg01$="Beteigeuze ["+STR$(ROUND( r_btg_ae,2))+"AE]"
vg02$="Orionnebel ["+STR$(ROUND( r_orn_ae/Lj_,2))+"Lj]"
vg03$="Aldebaran ["+STR$(ROUND( r_adb_ae,2))+"AE]"
vg04$= _ga$+" Centauri A ["+STR$(ROUND( r_acn_ae,3))+"AE]"
vg05$= "Sirius ["+STR$(ROUND( r_srs_ae,3))+"AE]"
vg06$= "RSGC2-01 ["+STR$(ROUND( r_rsg_ae,2))+"AE]"
ARRAY.LOAD vgl$[],vg04$,vg05$,vg03$,vg01$,vg06$,vg02$
DIALOG.SELECT vglst, vgl$[],"Größenvergleich:"
objv$=vgl$[vglst]
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
ARRAY.LOAD sel10$[],o11$,sk01$,sk02$,sk03$,sk04$,sk06$,o01$,o02$,o03$,o04$,o08$,o09$,sk05$,o10$,"Ok"
DIALOG.SELECT sel10, sel10$[],"Skalen:"
IF sel10=1:GOSUB calc:ENDIF
IF sel10=2:s10=s10*-1:ENDIF
IF sel10=3:t31=t31*-1
 IF t31=1
  INPUT"Stunde h=…",h_,0
  INPUT"Minute min=…",m_,0
  INPUT"Sekunde sec=…",s_,0
  rk$=" "+INT$(h_)+_rh$
  rk$= rk$+INT$(m_)+"'"
  rk$= rk$+INT$(s_)+_rsc$
 ENDIF
 IF t31=-1 THEN t39=-1
ENDIF
IF sel10=4:t39=t39*-1
 IF t31=-1 THEN t39=-1
 IF t39=1
  INPUT"Grad °=…",dg_,0
  INPUT"Minute min=…",dm_,0
  INPUT"Sekunde sec=…",ds_,0
  dkl$=" "+INT$(dg_)+"°"
  dkl$= dkl$+INT$(dm_)+"'"
  dkl$= dkl$+INT$(ds_)+_rsc$
 ENDIF
ENDIF
IF sel10=5:t34=t34*-1:ENDIF 
IF sel10=6:t99=t99*-1:ENDIF 
IF sel10=7:s01=s01*-1:ENDIF
IF sel10=8:s02=s02*-1:ENDIF
IF sel10=9
 s03=s03*-1
 swu=-1:ur$=""
 IF s07=1 & s03=1
  GOSUB dialogu
 ENDIF
ENDIF
IF sel10=10:s04=s04*-1:ENDIF
IF sel10=11:s08=s08*-1
 IF s08=1 THEN GOSUB dialogk
ENDIF
IF sel10=13
 swvgl=swvgl*-1
 IF swvgl=1 THEN GOSUB menuvgl
ENDIF
IF sel10=12:t98=t98*-1:ENDIF
IF sel10=14:GOSUB lbrte:ENDIF
IF sel10=15:RETURN:ENDIF
GOSUB menu10
GOTO std10
RETURN
menu10:
o11$=_clc$+"  Berechnungen..." %+cpb$
IF s10=1:sk01$=smb$+"  Entfernung und Zeit":ENDIF
IF s10=-1: sk01$="     Entfernung und Zeit aus":ENDIF
IF t31=1:sk02$=smb$+"  Rektaszension "+_ga$+rk$:ENDIF
IF t31=-1: sk02$="     Rektaszension "+_ga$:ENDIF
IF t39=1:sk03$=smb$+"  Deklination "+_gd$+dkl$:ENDIF
IF t39=-1: sk03$="     Deklination "+_gd$:ENDIF
IF t99=1:sk06$=smb$+"  Tierkreis "+_tkz$:ENDIF
IF t99=-1: sk06$="     Tierkreis aus":ENDIF
IF t34=1:sk04$=smb$+"  Himmelsgewölbe "+_hgw$:ENDIF
IF t34=-1: sk04$="     Himmelsgewölbe aus":ENDIF
IF s01=1:o01$=smb$+"  Jahreszeiten "+_jzt$:ENDIF
IF s01=-1: o01$="     Jahreszeiten aus":ENDIF
IF s02=1:o02$=smb$+"  Monate "+_mnte$:ENDIF
IF s02=-1: o02$="     Monate aus":ENDIF
IF s03=1:o03$=smb$+"  Horizont "+ur$:ENDIF
IF s03=-1: o03$="     Horizont aus":ENDIF
IF s04=1:o04$=smb$+"  Erdprojektion "+_epr$:ENDIF
IF s04=-1: o04$="     Erdprojektion aus":ENDIF
IF s08=1:o08$=smb$+"  Kompass "+kp$:ENDIF
IF s08=-1:o08$="     Kompass aus":ENDIF
IF swvgl=1:sk05$=smb$+"  = "+objv$:ENDIF
IF swvgl=-1: sk05$="     Größenvergleich aus":ENDIF
IF t98=1:o09$=smb$+"  Historie "+_hist$:ENDIF
IF t98=-1:o09$="     Historie aus":ENDIF
o10$=smq$+"  Linienbreite: "+INT$(skl)
RETURN
! Berechnungen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
calc::calcst::CLIPBOARD.GET cpb$
calcn=11:DIM sel$[calcn]:DIM sel0$[calcn-2]
sel0$[1]="Faktor x zu Lichtgeschwindigkeit c[m/s]"
sel0$[2]="Faktor x zu Astronomischer Einheit AE[km]"
sel0$[3]="Parallaxe pi[mas] zu Parsec pc"
sel0$[4]="Modulus mu[mag] zu Parsec pc"
sel0$[5]="Parsec pc zu Lichtjahr Lj"
sel0$[6]="Hexagesimal [°/h:min:sec] zu Dezimal [°]"
sel0$[7]="Winkelgrad [°] zu Bogenmaß [rad]"
sel0$[8]="Winkelausdehnung V[°] bei Dist. d zu Radius r"
sel0$[9]="Zehnerpotenz zu Einheit"
!
sel$[1]=sel0$[1]+eq1$
sel$[2]=sel0$[2]+eq2$
sel$[3]=sel0$[3]+eq3$
sel$[4]=sel0$[4]+eq4$
sel$[5]=sel0$[5]+eq5$
sel$[6]=sel0$[6]+eq6$
sel$[7]=sel0$[7]+eq7$
sel$[8]=sel0$[8]+eq8$
sel$[9]=sel0$[9]+eq9$
sel$[10]="=[ "+cpb$+u_eh$+" ]":u_eh$=""
!
sel$[11]="Ok"
DIALOG.SELECT sel, sel$[],_clc$+" Berechnungen:
IF sel=1 % Faktor c
 INPUT "Faktor x...",u_fx,1
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_xc=u_fx*c_m
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_xc$=STR$(ROUND(u_xc,9))
 u_xc0$=STR$(ROUND(u_xc,4))
 CLIPBOARD.PUT u_xc$
 u_dlgm$=""
 u_dlgm$=u_dlgm$+STR$(ROUND(u_fx,2))+"x = "
 u_dlgm$=u_dlgm$+u_xc0$+"m/s"
 DIALOG.MESSAGE sel0$[1]+", wobei xc = x*c[m/s]:",u_dlgm$,u_msg
 eq1$="=":eq2$="":eq3$="":eq4$="":eq5$="":eq6$="":eq7$="":eq8$="":eq9$="" 
ENDIF
IF sel=2 % Faktor AE
 INPUT "Faktor x...",u_fx,1
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_xa=u_fx*au_/1000
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_xa$=STR$(ROUND(u_xa,9))
 u_xa0$=STR$(ROUND(u_xa,4))
 CLIPBOARD.PUT u_xa$
 u_dlgm$=""
 u_dlgm$=u_dlgm$+STR$(ROUND(u_fx,2))+"x = "
 u_dlgm$=u_dlgm$+u_xa0$+"km"
 DIALOG.MESSAGE sel0$[2]+", wobei xAE = x*AE[km]:",u_dlgm$,u_msg
 eq1$="":eq2$="=":eq3$="":eq4$="":eq5$="":eq6$="":eq7$="":eq8$="":eq9$=""
ENDIF
IF sel=3 % Parallaxe zu pc
 !CLIPBOARD.GET cpb$
 INPUT "Parallaxe mas...",u_px,VAL(cpb$)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_pc=1/(u_px/1000)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_pc$=STR$(ROUND(u_pc,9))
 u_pc0$=STR$(ROUND(u_pc,4))
 CLIPBOARD.PUT u_pc$
 u_dlgm$=""
 u_dlgm$=u_dlgm$+STR$(ROUND(u_px,3))+"mas = "
 u_dlgm$=u_dlgm$+u_pc0$+"pc"
 DIALOG.MESSAGE sel0$[3]+", wobei pc = 1/(mas/1000):",u_dlgm$,u_msg
 eq1$="":eq2$="":eq3$="=":eq4$="":eq5$="":eq6$="":eq7$="":eq8$="":eq9$=""
ENDIF
IF sel=4 % Modulus mu=m-M zu pc
 !CLIPBOARD.GET cpb$
 INPUT "Modulus mag...",u_mu,10
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_pc=10^((u_mu/5)+1)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_pc$=STR$(ROUND(u_pc,9))
 u_pc0$=STR$(ROUND(u_pc,4))
 CLIPBOARD.PUT u_pc$
 u_dlgm$=""
 u_dlgm$=u_dlgm$+STR$(ROUND(u_mu,3))+"mag = "
 u_dlgm$=u_dlgm$+u_pc0$+"pc"
 DIALOG.MESSAGE sel0$[4]+", wobei pc = 10^((mag/5)+1):",u_dlgm$,u_msg
 eq1$="":eq2$="":eq3$="":eq4$="=":eq5$="":eq6$="":eq7$="":eq8$="":eq9$=""
ENDIF
IF sel=5 % Pc zu Lj
 CLIPBOARD.GET cpb$
 INPUT "Parsec pc...",u_pc,VAL(cpb$)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_lj=u_pc*pcm_/Lj_m
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_lj$=STR$(ROUND(u_lj,9))
 u_lj0$=STR$(ROUND(u_lj,4))
 CLIPBOARD.PUT u_lj$
 u_dlgm$=""
 u_dlgm$=u_dlgm$+STR$(ROUND(u_pc,4))+"pc = "
 u_dlgm$=u_dlgm$+u_lj0$+"Lj"
 DIALOG.MESSAGE sel0$[5]+", wobei Lj = pc*3.26156:",u_dlgm$,u_msg
 eq1$="":eq2$="":eq3$="":eq4$="":eq5$="=":eq6$="":eq7$="":eq8$="":eq9$=""
ENDIF
IF sel=6 % hex in dez
 !CLIPBOARD.GET cpb$
 INPUT "°/h...",u_gh,0
 INPUT "min '...",u_min,0
 INPUT "sec ''...",u_sec,0
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_dez=u_gh+u_min/60+u_sec/(60^2)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_dez$=STR$(ROUND(u_dez,9))
 u_dez0$=STR$(ROUND(u_dez,4))
 CLIPBOARD.PUT u_dez$
 u_dlgm$=""
 u_dlgm$=u_dlgm$+STR$(ROUND(u_gh,2))+"°/h "
 u_dlgm$=u_dlgm$+STR$(ROUND(u_min,2))+"' "
 u_dlgm$=u_dlgm$+STR$(ROUND(u_sec,4))+"'' = "
 u_dlgm$=u_dlgm$+u_dez0$+"°/h"
 DIALOG.MESSAGE sel0$[6]+", wobei dx° = hx°+(hx'/60)+(hx''/3600):",u_dlgm$,u_msg
 eq1$="":eq2$="":eq3$="":eq4$="":eq5$="":eq6$="=":eq7$="":eq8$="":eq9$="" 
ENDIF 
IF sel=7 % grad in rad
 INPUT "Winkelgrad a°...",u_wkg,45
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_rad=u_wkg/180*PI()
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_rad$=STR$(ROUND(u_rad,14))
 u_rad0$=STR$(ROUND(u_rad,5))
 CLIPBOARD.PUT u_rad$
 u_dlgm$=""
 u_dlgm$=u_dlgm$+STR$(ROUND(u_wkg,2))+"° = "
 u_dlgm$=u_dlgm$+u_rad$+"rad"
 DIALOG.MESSAGE sel0$[7]+", wobei rad = (a°/180) pi: ",u_dlgm$,u_msg
 eq1$="":eq2$="":eq3$="":eq4$="":eq5$="":eq6$="":eq7$="=":eq8$="":eq9$="" 
ENDIF 
IF sel=8 % V in r
 !CLIPBOARD.GET cpb$
 INPUT "V°...",u_V,VAL(cpb$)
 INPUT "d...",u_d,100
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 u_Vr=u_v/180*PI() % zu rad
 u_r=u_d*TAN(u_Vr/2)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 CLIPBOARD.PUT STR$(u_r)
 u_dlgm$="V="
 u_dlgm$=u_dlgm$+STR$(ROUND(u_v,4))+"° bei d="
 u_dlgm$=u_dlgm$+STR$(ROUND(u_d,2))+" : r="
 u_dlgm$=u_dlgm$+STR$(ROUND(u_r,4))
 DIALOG.MESSAGE sel0$[8]+", wobei r = d tan(V[rad]/2): ",u_dlgm$,u_msg
 eq1$="":eq2$="":eq3$="":eq4$="":eq5$="":eq6$="":eq7$="":eq8$="=":eq9$=""  
ENDIF 
IF sel=9 % 10^n in Einheit
 !CLIPBOARD.GET cpb$
 INPUT "x ...",u_xzp,VAL(cpb$)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF u_xzp>=10^3 THEN u_eh=u_xzp/10^3:u_eh$="k"
 IF u_xzp>=10^6 THEN u_eh=u_xzp/10^6:u_eh$="M"
 IF u_xzp>=10^9 THEN u_eh=u_xzp/10^9:u_eh$="G"
 IF u_xzp>=10^12 THEN u_eh=u_xzp/10^12:u_eh$="T"
 IF u_xzp>=10^15 THEN u_eh=u_xzp/10^15:u_eh$="P"
 IF u_xzp>=10^18 THEN u_eh=u_xzp/10^18:u_eh$="E"
 IF u_xzp>=10^21 THEN u_eh=u_xzp/10^21:u_eh$="Z"
 IF u_xzp>=10^24 THEN u_eh=u_xzp/10^24:u_eh$="Y"
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 CLIPBOARD.PUT STR$(ROUND(u_eh,3))
 u_dlgm$=""
 u_dlgm$=u_dlgm$+STR$(ROUND(u_xzp,4))+" = "
 u_dlgm$=u_dlgm$+STR$(ROUND(u_eh,1))+u_eh$
 DIALOG.MESSAGE sel0$[9]+": ",u_dlgm$,u_msg
 eq1$="":eq2$="":eq3$="":eq4$="":eq5$="":eq6$="":eq7$="":eq8$="":eq9$="="  
ENDIF 
IF sel=11:CLIPBOARD.GET cpb$:RETURN:ENDIF 
!CLIPBOARD.GET cpb$
GOTO calcst
RETURN
! % Dialog Linienbreite %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lbrte:
ARRAY.LOAD selbr$[],"1 [sehr schmal]","2 [schmal]","3 [normal]","4 [breit]","5 [sehr breit]"
DIALOG.SELECT skl, selbr$[],"Linienbreite:"
RETURN
! % Dialog Vergrösserung %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dlgvgr:
ARRAY.LOAD vgrf$[],"1 × [Maßstab]","2 ×","3 ×","4 ×","5 ×","10 ×","20 ×"
DIALOG.SELECT vgrf, vgrf$[],"Vergrößerungsfaktor:"
IF vgrf=1 THEN _vgr=1
IF vgrf=2 THEN _vgr=2
IF vgrf=3 THEN _vgr=3
IF vgrf=4 THEN _vgr=4
IF vgrf=5 THEN _vgr=5
IF vgrf=6 THEN _vgr=10
IF vgrf=7 THEN _vgr=20
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
 INPUT"Zeitrafferfaktor ve[0,1]=…",vse,0.05:s07=1
 vse=vse+1
 IF vse<=1 THEN vse=1.001
 IF vse>2 THEN vse=2
ENDIF
IF sel3=2: INPUT"Beschleunigungsfaktor vsmn[-1,1]=…",vsmn,0.1
 IF ABS(vsmn)>1 THEN vsmn=1
v=0.1:s07=-1:ENDIF
IF sel3=3
 INPUT"Minimaldistanz in AE=…",vsm_mn,0.02
 IF vsm_mn<0.01 THEN vsm_mn=0.01
 IF vsm_mn>100000 THEN vsm_mn=100000
 INPUT"Maximaldistanz in pc=…",vsm_mx,2.5*10^8
 IF vsm_mx<1 THEN vsm_mx=1
 IF vsm_mx>14.25*10^9 THEN vsm_mx=14.25*10^9
 INPUT"Zeitrafferfaktor vs[0,1]=…",vsm,0.05:s07=0
 vsm=vsm+1
 IF vsm<=1 THEN vsm=1.001
 IF vsm>2 THEN vsm=2
ENDIF
IF sel3=4                  %in AE
 ARRAY.LOAD selae0$[],"Astronomische Einheit AE","Lichtjahr Lj","Parsec pc"
 DIALOG.SELECT selae0, selae0$[],"Anfangsentfernung, Einheit [Lj="+INT$(Lj_)+"AE|pc="+INT$(pc_)+"AE]:"
 IF selae0=1:INPUT"Anfangsentfernung AE0=…",aed,1
  IF aed>14.25*10^9*pc_ THEN aed=14.25*10^9*pc_
 ENDIF
 IF selae0=2:INPUT"Anfangsentfernung Lj0=…",aed,1
  IF aed>14.25*3.26*10^9 THEN aed=14.25*3.26*10^9
 aed=aed*Lj_:ENDIF
 IF selae0=3:INPUT"Anfangsentfernung pc0=…",aed,1
  IF aed>14.25*10^9 THEN aed=14.25*10^9
  aed=aed*pc_
 ENDIF
 IF aed<=0 THEN aed=1
 ed=(sx/2.9)/aed           %Anfangsentfernungsfaktor ed
 GOSUB anfangsentfernung
ENDIF
IF sel3=5
 GOSUB dialoginf:GOTO st0
ENDIF
IF s07<>1 THEN ur$=""
RETURN
anfangsentfernung:
IF aed<Lj_:aed$=FORMAT$("#####.##",aed)+"AE":ENDIF
IF aed>=Lj_
 Ljd=aed/Lj_
 IF Ljd<=pcl_:aed$=FORMAT$("#.##",Ljd)+"Lj":ENDIF
 IF Ljd>pcl_
  IF Ljd < pcl_*10^3
  aed$= FORMAT$("###.##",Ljd/pcl_)+"pc":ENDIF
  IF Ljd >= pcl_*10^3 & Ljd< pcl_*10^6
  aed$= FORMAT$("###.##",Ljd/(pcl_*10^3))+"kpc":ENDIF
  IF Ljd >= pcl_*10^6 & Ljd< pcl_*10^9
  aed$= FORMAT$("###.##",Ljd/(pcl_*10^6))+"Mpc":ENDIF
  IF Ljd >= pcl_*10^9
  aed$= FORMAT$("###.##",Ljd/(pcl_*10^9))+"Gpc":ENDIF
 ENDIF
ENDIF
RETURN 
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialoginf:
GR.ORIENTATION 1
GR.SCREEN sx,sy            % Bildschirmformat
mx=sx/2:my=sy/2
GR.SET.STROKE 2
ARRAY.LOAD selinf$[],"i Astronomische Parameter","i Sonnensystem Parameter","i Stern Größenvergleich","i Rotationen im inneren Sonnensystem","i Rotationen im äußeren Sonnensystem","i Sonne-Mond-Erde Distanz","i Zehnerpotenzen"
DIALOG.SELECT selinf, selinf$[],"i Information:"
GOSUB global
IF selinf=1:INCLUDE ssr_parameter1.bas:ENDIF
IF selinf=2:INCLUDE ssr_systemgr.bas  :ENDIF
IF selinf=3:INCLUDE ssr_sterngr.bas   :ENDIF
IF selinf=4:INCLUDE ssr_rotat1.bas    :ENDIF
IF selinf=5:INCLUDE ssr_rotat2.bas    :ENDIF
IF selinf=6:INCLUDE ssr_distanz.bas   :ENDIF
IF selinf=7:INCLUDE ssr_potenz.bas    :ENDIF
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
IF sel4=1:swu=1:ur$=_ur$:ENDIF
IF sel4=2:swu=-1:ur$="":ENDIF
RETURN
! % Dialog Kompass %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialogk:
k01$="Kompass"
k02$="Position"
k03$="Kompass und Position"
ARRAY.LOAD sel5$[],k01$,k02$,k03$
DIALOG.SELECT sel5, sel5$[],"Kompassoptionen:"
IF sel5=1:swk=1:kp$=_kp1$:ENDIF
IF sel5=2:swk=-1:kp$=_kp2$:ENDIF
IF sel5=3:swk=0:kp$=_kp3$:ENDIF
RETURN
source_:
GR.TEXT.SIZE txzi/2
GR.TEXT.ALIGN 3
GR.TEXT.DRAW tx,sx,40,"IAU[2023]"
GR.TEXT.ALIGN 1
GR.TEXT.SIZE txzi
RETURN
sourceg1:
GR.TEXT.SIZE txzi/2
GR.TEXT.ALIGN 3
GR.TEXT.DRAW tx,sx,40,"NASA["+_g1_mon$+"/"+_g1_jar$+"]"
GR.TEXT.ALIGN 1
GR.TEXT.SIZE txzi
RETURN
sourceg2:
GR.TEXT.SIZE txzi/2
GR.TEXT.ALIGN 3
GR.TEXT.DRAW tx,sx,40,"CDS["+_g2_mon$+"/"+_g2_jar$+"]"
GR.TEXT.ALIGN 1
GR.TEXT.SIZE txzi
RETURN
! % Einstellungen Ende %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fin::INCLUDE ssr_fin.bas:RETURN
! % ENDE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
