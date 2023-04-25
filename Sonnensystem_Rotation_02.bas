!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                    SONNENSYSTEMROTATION
                   + semper ubique sum +

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
           © 2020-23 by Dietmar Gerald Schrausser
!!
_name$="SSR"
_ver$="v3.6.0"
GR.OPEN 255,0,0,0,0,1
GR.SCREEN sx,sy
mx=sx/2:my=sy/2
! % Einstellungen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FILE.EXISTS fx, "ssr.ini"
IF fx
 TEXT.OPEN r, fsr, "ssr.ini"
 TEXT.READLN fsr, ini$:s00=VAL(ini$)
 TEXT.READLN fsr, ini$:s01=VAL(ini$)
 TEXT.READLN fsr, ini$:s02=VAL(ini$)
 TEXT.READLN fsr, ini$:s03=VAL(ini$)
 TEXT.READLN fsr, ini$:s04=VAL(ini$)
 TEXT.READLN fsr, ini$:s05=VAL(ini$)
 TEXT.READLN fsr, ini$:s06=VAL(ini$)
 TEXT.READLN fsr, ini$:s07=VAL(ini$)
 TEXT.READLN fsr, ini$:s08=VAL(ini$)
 TEXT.READLN fsr, ini$:s09=VAL(ini$)
 TEXT.READLN fsr, ini$:s10=VAL(ini$)
 TEXT.READLN fsr, ini$:s11=VAL(ini$)
 TEXT.READLN fsr, ini$:t00=VAL(ini$)
 TEXT.READLN fsr, ini$:t01=VAL(ini$)
 TEXT.READLN fsr, ini$:t02=VAL(ini$)
 TEXT.READLN fsr, ini$:t03=VAL(ini$)
 TEXT.READLN fsr, ini$:t04=VAL(ini$)
 TEXT.READLN fsr, ini$:t05=VAL(ini$)
 TEXT.READLN fsr, ini$:t06=VAL(ini$)
 TEXT.READLN fsr, ini$:t07=VAL(ini$)
 TEXT.READLN fsr, ini$:t08=VAL(ini$)
 TEXT.READLN fsr, ini$:t09=VAL(ini$)
 TEXT.READLN fsr, ini$:t10=VAL(ini$)
 TEXT.READLN fsr, ini$:t11=VAL(ini$)
 TEXT.READLN fsr, ini$:t12=VAL(ini$)
 TEXT.READLN fsr, ini$:t13=VAL(ini$)
 TEXT.READLN fsr, ini$:t14=VAL(ini$)
 TEXT.READLN fsr, ini$:t15=VAL(ini$)
 TEXT.READLN fsr, ini$:t16=VAL(ini$)
 TEXT.READLN fsr, ini$:t17=VAL(ini$)
 TEXT.READLN fsr, ini$:t18=VAL(ini$)
 TEXT.READLN fsr, ini$:t19=VAL(ini$)
 TEXT.READLN fsr, ini$:t20=VAL(ini$)
 TEXT.READLN fsr, ini$:t21=VAL(ini$)
 TEXT.READLN fsr, ini$:t22=VAL(ini$)
 TEXT.READLN fsr, ini$:t23=VAL(ini$)
 TEXT.READLN fsr, ini$:t24=VAL(ini$)
 TEXT.READLN fsr, ini$:t25=VAL(ini$)
 TEXT.READLN fsr, ini$:t26=VAL(ini$)
 TEXT.READLN fsr, ini$:t27=VAL(ini$)
 TEXT.READLN fsr, ini$:t28=VAL(ini$)
 TEXT.READLN fsr, ini$:t29=VAL(ini$)
 TEXT.READLN fsr, ini$:t30=VAL(ini$)
 TEXT.READLN fsr, ini$:t31=VAL(ini$)
 TEXT.READLN fsr, ini$:t32=VAL(ini$)
 TEXT.READLN fsr, ini$:t33=VAL(ini$)
 TEXT.READLN fsr, ini$:t34=VAL(ini$)
 TEXT.READLN fsr, ini$:t37=VAL(ini$)
 TEXT.READLN fsr, ini$:t38=VAL(ini$)
 TEXT.READLN fsr, ini$:t39=VAL(ini$)
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
ELSE
 GOSUB dialogprm
 GOSUB dialog1prm
 GOSUB dialog2prm
 aed=1             % Entfernung
 aed$=" 1.0AE"
 ed=sx/2.9 %%%%%%%%% Vergrösserungsfaktor
 inf=1             % Startinfofensterschalter
 swu=-1            % Uhrzeit- und Kalenderskala
 ur$=""
 swk=0             % Kompassoption
 kp$=""
 vse=1.05          % Geschwindigkeit 
 vsm=1.05          % Geschwindigkeit Vollsimulation
 v=0.1             % Umlaufgeschwindigkeit bei Simulation
 sw=1              % Vollsimulation Schalter
 sec1=-1           %
ENDIF
t37=-1             % sw Grössenvergleich
GOSUB mnt
!
SENSORS.OPEN 3
SENSORS.OPEN 8
scr=0
!!
!GR.OPEN 255,200,200,200,0,1
!!
clz1=sx/28    %8
clz2=sx/52    %4
clz3=sx/47    %5
clz4=sx/41    %6
clz5=sx/100   %1
clz6=sx/80    %2
txz1=sx/50    %12
txz2=sx/60    %10
c145=1.45     %sx/760 %1.45 corr
c10= sy/231   %10 corr
c01=sx/1080   %1 corr
c02=c01*2
cc=255
!
GR.BITMAP.CREATE scrs, sx,sy
pat$="../../EIGENEDATEIEN/SSR/scrs/"
!ed=ed/aed          % Anfangsentfernung
c_= 1079252849      % km/h Lichtgeschwindigkeit
au_=1.4959787*10^11 % AE in m
Lj=63241.07         % 1Lj in AE
pc_=648000/PI()     % pc aus AE
!! 
IF inf=1 & s07<>2 %Startinfo
 DIALOG.MESSAGE ,_name$+" SONNENSYSTEMROTATION "+_ver$+"       Copyright © 2020-23 by                   Dietmar G. SCHRAUSSER                       + Semper ubique sum +",m
ENDIF
!! 
GOSUB dialog
!
!DO 
st0: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GR.SET.STROKE 2
GOSUB zeit          % Aktuelle Zeit
!
! % Schaltjahr %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sj=0
IF Yr/4=INT(Yr/4) THEN sj=1
sj=1
GOSUB tagnr
! % Sommerzeit %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sz$="":sz=0
IF nt>=mz+29 & nt<or+24
 sz$="MSZ":sz=1
ENDIF
!
tg=nt+1              % Tagnummer
tg=tg+10             %
i=((tg/366)*360)-135 % Tagposition
j=0                  % Tagzaehler
jx=yr                % Jahr
!
st: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IF s07=2               % // Information //
 INCLUDE "ssri01.bas"  %
 INCLUDE "ssri02.bas"  %
 INCLUDE "ssri03.bas"  %
 INCLUDE "ssri04.bas"  %
 !INCLUDE "ssri05.bas" %
 INCLUDE "ssri06.bas"  %
 !INCLUDE "ssri07.bas" %
 INCLUDE "ssri08.bas"  %
 GOSUB dialog
ENDIF
!
mnc=min/60          % Minutentakt
ae=1/(ed/(sx/2.9)) %% Faktor AE zu ed
IF s07=1 THEN v=0   % bei Echtzeit
i=i+v               % Tagposition
nt=nt+v             % Tagnummer
!
GR.CLS
GR.TEXT.SETFONT "courier","",1
GR.TEXT.SIZE txz1
! % Oortsche Wolke %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d=100000           %AE
gr1=ed*d
IF u10=1 & ed<50000 & AE<10000000 %
 GR.COLOR 45,60,60,60,1
 GR.CIRCLE sn,mx,my,ed*d
 IF AE<=45000
  GR.COLOR 255,0,0,0,1
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
 IF t06=1&ae>30000&ae<3000000
  GR.TEXT.ALIGN 2
  GR.COLOR 255,60,60,60,1
  GR.TEXT.DRAW txt,mx,my-gr1-c10,"Oortsche Wolke"
 ENDIF
ENDIF
! % Heliosphäre %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d=150
gr1=ed*d
IF u14=1 & ed<500 & AE<100000 %
 GR.COLOR 178,20,10,0,1
 GR.CIRCLE sn,mx,my,ed*(d/1.3)
 GR.COLOR 130,20,10,0,1
 GR.CIRCLE sn,mx,my,ed*(d/1.1)
 GR.COLOR 115,20,10,0,1
 GR.CIRCLE sn,mx,my,ed*d
 IF t06=1&ae>40&ae<2700
  GR.TEXT.ALIGN 2
  GR.COLOR 230,70,60,0,1
  GR.TEXT.DRAW txt,mx,my-gr1-c10,"Heliosphäre"
 ENDIF
ENDIF
! % Kuipergürtel %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d=45
gr1=ed*d*1.42
IF u13=1 & ed<500 & AE<100000 %
 GR.COLOR 30,60,60,100,1
 GR.CIRCLE sn,mx,my,ed*d*1.8
 IF u14=1
  GR.COLOR 200,20,10,0,1
 ELSE
  GR.COLOR 255,0,0,0,1
 ENDIF
 GR.CIRCLE sn,mx,my,ed*d
 IF t06=1&ae>20&ae<700
  GR.TEXT.ALIGN 2
  GR.COLOR 200,60,60,100,1
  GR.TEXT.DRAW txt,mx,my-gr1-c10,"Kuipergürtel"
 ENDIF
ENDIF
! % Asteroidengürtel %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d=3
gr1=ed*4.8
IF u04=1 & ed>5 & AE<10000 %
 GR.COLOR 30,100,100,60,1
 GR.CIRCLE sn,mx,my,ed*d*1.8
 IF u14=1 
  GR.COLOR 255,20,10,0,1
 ELSE
  GR.COLOR 255,0,0,0,1
 ENDIF
 GR.CIRCLE sn,mx,my,ed*d*1.42
 IF t06=1&ae>1.5&ae<45
  GR.TEXT.ALIGN 2
  GR.COLOR 150,100,100,60,1
  GR.TEXT.DRAW txt,mx,my-gr1-c10,"Asteroidengürtel"
 ENDIF
ENDIF
! % Jahreszeiten %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IF s01=1 
 GR.COLOR 35,cc,cc,0,1
 GR.LINE ln,0,my,sx,my
 GR.LINE ln,mx,0,mx,sy
 ! %Namen
 stl=431
 ac=360/24
 lt=sy/4.8125           % // Distanz //
 GR.TEXT.ALIGN 2
 ! GR.TEXT.BOLD 1
 GR.TEXT.SIZE sx/36     %12
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
! % Himmelsgewölbe %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IF t34=1 & ae>=lj
 GR.COLOR 35,cc/2,cc/2,cc/2,0
 !GR.CIRCLE cl,mx,my,mx
 FOR hg=0 TO 90 STEP 10
  GR.CIRCLE cl,mx,my,mx*SIN(TORADIANS(hg))
 NEXT
 FOR w=1 TO 24
  GR.ROTATE.START w/24*360,mx,my
  GR.LINE ln, 0,my,mx-sx/108,my
  GR.ROTATE.END
 NEXT
ENDIF
! % Rektaszension %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IF t31=1 & ae>=lj
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
 dsn=0
 IF t39=1 % Deklination %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  dg_x=dg_:dm_x=dm_:ds_x=ds_
  GOSUB dekl
  GR.COLOR 80, cc,cc,0, 1
  GR.TEXT.SIZE sx/30.857 
  GR.TEXT.ALIGN 2
  GR.TEXT.DRAW tx,mx,sy/20,dkl$
  GR.COLOR 80, cc,cc,0, 0
 ENDIF 
 ! % Positionszeiger %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 m_1=m_/60
 s_2=s_/6000
 pos=h_+m_1+s_1
 pos1=-(pos/24)*360
 GR.ROTATE.START pos1,mx,my
 GR.LINE ln, mx,my,mx,my+(my/1.96)*dsn
 GR.CIRCLE cl,mx,my+(my/1.93)*dsn,sy/115.5
 GR.ROTATE.END
 GR.COLOR 80, cc,cc,0, 1
 GR.TEXT.SIZE sx/30.857 
 GR.TEXT.ALIGN 2
 rk1$=INT$(h_)+CHR$(688)
 rk1$=rk1$+INT$(m_)+"'"
 rk1$=rk1$+INT$(s_)+"''"
 GR.TEXT.DRAW tx,mx,sy/40,rk$
ENDIF
! % Monate %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IF s02=1 
 FOR s=1 TO 12
  GR.ROTATE.START 180-((s/12)*360)-((10/366)*360),mx,my
  GR.COLOR 8, cc, cc,cc, 1
  GR.LINE ln,-sx,my,sx*2,my
  GR.ROTATE.END
 NEXT
 ! % Monatsnummern %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 stl=410
 ac=360/24
 lt=sy/6.6         % // Distanz //
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE sx/36 
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
! % Sternbilder/Tierkreis %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IF t00=1 % & ae>=lj
 GR.COLOR 10, cc,cc,0, 0
 IF ae/Lj<=2200
  FOR s=1 TO 12
   GR.ROTATE.START 180-((s/12)*360),mx,my
   GR.LINE ln,-sx,my,sx*2,my
   GR.ROTATE.END
  NEXT
  % Tierkreissymbole %%%%%%%%%%%%%%%%%%
  dis=sy/5.372
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
 IF ae/Lj>=2300 & ae/Lj<=90000
  GR.COLOR 35,cc,cc,0,0
  GR.CIRCLE cl,mx,my,ed*(3000*Lj)
 ENDIF
ENDIF
! % Grössenvergleich %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IF t37=1 
 dst=500
 SW.BEGIN vglst
  SW.CASE 4 %%%%%%%%%%%%%%%%%
   gr1=(ed*3.55)*1.42
   GR.COLOR (cc-155),cc,0,0,1
   vglst$="'Beteigeuze'"
   SW.BREAK
  SW.CASE 5 %%%%%%%%%%%%%%%%% 
   dst=lj*1400
   gr1=(ed*12*Lj)*1.42
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
   GR.COLOR 255-20,255,255,255,1
   vglst$="'"+CHR$(945)+" Centauri A'"
   SW.BREAK
  SW.CASE 3 %%%%%%%%%%%%%%%%%
   gr1=(ed*0.2)*1.42
   GR.COLOR (cc-40),cc,0,0,1
   vglst$="'Aldebaran'"
   SW.BREAK
 SW.END
 GR.TEXT.ALIGN 2
 IF t06=1&ae<dst THEN GR.TEXT.DRAW txt,mx,my-gr1-c10,vglst$
 IF ae<dst
  GR.CIRCLE sn,mx,my,gr1
 ENDIF
ENDIF
!
GOSUB sonnensystem
IF ae>=lj THEN             GOSUB sterne
IF ae>Lj*3.261564*90  THEN GOSUB nebel
IF ae>Lj*3.261564*100 THEN GOSUB galaxien
!
! % Simulation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
jc=i-(j*360)
IF jc>=360-135+10
 j=j+1:jx=jx+1:nt=1
ENDIF
IF nt<0
 j=j-1:jx=jx-1:nt=366
ENDIF
! % Textoutput %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GR.COLOR 80,cc,cc,cc,0
GR.TEXT.ALIGN 3
GR.TEXT.SIZE sx/35           % txz1 
IF s10=1                     % Skala
 GR.LINE ln,0,sy-sy/177.69,mx,sy-sy/165
 GR.LINE ln,0,sy-sy/144.375,0,sy-sy/210
 GR.LINE ln,mx,sy-sy/144.375,mx,sy-sy/210 
 GR.LINE ln,mx/2,sy-sy/144.375,mx/2,sy-sy/210
 IF AE<Lj*0.1
  GR.TEXT.DRAW txt,mx,sy-sy/100,FORMAT$("#####.#",AE)+"AE"
 ENDIF
 IF AE>=Lj*0.1               % 1Lichtjahr
  GR.COLOR 30,cc,cc,cc,0
  GR.CIRCLE cl,mx,my,mx      % Skala
  GR.COLOR 80,cc,cc,cc,0
  IF AE<Lj*3.261564

   GR.TEXT.DRAW txt,mx,sy-sy/100,FORMAT$("# ######.#",ae)+"AE"
   GR.TEXT.DRAW txt,mx,sy-sy/40,FORMAT$("#.#",ae/Lj)+"Lj"
  ENDIF
 ENDIF
 IF AE>=Lj*3.261564         % 1Parsec

  GR.TEXT.DRAW txt,mx,sy-sy/100,FORMAT$("###### ###### ######.#",AE)+"AE"
  IF ae<Lj*3261.564
   GR.TEXT.DRAW txt,mx,sy-sy/40,FORMAT$("###.#",ae/pc_)+"pc"
  ENDIF
  IF ae>=Lj*3261.564
   IF ae<Lj*3261564
    GR.TEXT.DRAW txt,mx,sy-sy/40,FORMAT$("###.#",(ae/pc_)/1000)+"kpc"
   ENDIF
   IF ae>=Lj*3261564 & ae<Lj*3261564000
    GR.TEXT.DRAW txt,mx,sy-sy/40,FORMAT$("# ###### ######.#",(ae/pc_)/10^6)+"Mpc"
   ENDIF
   IF ae>=Lj*3261564000
    GR.TEXT.DRAW txt,mx,sy-sy/40,FORMAT$("# ###### ######.#",(ae/pc_)/10^9)+"Gpc"
   ENDIF
  ENDIF
 ENDIF
 IF s07=0                  % bei Vollsimulation
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx,sy-sy/100,FORMAT$("# ###### ###### ###### ######",v_)+"AE/h"
  GR.TEXT.DRAW txt,sx,sy-sy/40,FORMAT$("# ###### ###### ######",v_c)+"c"
 ENDIF
 IF s07<>0
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx,sy-sy/40,INT$(VAL(y$)-AE/lj+1)
 ENDIF
ENDIF
IF s09=1 % Text %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF s07=0       % bei Vollsimulation
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,sx/100,sy/80,"SSR SONNENSYSTEMROTATION "+_ver$+" Vollsimulation"
  GR.TEXT.DRAW txt,sx/100,sy/80+sy/80,"Copyright © 2020-23 by Dietmar Gerald Schrausser"
 ENDIF
 IF s07=-1      % bei Simulation
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,sx/100,sy/80,INT$(jx)
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx,sy/80,INT$(nt+1)+"T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx,sy-sy/100,"Simulation"+FORMAT$("#.#",v)+"x"
 ENDIF
 IF s07=1       % bei Echtzeit
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,sx/100,sy/80,d$+"."+m$+"."+y$
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx,sy/80,h$+":"+min$+" "+sz$
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx,sy-sy/100,"Echtzeit"
 ENDIF
ENDIF
! % Kompass %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IF s08=1 
 lg=15:p=10
 SENSORS.READ 3,cp,cpi,crl
 IF swk=1| swk=0
  GR.COLOR cc/3,cc,50,50,1
  GR.CIRCLE cl,mx,my/(p/2),sx/83
  GR.COLOR cc,cc,50,50,0
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
! % Touch Ereignisse %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GR.TOUCH2 t2,tx,ty
IF t2
 GOSUB dialog
 ! IF s07=1 THEN GOTO st0
ENDIF
GR.TOUCH tc,tx,ty
IF tc
 IF ae/Lj<=(90*10^9)/2         % // max Entfernung //
  IF ty<sy/3 THEN ed=ed/vse    %%%%%%%%
 ENDIF
 IF ae>=0.002                  % // min Entfernung //
  IF ty>sy*2/3 THEN ed=ed*vse  %%%%%%%%
 ENDIF
 IF s07=-1
  IF ty<=sy*2/3 & ty>=sy/3
   IF tx<mx THEN v=v+0.1
   IF tx>mx THEN v=v-0.1
  ENDIF
 ENDIF
ENDIF
! % Vollsimulation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IF s07=0
 IF sw=1
  ed=ed/vsm %%%%%%%%
  IF ae/Lj>=2.5*10^8:sw=-1:PAUSE 2000:ENDIF
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
! % SCRS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
 GOTO st0
 !UNTIL 0
ELSE
 !UNTIL 0
 GOTO st
ENDIF
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
d=d*Lj
dsn=(COS(TORADIANS(dkl)))
RETURN
! % Sonnensystem %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sonnensystem:
! % Sonne %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IF ae/Lj>=200000
 GR.COLOR cc/9,cc,cc,cc,1
ENDIF
IF ae/Lj<200000
 GR.COLOR cc,cc,cc,0, 1
 IF ae>1000
  GR.COLOR cc,cc,cc,cc,1
 ENDIF
ENDIF
gr=(ed*0.005)*c145
IF gr<sx/400 THEN gr=sx/400
GR.CIRCLE sn,mx,my,gr
IF t06=1 & ae/Lj<=5 %Text
 GR.COLOR cc,cc,cc,cc,1
 IF ae<=60:GR.COLOR cc,cc,cc,0,1:ENDIF
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 % %11
 IF t00=1
  GR.TEXT.DRAW txt,mx,my-c10,CHR$(8857)
 ELSE
  GR.TEXT.DRAW txt,mx,my-c10,"Sonne"
 ENDIF
ENDIF
! % Merkur %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=347                       % Position
d=0.37
uf=0.241
xcr=0.111*ed
ycr=0.1*ed
mkrd=TORADIANS(((pos-i/uf)-45))
mkx=mx-ed*(d*1.42)*SIN(-mkrd) % Merkurkoordinaten
mky=my-ed*(d*1.42)*COS(mkrd)  %
IF s00=1 & AE<10000           % Umlaufbahn
 GR.COLOR 100,100,100,100,0
 GR.CIRCLE sn,mx-xcr,my-ycr,ed*d*1.42
ENDIF
IF AE<2000                    % Darstellung
 GR.COLOR 150,100,255,0,1
 GR.ROTATE.START pos-i/uf,mx-xcr,my-ycr
 GR.CIRCLE cl,(mx-xcr)-ed*d,(my-ycr)-ed*d,sx/700
 IF u11=1 & ae<=2.5           % Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,(mx-xcr)-ed*d,(my-ycr)-ed*d
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1 %11
  IF t00=1
   GR.TEXT.DRAW txt,(mx-xcr)-ed*d,(my-ycr)-ed*d-c10,"¥"
  ELSE
   GR.TEXT.DRAW txt,(mx-xcr)-ed*d,(my-ycr)-ed*d-c10,"Merkur"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END
ENDIF
!                             % Projektion
IF u01=1
 GR.COLOR 30,100,cc,0
 GR.LINE ln, mkx-xcr,mky-ycr,ex,ey
ENDIF
! % Venus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=65                        % Position
d=0.72
uf=0.62
vrd=TORADIANS(((pos-i/uf)-45))
vx=mx-ed*(d*1.42)*SIN(-vrd)   % Venuskoordinaten
vy=my-ed*(d*1.42)*COS(vrd)    %
IF s00=1 & AE<10000           % Umlaufbahn
 GR.COLOR 100,100,100,100,0
 GR.CIRCLE sn,mx,my,ed*d*1.42
ENDIF
IF AE<2000                    % Darstellung
 GR.COLOR 250,255,255,255,1
 GR.ROTATE.START pos-i/uf,mx,my
 GR.CIRCLE cl,mx-ed*d,my-ed*d,sx/550 
 IF u11=1 & ae<=2.5           % Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,mx-ed*d,my-ed*d
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1 %%11
  IF t00=1
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,CHR$(9792)
  ELSE
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,"Venus"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END 
ENDIF
!                             % Projektion
IF u02=1
 GR.COLOR 25,cc,cc,cc
 GR.LINE ln, vx,vy,ex,ey
ENDIF
! % Erde %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
erd=TORADIANS(-i-45)
ex=mx-(ed*1.42)*SIN(-erd)     % Erdkoordinaten
ey=my-(ed*1.42)*COS(erd)      %
IF s00=1 & AE<10000           % Umlaufbahn
 GR.COLOR 100,100,100,100,0
 GR.CIRCLE sn,mx,my, ed*1.42
ENDIF
IF s04=1                      % Erdprojektion
 GR.ROTATE.START -i+45,mx,my
 GR.COLOR 65,200,200,255,1
 GR.LINE ln,-sx/470,my,mx,my
 IF s03=1 THEN GR.CIRCLE cl, sx/216,my,sx/360
 GR.ROTATE.END
ENDIF
GR.ROTATE.START -i,mx,my
IF AE<2000                    % Darstellung
 GR.COLOR 255,100,100,255,1
 GR.CIRCLE cl,mx-ed,my-ed,sx/500
 IF u11=1 & ae<=2.5           % // Text //
  pot= 0
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1           % 11
  IF t00=1
   GR.ROTATE.START 180-pot+i,mx-ed,my-ed
   GR.TEXT.DRAW txt,mx-ed,my-ed+(c10*2),CHR$(9792)
  ELSE
   GR.ROTATE.START -pot+i,mx-ed,my-ed
   GR.TEXT.DRAW txt,mx-ed,my-ed-sy/231,"Erde"
  ENDIF
  GR.ROTATE.END
 ENDIF
ENDIF
IF s08=1 % Blickrichtung %%%%%%%%%%%%%%%%%%%%%%%
 IF swk=-1|swk=0
  SENSORS.READ 3,cp,dmy,dmy
  GR.COLOR cc-65,cc,0,0,0
  GR.ROTATE.START 180-cp+i,mx-ed,my-ed
  GR.LINE ln,mx-ed,my-ed,mx-ed,my-(c10*1.5)-ed
  GR.CIRCLE cl,mx-ed,my-ed-(c10*1.8),c01*3
  GR.CIRCLE cl,mx-ed,my-ed-(c10*2.3),c01
  GR.CIRCLE cl,mx-ed,my-ed+(c10/2),c02
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1 %9
  GR.TEXT.DRAW tx, mx-ed,my-ed-(c10*2.8),"S"
  GR.ROTATE.END
 ENDIF
ENDIF
IF s03=1 % Erdzeitskala %%%%%%%%%%%%%%%%%%%%%%%%%%%
 IF s07=1 & swu=1       % Uhrzeit und Kalenderskala
  GR.COLOR 80,cc,cc,cc,1
  FOR j1=1 TO 24
   GR.ROTATE.START (j1/24)*360,mx-ed,my-ed
   GR.LINE ln, mx-ed,my-(c10*3)-ed,mx-ed,my-(c10*2.5)-ed
   GR.ROTATE.END
  NEXT
 ENDIF
 GR.COLOR 60,200,100,100,1
 cr=((1/24)*360)        % Korrekturfaktor
 IF s07=1 %bei Echtzeit
  GR.ROTATE.START ((12/24)-(((st-sz)+mnc)/24))*360-cr,mx-ed,my-ed
  GR.LINE ln, mx-ed,my-ed,2*sx+ed,2*sy+ed
  GR.CIRCLE cl, mx-ed+(c10*0.8),my-ed+(c10*1.5),c01*3
  GR.ROTATE.END
  GR.ROTATE.START (((12/24)-(((st-sz)+mnc)/24))*360)-90-cr,mx-ed,my-ed
  GR.LINE ln, 0-ed,0-ed,2*sx-ed,2*sy-ed
  GR.COLOR 20,0,2,cc,1 
  GR.ARC arc,mx-ed-sx/6,my-ed-sx/6,mx-ed+sx/6,my-ed+sx/6,62.7,180,1
  GR.ROTATE.END
 ENDIF
 IF s07=-1              % bei Simulation
  FOR j1=1 TO 24
   GR.ROTATE.START (j1/24)*360-41,mx-ed,my-ed
   GR.LINE ln, mx-ed,my-ed,2*mx+ed,2*my+ed
   GR.ROTATE.END
  NEXT
 ENDIF
ENDIF
GR.ROTATE.END
IF s07=1 & swu=1        % Uhrzeit und Kalenderskala
 GR.COLOR 80,cc,cc,cc,1
 FOR j1=1 TO 52         % Wochen
  GR.ROTATE.START (j1/52)*360,mx,my
  GR.LINE ln, mx,my-c10*40,mx,my-c10*40.2
  GR.ROTATE.END
 NEXT
ENDIF
! % Mars %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=74                          % Position
d=1.52
uf=1.88
xcr=0.1216*ed
ycr=0.15*ed
mrd=TORADIANS(((pos-i/uf)-45))
msx=mx-ed*(d*1.42)*SIN(-mrd)    % Marskoordinaten
msy=my-ed*(d*1.42)*COS(mrd)     %
IF s00=1 & AE<10000             % Umlaufbahn
 GR.COLOR 100,100,100,100,0
 GR.CIRCLE sn,mx+xcr,my-ycr,ed*d*1.42
ENDIF
IF AE<2000                      % Darstellung
 GR.COLOR 255,255,100,100,1
 GR.ROTATE.START pos-i/uf,mx+xcr,my-ycr
 GR.CIRCLE cl,(mx+xcr)-ed*d,(my-ycr)-ed*d,sx/600
 IF u11=1 & ae<=2.5             % Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,(mx+xcr)-ed*d,(my-ycr)-ed*d
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1 %11
  IF t00=1
   GR.TEXT.DRAW txt,(mx+xcr)-ed*d,(my-ycr)-ed*d-c10,CHR$(9794)
  ELSE
   GR.TEXT.DRAW txt,(mx+xcr)-ed*d,(my-ycr)-ed*d-c10,"Mars"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END
ENDIF
!                               % Projektion
IF u03=1
 GR.COLOR 35,cc,100,100
 GR.LINE ln, msx+xcr,msy-ycr,ex,ey
ENDIF
! % Jupiter %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=210                         % Position
d=5.2                           % AE Entfernung
uf=11.9                         % J Umlauf
ycr=0.325*ed
jrd=TORADIANS(((pos-i/uf)-45))
jsx=mx-ed*(d*c145)*SIN(-jrd)    % Jupiterkoordinaten
jsy=my-ed*(d*c145)*COS(jrd) %
IF s00=1 & ed<sy/10 & AE<3000   % Umlaufbahn
 GR.COLOR 60,100,100,100,0
 GR.CIRCLE sn,mx,my-ycr,ed*d*1.42
ENDIF
IF AE<1000                      % Darstellung
 GR.COLOR 150,255,255,100,1
 GR.ROTATE.START pos-i/uf,mx,my-ycr
 GR.CIRCLE cl,mx-ed*d,(my-ycr)-ed*d,sx/400
 IF u11=1 & ae<40               % Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,mx-ed*d,(my-ycr)-ed*d
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1             % 11
  IF t00=1
   GR.TEXT.DRAW txt,mx-ed*d,(my-ycr)-ed*d-c10,CHR$(9795)
  ELSE
   GR.TEXT.DRAW txt,mx-ed*d,(my-ycr)-ed*d-c10,"Jupiter"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END
ENDIF
!                               % Projektion
IF u05=1
 GR.COLOR 30,cc,cc,100
 GR.LINE ln, jsx,jsy-ycr,ex,ey
ENDIF
! % Saturn %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=240                         % Position
d=9.55
uf=26.46
xcr=0.6367*ed
srd=TORADIANS(((pos-i/uf)-45))
ssx=mx-ed*(d*c145)*SIN(-srd)    % Saturnkoordinaten
ssy=my-ed*(d*c145)*COS(srd)     %
IF s00=1 & ed<sy/10 & AE<3000   % Umlaufbahn
 GR.COLOR 60,100,100,100,0
 GR.CIRCLE sn,mx-xcr,my,ed*d*1.42
ENDIF
IF AE<1000                      % Darstellung
 GR.COLOR 150,255,255,255,1
 GR.ROTATE.START pos-i/uf,mx-xcr,my
 GR.CIRCLE cl,(mx-xcr)-ed*d,my-ed*d,sx/400
 GR.LINE ln,(mx-xcr)-ed*d-c10/2,my-ed*d, (mx-xcr)-ed*d+c10/2, my-ed*d
 IF u11=1 & ae<=90              % Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,(mx-xcr)-ed*d,my-ed*d
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1             %11
  IF t00=1
   GR.TEXT.DRAW txt,(mx-xcr)-ed*d,my-ed*d-c10,CHR$(9796)
  ELSE
   GR.TEXT.DRAW txt,(mx-xcr)-ed*d,my-ed*d-c10,"Saturn"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END 
ENDIF
!                              % Projektion
IF u06=1
 GR.COLOR 30,cc,cc,cc
 GR.LINE ln, ssx-xcr,ssy,ex,ey
ENDIF
! % Uranus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=188                        % Position
d=19.22
uf=84
ycr=-0.6406*ed
urd=TORADIANS(((pos-i/uf)-45))
usx=mx-ed*(d*c145)*SIN(-urd)   % Uranuskoordinaten
usy=my-ed*(d*c145)*COS(urd)    %
IF ed<sy/20
 IF s00=1 & AE<10000           % Umlaufbahn
  GR.COLOR 60,100,100,100,0
  GR.CIRCLE sn,mx,(my-ycr),ed*d*1.42
 ENDIF
 IF AE<2000                    % Darstellung
  GR.COLOR 150,100,100,255,1
  GR.ROTATE.START pos-i/uf,mx,(my-ycr)
  GR.CIRCLE cl,mx-ed*d,(my-ycr)-ed*d,sx/450
  IF u11=1 & ae<=125           % Text
   pot= -pos
   GR.ROTATE.START pot+i/uf,mx-ed*d,(my-ycr)-ed*d
   GR.TEXT.ALIGN 2
   GR.TEXT.SIZE txz1           % 11
   IF t00=1
    GR.TEXT.DRAW txt,mx-ed*d,(my-ycr)-ed*d-c10,CHR$(9797)
   ELSE
    GR.TEXT.DRAW txt,mx-ed*d,(my-ycr)-ed*d-c10,"Uranus"
   ENDIF
   GR.ROTATE.END
  ENDIF
  GR.ROTATE.END 
 ENDIF
ENDIF
!                              % Projektion
IF u07=1
 GR.COLOR 30,100,100,cc
 GR.LINE ln, usx,usy-ycr,ex,ey
ENDIF
! % Neptun %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=234                        % Position
d=30.11
uf=165
nrd=TORADIANS(((pos-i/uf)-45))
npx=mx-ed*(d*c145)*SIN(-nrd)   % Neptunkoordinaten
npy=my-ed*(d*c145)*COS(nrd)    %
IF ed<sy/20
 IF s00=1 & AE<10000           % Umlaufbahn
  GR.COLOR 60,100,100,100,0
  GR.CIRCLE sn,mx,my,ed*d*1.42
 ENDIF
 IF AE<2000                    % Darstellung
  GR.COLOR 100,200,200,255,1
  GR.ROTATE.START pos-i/uf,mx,my
  GR.CIRCLE cl,mx-ed*d,my-ed*d,sx/450
  IF u11=1 & ae<=185           % Text
   pot=-pos
   GR.ROTATE.START pot+i/uf,mx-ed*d,my-ed*d
   GR.TEXT.ALIGN 2
   GR.TEXT.SIZE txz1           % 11
   IF t00=1
    GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,CHR$(9798)
   ELSE
    GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,"Neptun"
   ENDIF
   GR.ROTATE.END
  ENDIF
  GR.ROTATE.END
 ENDIF
ENDIF
!                             % Projektion
IF u08=1
 GR.COLOR 30,200,200,cc
 GR.LINE ln, npx,npy,ex,ey
ENDIF
! % Pluto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=290                       % Position
d=39.5
uf=249
xcr=-12.29*ed
ycr=-9.29*ed
prd=TORADIANS(((pos-i/uf)-45))
plx=mx-ed*(d*c145)*SIN(-prd)  % Plutokoordinaten
ply=my-ed*(d*c145)*COS(prd)   %
IF ed<sy/20
 IF s00=1 & AE<10000          % Umlaufbahn
  GR.COLOR 30,100,100,100,0
  GR.CIRCLE sn,mx-xcr,my-ycr,ed*d*1.42
 ENDIF
 IF AE<2000                   % Darstellung
  GR.COLOR 80,200,200,0,1
  GR.ROTATE.START pos-i/uf,mx-xcr,my-ycr
  GR.CIRCLE cl,(mx-xcr)-ed*d,(my-ycr)-ed*d,sx/800
  IF u11=1 & ae<=220          % Text
   pot= -pos
   GR.ROTATE.START pot+i/uf,(mx-xcr)-ed*d,(my-ycr)-ed*d
   ! GR.TEXT.BOLD 0
   GR.TEXT.ALIGN 2
   GR.TEXT.SIZE txz1          % 11
   IF t00=1
    GR.TEXT.DRAW txt,(mx-xcr)-ed*d,(my-ycr)-ed*d-c10,CHR$(9799)
   ELSE
    GR.TEXT.DRAW txt,(mx-xcr)-ed*d,(my-ycr)-ed*d-c10,"Pluto"
   ENDIF 
   GR.ROTATE.END
  ENDIF
  GR.ROTATE.END
 ENDIF
ENDIF
!                             % Projektion
IF u09=1
 GR.COLOR 30,200,200,0
 GR.LINE ln, plx-xcr,ply-ycr,ex,ey
ENDIF
RETURN
! % Sterne %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sterne:
! % Alpha Centauri A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Alpha Centauri"        %Name
pro_=t01                   %Projektionsvariable
rds=sx/400                 %Objektradius Lj
d=4.367                    %Lichtjahre
dg_x=-60:dm_x=50:ds_x=2.37 %Deklination
GOSUB dekl
h_x=14:m_x=39:s_x=36.494   %Position
GOSUB r_pos
GR.ROTATE.START pos, mx,my
GR.COLOR cc-200,cc,cc/2,cc/2,0
GR.CIRCLE cl,mx-ed*d,my-ed*d,ed*(Lj*0.22)
GR.ROTATE.END
GR.COLOR cc-100,cc,cc,cc,1 
otype=-1:GOSUB objdarst:otype=0
! % Aldebaran  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Aldebaran"        %Name
pro_=t02                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj
d=65.23                     %Lichtjahre
dg_x=16:dm_x=30:ds_x=33.49  %Deklination
GOSUB dekl
h_x=4:m_x=35:s_x=55.23907   %Position
GOSUB r_pos
GR.COLOR cc,cc,cc/2,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % Arkturus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Arkturus"         %Name
pro_=t03                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj
d=36.7                      %Lichtjahre
dg_x=19:dm_x=10:ds_x=56     %Deklination
GOSUB dekl
h_x=14:m_x=15:s_x=39.7      %Position
GOSUB r_pos
GR.COLOR cc-80,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Daneb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Daneb"            %Name
pro_=t20                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj
d= 2616 %Lichtjahre 
dg_x=45:dm_x=16:ds_x=49     %Deklination
GOSUB dekl
h_x=20:m_x=41:s_x=25.9      %Position
GOSUB r_pos
GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1
otype=-1:GOSUB objdarst:otype=0
! % Regulus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Regulus"          %Name
pro_=t13                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj
d= 79.3                     %Lichtjahre 
dg_x=11:dm_x=58:ds_x=1.95   %Deklination
GOSUB dekl
h_x=10:m_x=8:s_x=22.311     %Position
GOSUB r_pos
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Alderamin %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Alderamin"        %Name
pro_=t33                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj
d= 49                       %Lichtjahre 
dg_x=62:dm_x=35:ds_x=8.1    %Deklination
GOSUB dekl
h_x=21:m_x=18:s_x=34.77     %Position
GOSUB r_pos
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Rasalhague %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Rasalhague"       %Name
pro_=t12                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj
d= 42.6                     %Lichtjahre 
dg_x=12:dm_x=33:ds_x=36.13  %Deklination
GOSUB dekl
h_x=17:m_x=33:s_x=56.07     %Position
GOSUB r_pos
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Vega %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Vega"             %Name
pro_=t12                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj
d= 25.04                    %Lichtjahre 
dg_x=38:dm_x=47:ds_x=1.28   %Deklination
GOSUB dekl
h_x=18:m_x=36:s_x=56.34     %Position
GOSUB r_pos                 %Position Schütze
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Rigel %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Rigel"            %Name
pro_=t12                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj
d= 863                      %Lichtjahre 
dg_x=-8:dm_x=12:ds_x=5.9    %Deklination
GOSUB dekl
h_x=5:m_x=14:s_x=32.27      %Position
GOSUB r_pos                 %Position Stier
GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1
otype=-1:GOSUB objdarst:otype=0
! % Beteigeuze %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Beteigeuze"       %Name
pro_=t12                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj
d= 548                      %Lichtjahre 
dg_x=7:dm_x=24:ds_x=25.43   %Deklination
GOSUB dekl
h_x=5:m_x=55:s_x=10.3       %Position
GOSUB r_pos                 %Position Stier
GR.COLOR cc,cc,cc/2,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % Pollux %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Pollux"           %Name
pro_=t09                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj
d=33.8                      %Lichtjahre 
dg_x=28:dm_x=1:ds_x=34.32   %Deklination
GOSUB dekl
h_x=7:m_x=45:s_x=18.9       %Position
GOSUB r_pos                 
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Castor A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Castor"           %Name
pro_=t10                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj 
d= 50.88
dg_x=31:dm_x=53:ds_x=17.8   %Deklination
GOSUB dekl
h_x=7:m_x=34:s_x=35.9       %Position
GOSUB r_pos                 %Krebs - Zwilling
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Sirius %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Sirius"           %Name
pro_=t05                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj 
d= 8.611
dg_x=-16:dm_x=42:ds_x=58.02 %Deklination
GOSUB dekl
h_x=6:m_x=45:s_x=8.9        %Position
GOSUB r_pos                 %Position Zwilling
GR.COLOR cc-35,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Capella %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Capella"          %Name
pro_=t05                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj 
d= 42.92
dg_x=45:dm_x=59:ds_x=52.77  %Deklination
GOSUB dekl
h_x=5:m_x=16:s_x=41.36      %Position
GOSUB r_pos                 %Position Zwilling -Stier
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Algol %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Algol"            %Name
pro_=t14                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj 
d= 92.95
dg_x=40:dm_x=57:ds_x=20.33  %Deklination
GOSUB dekl
h_x=3:m_x=8:s_x=10.13       %Position
GOSUB r_pos
GR.COLOR cc-35,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Spica %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Spica"            %Name
pro_=t32                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj 
d= 271
dg_x=-11:dm_x=9:ds_x=40.75  %Deklination
GOSUB dekl
h_x=13:m_x=25:s_x=11.58     %Position
GOSUB r_pos
GR.COLOR cc-35,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Antares %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Antares"          %Name
pro_=t17                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj 
d= 554.5
dg_x=-26:dm_x=25:ds_x=55.21 %Deklination
GOSUB dekl
h_x=16:m_x=29:s_x=24.46     %Position
GOSUB r_pos
GR.COLOR cc,cc,cc/2,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % Altair %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Altair"           %Name
pro_=t08                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj 
d= 16.73
dg_x=8:dm_x=52:ds_x=5.9     %Deklination
GOSUB dekl
h_x=19:m_x=50:s_x=47        %Position
GOSUB r_pos
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Mira %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Mira"             %Name
pro_=t15                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj 
d= 424
dg_x=-2:dm_x=58:ds_x=39.5   %Deklination
GOSUB dekl
h_x=2:m_x=19:s_x=20.79      %Position
GOSUB r_pos                 %Fisch-Widder
GR.COLOR cc,cc,cc/2,cc/2,1
otype=-1:GOSUB objdarst:otype=0
!!
! % __ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="__"               %Name
pro_=t__                    %Projektionsvariable
rds=sx/400                  %Objektradius Lj 
d=__
dg_x=__:dm_x=__:ds_x=__     %Deklination
GOSUB dekl
h_x=__:m_x=__:s_x=__        %Position
GOSUB r_pos                 %
GR.COLOR cc-80,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
!!
RETURN
! % Sternhaufen und Nebel %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nebel:
! % Plejaden M45 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Plejaden"       %Name
pro_=t16                  %Projektionsvariable
rds= 17.5                 %Objektradius Lj
d= 444                    %Lichtjahre 
dg_x=24:dm_x=7:ds_x=0     %Deklination
GOSUB dekl
h_x=3:m_x=47:s_x=24       %Position
GOSUB r_pos               %Position Widder-Stier
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % Krebsnebel M1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Krebsnebel"     %Name
pro_=t21                  %Projektionsvariable
rds= 5.5                  %Objektradius Lj
d= 6500                   %Lichtjahre 
dg_x=22:dm_x=0:ds_x=52.2  %Deklination
GOSUB dekl
h_x=5:m_x=34:s_x=31.94    %Position
GOSUB r_pos
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
! % Stundenglasnebel MyCn 18 %%%%%%%%%%%%%%%%%%%%%%%
objname$="Stundenglasnebel" %Name
pro_=t23                    %Projektionsvariable
rds= 17.3                   %Objektradius Lj
d= 8154                     %Lichtjahre 
dg_x=-67:dm_x=22:ds_x=51.45 %Deklination
GOSUB dekl
h_x=13:m_x=39:s_x=35.116    %Position
GOSUB r_pos   
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
! % Monocerotis V838 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="V838"            %Name
pro_=t25                   %Projektionsvariable
rds=sx/400                 %Objektradius Lj
d= 19200                   %Lichtjahre 
dg_x=-3:dm_x=50:ds_x=50.53 %Deklination
GOSUB dekl
h_x=7:m_x=4:s_x=4.822      %Position
GOSUB r_pos   
GR.COLOR cc/2,cc,40,40,1   %Farbe leuchtkr. rote Nova
otype=-1:GOSUB objdarst:otype=0
! % Adlernebel M16 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Adlernebel"    %Name
pro_=t22                 %Projektionsvariable
rds=70                   %Objektradius Lj
d= 5700                  %Lichtjahre 
dg_x=-13:dm_x=49:ds_x=0  %Deklination
GOSUB dekl
h_x=18:m_x=18:s_x=48     %Position
GOSUB r_pos              %Schütze-Skorpion
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
! % Kugelsternhaufen im Herkules M13 %%%%%%%%%%%%%%%
objname$="M13"              %Name
pro_=t26                    %Projektionsvariable
rds=84                      %Objektradius Lj
d= 22180                    %Lichtjahre 
dg_x=36:dm_x=27:ds_x=35.5   %Deklination
GOSUB dekl
h_x=16:m_x=41:s_x=41.24     %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen im Omega Centauri %%%%%%%%%%%%%
objname$=CHR$(969)+" Haufen"  %Name
pro_=t24                      %Projektionsvariable
rds=86                        %Objektradius Lj
d= 15790                      %Lichtjahre 
dg_x=-47:dm_x=28:ds_x=46.1    %Deklination
GOSUB dekl
h_x=13:m_x=26:s_x=47.28       %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Orionnebel M42 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Orionnebel"   %Name
pro_=t48                %Projektionsvariable
rds=12                  %Objektradius Lj
d= 1344                 %Lichtjahre 
dg_x=-5:dm_x=23:ds_x=28 %Deklination
GOSUB dekl
h_x=5:m_x=35:s_x=17.3   %Position
GOSUB r_pos
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
! % De Mairan's Nebel M43 %%%%%%%%%%%%%%%%%%%%%%%%%%
objname$=""             %Name
pro_=t48                %Projektionsvariable
rds=2                   %Objektradius Lj
d= 1600                 %Lichtjahre 
dg_x=-5:dm_x=35:ds_x=31.4 %Deklination
GOSUB dekl
h_x=-5:m_x=16:s_x=3   %Position
GOSUB r_pos
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
! % M39 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M39"         %Name
pro_=t40               %Projektionsvariable
rds=4                  %Objektradius Lj
d= 824 %Lichtjahre 
dg_x=48:dm_x=26:ds_x=0 %Deklination
GOSUB dekl
h_x=21:m_x=31.8:s_x=0  %Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % Praesepe M44 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Praesepe"    %Name
pro_=t41               %Projektionsvariable
rds=10                 %Objektradius Lj
d= 577                 %Lichtjahre 
dg_x=19:dm_x=59:ds_x=0 %Deklination
GOSUB dekl
h_x=8:m_x=40.4:s_x=0   %Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % M34 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M34"         %Name
pro_=t42               %Projektionsvariable
rds=7                  %Objektradius Lj
d= 1500                %Lichtjahre Entfernung
dg_x=42:dm_x=46:ds_x=0 %Deklination
GOSUB dekl
h_x=2:m_x=42:s_x=7.4   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % Schmetterlingshaufen M6 %%%%%%%%%%%%%%%%%%%%%%%%
objname$="M6"          %Name
pro_=t43               %Projektionsvariable
rds=6                  %Objektradius Lj
d= 1590                %Lichtjahre Entfernung
dg_x=32:dm_x=13:ds_x=0 %Deklination
GOSUB dekl
h_x=17:m_x=40:s_x=18   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % M48 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M48"          %Name
pro_=t44                %Projektionsvariable
rds=63                  %Objektradius Lj
d= 2500                 %Lichtjahre Entfernung
dg_x=5:dm_x=45:ds_x=0   %Deklination
GOSUB dekl
h_x=8:m_x=13:s_x=43     %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % M67 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M67"          %Name
pro_=t45                %Projektionsvariable
rds=10                  %Objektradius Lj
d= 2700                 %Lichtjahre Entfernung
dg_x=11:dm_x=49:ds_x=0  %Deklination
GOSUB dekl
h_x=8:m_x=51:s_x=18     %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % M53 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M53"           %Name
pro_=t46                 %Projektionsvariable
rds=110                  %Objektradius Lj
d= 58000                 %Lichtjahre Entfernung
dg_x=18:dm_x=10:ds_x=5.4 %Deklination
GOSUB dekl
h_x=13:m_x=12:s_x=55.25  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % M4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M4"           %Name
pro_=t47                %Projektionsvariable
rds=36                  %Objektradius Lj
d= 7200                 %Lichtjahre Entfernung
dg_x=26:dm_x=31:ds_x=32 %Deklination
GOSUB dekl
h_x=16:m_x=23:s_x=35.4  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % Ptolemaeus M7 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Ptolemaeus"    %Name
pro_=t48                 %Projektionsvariable
rds=10                   %Objektradius Lj
d= 800                   %Lichtjahre Entfernung
dg_x=-34:dm_x=47:ds_x=34 %Deklination
GOSUB dekl
h_x=17:m_x=53:s_x=51.2   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  Große Wolke ESO 56-115 %%%%%%%%%%%%%%%%%%%%%%%%
objname$="Große Wolke"   %Name
pro_=t49                 %Projektionsvariable
rds=25100/2              %Objektradius Lj
d= 162980                %Lichtjahre Entfernung
dg_x=-69:dm_x=48:ds_x=0  %Deklination
GOSUB dekl
h_x=5:m_x=24:s_x=0       %Rekta Position
GOSUB r_pos
GR.COLOR cc/9,cc,cc,cc,1
GOSUB objdarst
! %  Kleine Wolke NGC 292 %%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Kleine Wolke"  %Name
pro_=t50                 %Projektionsvariable
rds=10100/2              %Objektradius Lj
d= 209000                %Lichtjahre Entfernung
dg_x=-73:dm_x=6:ds_x=0   %Deklination
GOSUB dekl
h_x=0:m_x=51:s_x=0       %Rekta Position
GOSUB r_pos
GR.COLOR cc/9,cc,cc,cc,1
GOSUB objdarst
! % M54 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M54"             %Name
pro_=t51                   %Projektionsvariable
rds=153                    %Objektradius Lj
d= 87400                   %Lichtjahre Entfernung
dg_x=-30:dm_x=28:ds_x=47.5 %Deklination
GOSUB dekl
h_x=18:m_x=55:s_x=3.33     %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % Sag DEG %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Sag DEG"         %Name
pro_=t52                   %Projektionsvariable
rds=5000                   %Objektradius Lj
d= 72000                   %Lichtjahre Entfernung
dg_x=-30:dm_x=32:ds_x=43   %Deklination
GOSUB dekl
h_x=18:m_x=55:s_x=19.5     %Rekta Position
GOSUB r_pos
GR.COLOR cc/12,cc,cc,cc,1
GOSUB objdarst
! % M79 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M79"           %Name
pro_=t53                 %Projektionsvariable
rds=150                  %Objektradius Lj
d= 41000                 %Lichtjahre Entfernung
dg_x=-24:dm_x=31:ds_x=26 %Deklination
GOSUB dekl
h_x=5:m_x=24:s_x=10.6    %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % M90 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M90"          %Name
pro_=t54                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 58700000             %Lichtjahre Entfernung
dg_x=13:dm_x=9:ds_x=46  %Deklination
GOSUB dekl
h_x=12:m_x=36:s_x=49.8  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Triangulum M33 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Triangulum"     %Name
pro_=t55                  %Projektionsvariable
rds=55000/2               %Objektradius Lj
d= 3200000                %Lichtjahre Entfernung
dg_x=13:dm_x=9:ds_x=50.02 %Deklination
GOSUB dekl
h_x=30:m_x=39:s_x=36.7    %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M49 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M49"          %Name
pro_=t56                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 56000000             %Lichtjahre Entfernung
dg_x=8:dm_x=0:ds_x=2    %Deklination
GOSUB dekl
h_x=12:m_x=39:s_x=46.7  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M58 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M58"          %Name
pro_=t57                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 68000000             %Lichtjahre Entfernung
dg_x=11:dm_x=49:ds_x=5  %Deklination
GOSUB dekl
h_x=12:m_x=37:s_x=43.5  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M91 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M91"          %Name
pro_=t58                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 63000000             %Lichtjahre Entfernung
dg_x=14:dm_x=29:ds_x=47 %Deklination
GOSUB dekl
h_x=12:m_x=35:s_x=26.4  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M74 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M74"          %Name
pro_=t59                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 34000000             %Lichtjahre Entfernung
dg_x=15:dm_x=47:ds_x=01 %Deklination
GOSUB dekl
h_x=1:m_x=36:s_x=41.7   %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M77 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M77"          %Name
pro_=t61                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 47000000             %Lichtjahre Entfernung
dg_x=0:dm_x=0:ds_x=48   %Deklination
GOSUB dekl
h_x=2:m_x=41:s_x=40.7   %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M81 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M81"          %Name
pro_=t62                %Projektionsvariable
rds=89000/2             %Objektradius Lj
d= 11700000             %Lichtjahre Entfernung
dg_x=69:dm_x=3:ds_x=55  %Deklination
GOSUB dekl
h_x=9:m_x=55:s_x=33.2   %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M82 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M82"          %Name
pro_=t63                %Projektionsvariable
rds=20000               %Objektradius Lj
d= 14000000             %Lichtjahre Entfernung
dg_x=69:dm_x=40:ds_x=46 %Deklination
GOSUB dekl
h_x=9:m_x=55:s_x=52.7   %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M83 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M83"           %Name
pro_=t64                 %Projektionsvariable
rds=sx/400               %Objektradius Lj
d= 17000000              %Lichtjahre Entfernung
dg_x=-29:dm_x=51:ds_x=56 %Deklination
GOSUB dekl
h_x=13:m_x=37:s_x=0.9    %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M84 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M84"          %Name
pro_=t65                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 43000000             %Lichtjahre Entfernung
dg_x=12:dm_x=53:ds_x=13 %Deklination
GOSUB dekl
h_x=12:m_x=25:s_x=3.7   %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M85 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M85"          %Name
pro_=t66                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 50000000             %Lichtjahre Entfernung
dg_x=18:dm_x=11:ds_x=29 %Deklination
GOSUB dekl
h_x=12:m_x=25:s_x=24.1  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M86 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M86"          %Name
pro_=t67                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 61000000             %Lichtjahre Entfernung
dg_x=12:dm_x=56:ds_x=46 %Deklination
GOSUB dekl
h_x=12:m_x=26:s_x=11.7  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M87 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M87"          %Name
pro_=t68                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 55000000             %Lichtjahre Entfernung
dg_x=12:dm_x=23:ds_x=28 %Deklination
GOSUB dekl
h_x=12:m_x=30:s_x=49.4  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M88 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M88"          %Name
pro_=t69                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 80000000             %Lichtjahre Entfernung
dg_x=12:dm_x=25:ds_x=13 %Deklination
GOSUB dekl
h_x=12:m_x=31:s_x=59.1  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M89 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M89"          %Name
pro_=t70                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 54000000             %Lichtjahre Entfernung
dg_x=12:dm_x=33:ds_x=23 %Deklination
GOSUB dekl
h_x=12:m_x=35:s_x=39.8   %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M94 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M94"          %Name
pro_=t71                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 16000000             %Lichtjahre Entfernung
dg_x=41:dm_x=07:ds_x=14 %Deklination
GOSUB dekl
h_x=12:m_x=50:s_x=53    %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M95 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M95"          %Name
pro_=t72                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 30000000             %Lichtjahre Entfernung
dg_x=11:dm_x=42:ds_x=14 %Deklination
GOSUB dekl
h_x=10:m_x=43:s_x=57.7  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M96 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M96"          %Name
pro_=t73                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 35000000             %Lichtjahre Entfernung
dg_x=11:dm_x=49:ds_x=12 %Deklination
GOSUB dekl
h_x=10:m_x=46:s_x=45.7  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M98 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M98"          %Name
pro_=t74                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 46000000             %Lichtjahre Entfernung
dg_x=14:dm_x=54:ds_x=1  %Deklination
GOSUB dekl
h_x=12:m_x=13:s_x=48.3  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M99 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M99"          %Name
pro_=t75                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 105000000            %Lichtjahre Entfernung
dg_x=14:dm_x=24:ds_x=59 %Deklination
GOSUB dekl
h_x=12:m_x=18:s_x=49.6  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M100 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M100"         %Name
pro_=t75                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 68000000             %Lichtjahre Entfernung
dg_x=15:dm_x=49:ds_x=19 %Deklination
GOSUB dekl
h_x=12:m_x=22:s_x=54.8  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M102 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M102"         %Name
pro_=t76                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 50000000             %Lichtjahre Entfernung
dg_x=55:dm_x=45:ds_x=48 %Deklination
GOSUB dekl
h_x=15:m_x=6:s_x=29.5   %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M106 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M106"         %Name
pro_=t78                %Projektionsvariable
rds=sx/400              %Objektradius Lj
d= 23000000             %Lichtjahre Entfernung
dg_x=47:dm_x=18:ds_x=14 %Deklination
GOSUB dekl
h_x=15:m_x=18:s_x=57.5  %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M105 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M105"          %Name
pro_=t77                 %Projektionsvariable
rds=sx/400               %Objektradius Lj
d= 36000000              %Lichtjahre Entfernung
dg_x=12:dm_x=34:ds_x=54  %Deklination
GOSUB dekl
h_x=10:m_x=47:s_x=49.6   %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M108 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M108"          %Name
pro_=t79                 %Projektionsvariable
rds=sx/400               %Objektradius Lj
d= 34000000              %Lichtjahre Entfernung
dg_x=55:dm_x=40:ds_x=27  %Deklination
GOSUB dekl
h_x=11:m_x=11:s_x=31    %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M109 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M109"          %Name
pro_=t80                 %Projektionsvariable
rds=sx/400               %Objektradius Lj
d= 50000000              %Lichtjahre Entfernung
dg_x=53:dm_x=22:ds_x=28  %Deklination
GOSUB dekl
h_x=11:m_x=57:s_x=36     %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M110 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$=""             %Name
pro_=t81                %Projektionsvariable
rds=12000               %Objektradius Lj
d= 2650000              %Lichtjahre Entfernung
dg_x=41:dm_x=41:ds_x=7  %Deklination
GOSUB dekl
h_x=0:m_x=40:s_x=22.1   %Rekta Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst:otype=0
! % Andromeda M31 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Andromeda"          %Name
pro_=t82                %Projektionsvariable
rds=20000               %Objektradius Lj
d= 2500000              %Lichtjahre Entfernung
dg_x=41:dm_x=16:ds_x=9  %Deklination
GOSUB dekl
h_x=0:m_x=42:s_x=44.3   %Rekta Position
GOSUB r_pos
GR.COLOR cc/9,cc,cc,cc,1
GOSUB objdarst:otype=0
rds=100000              %Objektradius Lj
d= 2500000              %Lichtjahre Entfernung
dg_x=41:dm_x=16:ds_x=9  %Deklination
GOSUB dekl
h_x=0:m_x=42:s_x=44.3   %Rekta Position
GOSUB r_pos
GR.COLOR cc/13,cc,cc,cc,1
GOSUB objdarst:otype=0
!!
! % M_ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M_"           %Name
pro_=t__                %Projektionsvariable
rds=__                  %Objektradius Lj
d= ____                 %Lichtjahre Entfernung
dg_x=__:dm_x=__:ds_x=__ %Deklination
GOSUB dekl
h_x=__:m_x=__:s_x=__    %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
!!
RETURN
! % Galaxien, Galaxienhaufen weitere Objekte %%%%%%%%%%%%
galaxien:
! % M101 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d=20870000 %Lichtjahre
d=d*Lj %AE
GR.ROTATE.START 15,mx,my
GR.COLOR cc/6,cc,cc,cc,1
IF ae/Lj<4*10^8 %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,sx/400%ed*85000*Lj
ENDIF
IF t06=1 & ae/Lj<10^8 %Text
 GR.ROTATE.START -15,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,"M101"
 GR.ROTATE.END
ENDIF
IF t27=1 %Projektion
 erd=TORADIANS(-i-45-15)
 ex1= mx-(ed*c145)*SIN(-erd)
 ey1= my-(ed*c145)*COS(erd)
 GR.COLOR cc/7,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END
! % M51 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d=23269000 %Lichtjahre
d=d*Lj %AE
GR.ROTATE.START 22.5,mx,my
GR.COLOR cc/6,cc,cc,cc,1
IF ae/Lj<4*10^8 %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,sx/400%ed*30000*Lj
ENDIF
IF t06=1 & ae/Lj<10^8 %Text
 GR.ROTATE.START -22.5,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,"M51"
 GR.ROTATE.END
ENDIF
IF t28=1 %Projektion
 erd=TORADIANS(-i-45-22.5)
 ex1= mx-(ed*c145)*SIN(-erd)
 ey1= my-(ed*c145)*COS(erd)
 GR.COLOR cc/7,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END
! % M104 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d=29350000 %Lichtjahre
d=d*Lj %AE
GR.ROTATE.START 34.5,mx,my
GR.COLOR cc/6,cc,cc,cc,1
IF ae/Lj<4*10^8 %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,sx/400%ed*25000*Lj
ENDIF
IF t06=1 & ae/Lj<10^8 %Text
 GR.ROTATE.START -34.5,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,"M104"
 GR.ROTATE.END
ENDIF
IF t29=1 %Projektion
 erd=TORADIANS(-i-45-34.5)
 ex1= mx-(ed*c145)*SIN(-erd)
 ey1= my-(ed*c145)*COS(erd)
 GR.COLOR cc/7,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END
! % Virgo Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d=55000000 %Lichtjahre
d=d*Lj %AE
GR.ROTATE.START 38,mx,my
GR.COLOR cc/9,cc,cc,cc,0
IF ae/Lj<4*10^8 %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,ed*9500000*Lj
ENDIF
IF t06=1 & ae/Lj<10^8 %Text
 GR.ROTATE.START -38,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,"Virgo Haufen"
 GR.ROTATE.END
ENDIF
IF t30=1 %Projektion
 erd=TORADIANS(-i-45-38)
 ex1= mx-(ed*c145)*SIN(-erd)
 ey1= my-(ed*c145)*COS(erd)
 GR.COLOR cc/7,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END
! % Norma Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Norma"          %Name
pro_=t83                  %Projektionsvariable
rds=(2*10^6)*3.26         %Objektradius Lj 1.75°
d= 221*10^6               %Lichtjahre Entfernung
dg_x=-60:dm_x=54:ds_x=30  %Deklination
GOSUB dekl
h_x=16:m_x=15:s_x=32.8    %Rekta Position
GOSUB r_pos
GR.COLOR cc/7,cc,cc,cc,0
GOSUB objdarst:otype=0
! % Fornax Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Fornax"          %Name
pro_=t85                   %Projektionsvariable
rds=(5*10^6)               %Objektradius Lj 5°
d= 62*10^6                 %Lichtjahre Entfernung
dg_x=-35:dm_x=27:ds_x=0    %Deklination
GOSUB dekl
h_x=3:m_x=38:s_x=0         %Rekta Position
GOSUB r_pos
GR.COLOR cc/7,cc,cc,cc,0
GOSUB objdarst:otype=0
! % Eridianus (FornaxII) Haufen %%%%%%%%%%%%%%%%%%%%%%%
objname$="Eridianus"      %Name
pro_=t86                  %Projektionsvariable
rds=(20*10^6)             %Objektradius Lj 10°
d= 75*10^6                %Lichtjahre Entfernung
dg_x=-20:dm_x=44:ds_x=40  %Deklination
GOSUB dekl
h_x=3:m_x=28:s_x=13.8     %Rekta Position
GOSUB r_pos
GR.COLOR cc/7,cc,cc,cc,0
GOSUB objdarst:otype=0
! % Coma Haufen, Grosse Wand %%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Coma"          %Name
pro_=t87                 %Projektionsvariable
rds=(10*10^6)            %Objektradius Lj 5°
d= 336*10^6              %Lichtjahre Entfernung
dg_x=27:dm_x=58:ds_x=50  %Deklination
GOSUB dekl
h_x=12:m_x=59:s_x=48.7   %Rekta Position
GOSUB r_pos
GR.COLOR cc/7,cc,cc,cc,0
GOSUB objdarst:otype=0
! % Antila Haufen %%%%%%%%%%%%%%%%%%%%%%%
objname$="Antila"        %Name
pro_=t88                 %Projektionsvariable
rds=(1*10^6)             %Objektradius Lj 
d= 40.7*10^6             %Lichtjahre Entfernung
dg_x=-35:dm_x=19:ds_x=24 %Deklination
GOSUB dekl
h_x=10:m_x=30:s_x=3.5    %Rekta Position
GOSUB r_pos
GR.COLOR cc/7,cc,cc,cc,0
GOSUB objdarst:otype=0
! % Laniakea Super Haufen, Grosser Attraktor %%%%%%%%%%%%
objname$="Großer Attraktor" %Name
pro_=t89                    %Projektionsvariable
rds=(260*10^6)              %Objektradius Lj 
d= 250*10^6                 %Lichtjahre Entfernung
dg_x=-46:dm_x=0:ds_x=0      %Deklination
GOSUB dekl
h_x=10:m_x=32:s_x=0         %Rekta Position
GOSUB r_pos
GR.COLOR cc/11,cc,cc,cc,0
GOSUB objdarst:otype=0
! % Geschoss Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Geschoss"         %Name
pro_=t84                    %Projektionsvariable
rds=(3*10^6)*3.26           %Objektradius Lj
d= 3.4*10^9                 %Lichtjahre Entfernung
dg_x=-55:dm_x=57:ds_x=37.9  %Deklination
GOSUB dekl
h_x=6:m_x=58:s_x=37.9       %Rekta Position
GOSUB r_pos
GR.COLOR cc/7,cc,cc,cc,0
GOSUB objdarst:otype=0
!!
! % ___ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M_"             %Name
pro_=t__                  %Projektionsvariable
rds=__                    %Objektradius Lj
d= ____                   %Lichtjahre Entfernung
dg_x=__:dm_x=__:ds_x=__   %Deklination
GOSUB dekl
h_x=__:m_x=__:s_x=__      %Rekta Position
GOSUB r_pos
GR.COLOR cc/7,cc,cc,cc,0
GOSUB objdarst
!!
! % CL J1001+0220 Entferntester Cluster %%%%%%%%%%%%%%
GR.COLOR cc/9,cc,cc,cc,0
GR.CIRCLE cl,mx,my,ed*(11.1*1.45)*10^9*lj
! % Beobachtbares Universum r=14.25 Gpc %%%%%%%%%%%%%
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % Galaxie %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IF ae/Lj>=300
 d=200000                    % Lichtjahre
 d=d*Lj                      % AE
 GR.ROTATE.START -50,mx,my 
 IF ae/Lj>=300
  GR.COLOR 6,cc,cc,cc,1
 ENDIF
 IF ae/Lj>=1500
  GR.COLOR cc/22,cc,cc,cc,1
 ENDIF
 IF ae/Lj>=6000
  GR.COLOR cc/14,cc,cc,cc,1
 ENDIF
 IF ae/Lj>=10000
  GR.CIRCLE cl,mx-ed*d/11,my-ed*d/5,ed*d/19
  GR.CIRCLE cl,mx-ed*d/11,my-ed*d/5,ed*d/8
 ENDIF
 !                            % Darstellung 
 GR.OVAL ovl,mx-ed*d/1.85,my-ed*d/2.1,mx+ed*d/3.4,my+ed*d/4
 GR.ROTATE.END
 IF t06=1 & ae<200*d         % Text
  GR.COLOR cc/5,cc,cc,cc,1
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1          %11
  GR.TEXT.DRAW txt,(mx+mx/10)-(ed*d)/15,my-ed*(d+c10)/4,"Milchstrasse"
 ENDIF
ENDIF
RETURN
! % Objektdarstellung %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objdarst: 
GR.ROTATE.START pos,mx,my
IF ae<200*d                        %Darstellung
 IF otype=-1 
  GR.CIRCLE cl,mx-ed*d,my-ed*d,rds
 ELSE
  GR.CIRCLE cl,mx-ed*d,my-ed*d,ed*rds*Lj 
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
! % Dialog Parameter %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialogprm: 
s00=-1
s01=-1
s02=-1
s03=-1
s04=-1
s05=-1
s06=-1
s07=-1
s08=-1
s09=1
s10=1
s11=1
RETURN
! % Dialog %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dialog:
smb$=CHR$(9989)
smq$=CHR$(9654)
GOSUB menu
std:
ARRAY.LOAD sel$[],o00$,o01$,o02$,o03$,o08$,o04$,o05$,o06$,o10$,o09$,o07$,o11$,"Ok", "exit"
DIALOG.SELECT sel, sel$[],_name$+" SONNENSYSTEMROTATION "+_ver$+" - Ebenen:"
IF sel=1:s00=s00*-1:ENDIF
IF sel=2:s01=s01*-1:ENDIF
IF sel=3:s02=s02*-1:ENDIF
IF sel=4
 s03=s03*-1
 swu=-1:ur$=""
 IF s07=1 & s03=1
  GOSUB dialogu
 ENDIF
ENDIF
IF sel=6:s04=s04*-1:ENDIF
IF sel=7:GOSUB dialog1:ENDIF 
IF sel=8:GOSUB dialog2:ENDIF 
IF sel=11:GOSUB dialog3:ENDIF
IF sel=5:s08=s08*-1
 IF s08=1 THEN GOSUB dialogk
ENDIF
IF sel=10:s09=s09*-1:ENDIF
IF sel=09:s10=s10*-1:ENDIF
IF sel=12:s11=s11*-1:ENDIF
IF sel=13:RETURN:   ENDIF
IF sel=14:GOSUB fin: END:  ENDIF
GOSUB menu
GOTO std
RETURN

menu:
IF s00=1:o00$=smb$+"  Umlaufbahnen":ENDIF
IF s00=-1: o00$="     Umlaufbahnen":ENDIF
IF s01=1:o01$=smb$+"  Jahreszeiten":ENDIF
IF s01=-1: o01$="     Jahreszeiten":ENDIF
IF s02=1:o02$=smb$+"  Monate":ENDIF
IF s02=-1: o02$="     Monate":ENDIF
IF s03=1:o03$=smb$+"  Horizont "+ur$:ENDIF
IF s03=-1: o03$="     Horizont":ENDIF
IF s04=1:o04$=smb$+"  Erdprojektion":ENDIF
IF s04=-1: o04$="     Erdprojektion":ENDIF
IF s05=1:o05$=smb$+"  Planeten...":ENDIF
IF s05=-1:o05$="     Planeten...":ENDIF
IF s06=1:o06$=smb$+"  Sterne...":ENDIF
IF s06=-1:o06$="     Sterne...":ENDIF
IF s07=1:o07$=smq$+"  Echtzeit @ "+aed$:ENDIF
IF s07=-1:o07$= smq$+ "  Simulation @ "+aed$:ENDIF
IF s07=0:o07$=CHR$(8734)+"  Vollsimulation":ENDIF
IF s07=2:o07$=CHR$(8560)+"  Information":ENDIF
IF s08=1:o08$=smb$+"  Kompass "+kp$:ENDIF
IF s08=-1:o08$="     Kompass":ENDIF
IF s09=1:o09$=smb$+"  Text":ENDIF
IF s09=-1:o09$="     Text":ENDIF
IF s10=1:o10$=smb$+"  Skala":ENDIF
IF s10=-1:o10$="     Skala aus":ENDIF
IF s11=1:o11$=smb$+"  SCRS":ENDIF
IF s11=-1:o11$="     SCRS aus":ENDIF
RETURN

dialog1prm:
u01=-1
u02=-1
u03=-1
u04=-1
u05=-1
u06=-1
u07=-1
u08=-1
u09=-1
u10=-1
u11=-1
u13=-1
u14=-1
RETURN

dialog1:
GOSUB menu1
std1:
ARRAY.LOAD sel1$[],q01$,q02$,q03$,q04$,q05$,q06$,q07$,q08$,q09$,q13$,q14$,q10$,q11$,"Ok"
DIALOG.SELECT sel1, sel1$[],"Projektion/Darstellung:"
IF sel1=1:u01=u01*-1:ENDIF
IF sel1=2:u02=u02*-1:ENDIF
IF sel1=3:u03=u03*-1:ENDIF
IF sel1=4:u04=u04*-1:ENDIF
IF sel1=5:u05=u05*-1:ENDIF
IF sel1=6:u06=u06*-1:ENDIF
IF sel1=7:u07=u07*-1:ENDIF
IF sel1=8:u08=u08*-1:ENDIF
IF sel1=9:u09=u09*-1:ENDIF
IF sel1=10:u13=u13*-1:ENDIF
IF sel1=11:u14=u14*-1:ENDIF
IF sel1=12:u10=u10*-1:ENDIF
IF sel1=13:u11=u11*-1:ENDIF
IF sel1=14:RETURN:   ENDIF
GOSUB menu1
GOTO std1
RETURN

menu1:
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
IF u10=1:q10$=smb$+"  Oortsche Wolke [~0.8Lj]":ENDIF
IF u10=-1: q10$="     Oortsche Wolke [50000AE]":ENDIF
IF u11=1:q11$=smb$+"  Text":ENDIF
IF u11=-1: q11$="     Text":ENDIF
RETURN

dialog2prm:
t00=-1
t01=-1
t02=-1
t03=-1
t04=-1
t05=-1
t06=-1
t07=-1
t08=-1
t09=-1
t10=-1
t11=-1
t12=-1
t13=-1
t14=-1
t15=-1
t16=-1
t17=-1
t18=-1
t19=-1
t20=-1
t21=-1
t22=-1
t23=-1
t24=-1
t25=-1
t26=-1
t27=-1
t28=-1
t29=-1
t30=-1
t31=-1
t32=-1
t33=-1
t34=-1
t37=-1
t38=-1
t39=-1
t40=-1
t41=-1
t42=-1
t43=-1
t44=-1
t45=-1
t46=-1
t47=-1
t48=-1
t49=-1
t50=-1
t51=-1
t52=-1
t53=-1
t54=-1
t55=-1
t56=-1
t57=-1
t58=-1
t59=-1
t60=-1
t61=-1
t62=-1
t63=-1
t64=-1
t67=-1
t68=-1
t69=-1
t70=-1
t71=-1
t72=-1
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

RETURN

dialog2:
GOSUB menu2
std2:
ARRAY.LOAD sel2$[],p01$,p05$,p08$,p07$,p09$,p03$,p11$,p12$,p33$,p10$,p02$,p13$,p14$,p32$,p15$,p16$,p17$,p18$,p19$,p38$,p20$,p21$,p22$,p23$,p24$,p25$,p26$,p04$,p27$,p28$,p29$,p30$,p31$,p39$,p00$,p34$,p37$,p06$,"Ok"
DIALOG.SELECT sel2, sel2$[],"Projektion/Darstellung:"
IF sel2=1:t01=t01*-1:ENDIF
IF sel2=2:t05=t05*-1:ENDIF
IF sel2=3:t08=t08*-1:ENDIF
IF sel2=4:t07=t07*-1:ENDIF
IF sel2=5:t09=t09*-1:ENDIF
IF sel2=6:t03=t03*-1:ENDIF
IF sel2=7:t11=t11*-1:ENDIF
IF sel2=8:t12=t12*-1:ENDIF
IF sel2=9:t33=t33*-1:ENDIF
IF sel2=10:t10=t10*-1:ENDIF
IF sel2=11:t02=t02*-1:ENDIF
IF sel2=12:t13=t13*-1:ENDIF
IF sel2=13:t14=t14*-1:ENDIF
IF sel2=14:t32=t32*-1:ENDIF
IF sel2=15:t15=t15*-1:ENDIF
IF sel2=16:t16=t16*-1:ENDIF
IF sel2=17:t17=t17*-1:ENDIF
IF sel2=18:t18=t18*-1:ENDIF
IF sel2=19:t19=t19*-1:ENDIF
IF sel2=20:t38=t38*-1:ENDIF
IF sel2=21:t20=t20*-1:ENDIF
IF sel2=22:t21=t21*-1:ENDIF
IF sel2=23:t22=t22*-1:ENDIF
IF sel2=24:t23=t23*-1:ENDIF
IF sel2=25:t24=t24*-1:ENDIF
IF sel2=26:t25=t25*-1:ENDIF
IF sel2=27:t26=t26*-1:ENDIF
IF sel2=28:t04=t04*-1:ENDIF
IF sel2=29:t27=t27*-1:ENDIF
IF sel2=30:t28=t28*-1:ENDIF
IF sel2=31:t29=t29*-1:ENDIF
IF sel2=32:t30=t30*-1:ENDIF
IF sel2=33:t31=t31*-1
 IF t31=1
  INPUT"Stunde h=…",h_,0
  INPUT"Minute min=…",m_,0
  INPUT"Sekunde sec=…",s_,0
  rk$=" "+INT$(h_)+CHR$(688)
  rk$= rk$+INT$(m_)+"'"
  rk$= rk$+INT$(s_)+"''"
 ENDIF
 IF t31=-1 THEN t39=-1
ENDIF
IF sel2=34:t39=t39*-1
 IF t31=-1 THEN t39=-1
 IF t39=1
  INPUT"Grad °=…",dg_,0
  INPUT"Minute min=…",dm_,0
  INPUT"Sekunde sec=…",ds_,0
  dkl$=" "+INT$(dg_)+"°"
  dkl$= dkl$+INT$(dm_)+"'"
  dkl$= dkl$+INT$(ds_)+"''"
 ENDIF
ENDIF
IF sel2=35:t00=t00*-1:ENDIF
IF sel2=36:t34=t34*-1:ENDIF  
IF sel2=37
 t37=t37*-1
 IF t37=1 THEN GOSUB menuvgl
ENDIF
IF sel2=38:t06=t06*-1:ENDIF
IF sel2=39:RETURN:   ENDIF

GOSUB menu2
GOTO std2
RETURN

menu2:
IF t00=1:p00$=smb$+"  Tierkreis Sternbilder":ENDIF
IF t00=-1: p00$="     Tierkreis Sternbilder":ENDIF
IF t34=1:p34$=smb$+"  Himmelsgewölbe":ENDIF
IF t34=-1: p34$="     Himmelsgewölbe":ENDIF

IF t37=1:p37$=smb$+"  = "+vgl$[vglst]:ENDIF
IF t37=-1: p37$="     Vergleich":ENDIF

IF t31=1:p31$=smb$+"  Rektaszension"+rk$:ENDIF
IF t31=-1: p31$="     Rektaszension":ENDIF

IF t39=1:p39$=smb$+"  Deklination"+dkl$:ENDIF
IF t39=-1: p39$="     Deklination":ENDIF

IF t01=1:p01$=smb$+"  "+CHR$(945)+" Centauri [1.3pc]":ENDIF
IF t01=-1: p01$="     "+CHR$(945)+" Centauri [1.3pc]":  ENDIF
IF t02=1:p02$=smb$+"  Aldebaran [20.0pc]":ENDIF
IF t02=-1: p02$="     Aldebaran [20.0pc]":  ENDIF
IF t03=1:p03$=smb$+"  Arkturus [11.3pc]":ENDIF
IF t03=-1: p03$="     Arkturus [11.3pc]":  ENDIF
IF t04=1:p04$=smb$+"  Andromeda [0.8Mpc]":ENDIF
IF t04=-1: p04$="     Andromeda [777.8kpc]":  ENDIF
IF t05=1:p05$=smb$+"  Sirius [2.6pc]":ENDIF
IF t05=-1: p05$="     Sirius [2.6pc]":ENDIF
IF t07=1:p07$=smb$+"  Vega [7.7pc]":ENDIF
IF t07=-1: p07$="     Vega [7.7pc]":ENDIF
IF t08=1:p08$=smb$+"  Altair [5.1pc]":ENDIF
IF t08=-1: p08$="     Altair [5.1pc]":ENDIF
IF t09=1:p09$=smb$+"  Pollux [10.3pc]":ENDIF
IF t09=-1: p09$="     Pollux [10.3pc]":ENDIF
IF t10=1:p10$=smb$+"  Castor [15.6pc]":ENDIF
IF t10=-1: p10$="     Castor [15.6pc]":ENDIF
IF t11=1:p11$=smb$+"  Capella [13.2pc]":ENDIF
IF t11=-1: p11$="     Capella [13.2pc]":ENDIF
IF t12=1:p12$=smb$+"  Rasalhague [14.9pc]":ENDIF
IF t12=-1: p12$="     Rasalhague [14.9pc]":ENDIF
IF t13=1:p13$=smb$+"  Regulus [23.8pc]":ENDIF
IF t13=-1: p13$="     Regulus [23.8pc]":ENDIF
IF t14=1:p14$=smb$+"  Algol [28.5pc]":ENDIF
IF t14=-1: p14$="     Algol [28.5pc]":ENDIF
IF t15=1:p15$=smb$+"  Mira [130.0pc]":ENDIF
IF t15=-1: p15$="     Mira [130.0pc]":ENDIF
IF t16=1:p16$=smb$+"  Plejaden [136.2pc]":ENDIF
IF t16=-1: p16$="     Plejaden [136.2pc]":ENDIF
IF t17=1:p17$=smb$+"  Antares [170.0pc]":ENDIF
IF t17=-1: p17$="     Antares [170.0pc]":ENDIF
IF t18=1:p18$=smb$+"  Beteigeuze [197.0pc]":ENDIF
IF t18=-1: p18$="     Beteigeuze [197.0pc]":ENDIF
IF t19=1:p19$=smb$+"  Rigel [265.0pc]":ENDIF
IF t19=-1: p19$="     Rigel [265.0pc]":ENDIF
IF t20=1:p20$=smb$+"  Daneb [0.8kpc]":ENDIF
IF t20=-1: p20$="     Daneb [802.1pc]":ENDIF
IF t21=1:p21$=smb$+"  Krebsnebel [2.0kpc]":ENDIF
IF t21=-1: p21$="     Krebsnebel [2.0kpc]":ENDIF
IF t22=1:p22$=smb$+"  Adlernebel [2.1kpc]":ENDIF
IF t22=-1: p22$="     Adlernebel [2.1kpc]":ENDIF
IF t23=1:p23$=smb$+"  Stundenglasnebel [2.5kpc]":ENDIF
IF t23=-1: p23$="     Stundenglasnebel [2.5kpc]":ENDIF
IF t24=1:p24$=smb$+"  "+CHR$(969)+" Haufen [4.8kpc]":ENDIF
IF t24=-1: p24$="     "+CHR$(969)+" Haufen [4.8kpc]":ENDIF
IF t25=1:p25$=smb$+"  Monocerotis [6.1kpc]":ENDIF
IF t25=-1: p25$="     Monocerotis [6.1kpc]":ENDIF
IF t26=1:p26$=smb$+"  Herkuleshaufen [6.8kpc]":ENDIF
IF t26=-1: p26$="     Herkuleshaufen [6.8kpc]":ENDIF
IF t27=1:p27$=smb$+"  M101 [6.4Mpc]":ENDIF
IF t27=-1: p27$="     M101 [6.4Mpc]":ENDIF
IF t28=1:p28$=smb$+"  M51 [7.1Mpc]":ENDIF
IF t28=-1: p28$="     M51 [7.1Mpc]":ENDIF
IF t29=1:p29$=smb$+"  M104 [9.0Mpc]":ENDIF
IF t29=-1: p29$="     M104 [9.0Mpc]":ENDIF
IF t30=1:p30$=smb$+"  Virgo Haufen [20.0Mpc]":ENDIF
IF t30=-1: p30$="     Virgo Haufen [20.0Mpc]":ENDIF
IF t32=1:p32$=smb$+"  Spica [83.0pc]":ENDIF
IF t32=-1: p32$="     Spica [83.0pc]":ENDIF
IF t33=1:p33$=smb$+"  Alderamin [15.0pc]":ENDIF
IF t33=-1: p33$="     Alderamin [15.0pc]":ENDIF
IF t38=1:p38$=smb$+"  Orionnebel [412pc]":ENDIF
IF t38=-1: p38$="     Orionnebel [412pc]":ENDIF
IF t06=1:p06$=smb$+"  Text":ENDIF
IF t06=-1:p06$="     Text":ENDIF
RETURN

menuvgl:
vg01$="Beteigeuze [3.55AE]"
vg02$="Orionnebel [12Lj]"
vg03$="Aldebaran [0.2AE]"
vg04$= CHR$(945)+" Centauri A [0.006AE]"
vg05$= "Sirius [0.008AE]"
ARRAY.LOAD vgl$[],vg04$,vg05$,vg03$,vg01$,vg02$
DIALOG.SELECT vglst, vgl$[],"Größenvergleich:"
RETURN 

dialog3:
r01$="Vollsimulation"
r02$="Simulation"
r03$="Echtzeit"
r04$="Entfernung:"+aed$
r05$= CHR$(8560)+" Information"
ARRAY.LOAD sel3$[],r03$,r02$,r01$,r04$,r05$
DIALOG.SELECT sel3, sel3$[],"Modus:"
IF sel3=3
 INPUT"Zeitrafferfaktor vs=…",vsm,1.05
 s07=0
ENDIF
IF sel3=2:s07=-1:ENDIF
IF sel3=1:s07=1:ENDIF
IF sel3=4
 INPUT"Anfangsentfernung AEo=…                   [ 1Lj=63241.1AE | 1pc=206264.8AE ]",aed,1
 ed=(sx/2.9)/aed
 IF aed<Lj
  aed$=FORMAT$("#####.#",aed)+"AE"
 ENDIF
 IF aed>=Lj
  Ljd=aed/Lj
  IF Ljd<=3.261564
   aed$=FORMAT$("#.#",Ljd)+"Lj"
  ENDIF
  IF Ljd>3.261564
   IF Ljd < 3261.564
    aed$= FORMAT$("###.#",Ljd/3.261564)+"pc"
   ELSE
    IF Ljd< 3261564
     aed$= FORMAT$("###.#",Ljd/3261.564)+"kpc"
    ELSE
     aed$= FORMAT$("###.#",Ljd/3261564)+"Mpc"
    ENDIF
   ENDIF
  ENDIF
 ENDIF
ENDIF
IF sel3=5:s07=2:ENDIF
IF s07<>1 THEN ur$=""
RETURN

dialogu:
x01$="Ja"
x02$="Nein"
ARRAY.LOAD sel4$[],x01$,x02$
DIALOG.SELECT sel4, sel4$[],"Uhrzeit und Kalenderskala:"
IF sel4=1:swu=1:ur$=CHR$(8986):ENDIF
IF sel4=2:swu=-1:ur$="":ENDIF
RETURN

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
! % Einstellungen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fin:
TEXT.OPEN w, fsr, "ssr.ini"
TEXT.WRITELN fsr, s00
TEXT.WRITELN fsr, s01
TEXT.WRITELN fsr, s02
TEXT.WRITELN fsr, s03
TEXT.WRITELN fsr, s04
TEXT.WRITELN fsr, s05
TEXT.WRITELN fsr, s06
TEXT.WRITELN fsr, s07
TEXT.WRITELN fsr, s08
TEXT.WRITELN fsr, s09
TEXT.WRITELN fsr, s10
TEXT.WRITELN fsr, s11
TEXT.WRITELN fsr, t00
TEXT.WRITELN fsr, t01
TEXT.WRITELN fsr, t02
TEXT.WRITELN fsr, t03
TEXT.WRITELN fsr, t04
TEXT.WRITELN fsr, t05
TEXT.WRITELN fsr, t06
TEXT.WRITELN fsr, t07
TEXT.WRITELN fsr, t08
TEXT.WRITELN fsr, t09
TEXT.WRITELN fsr, t10
TEXT.WRITELN fsr, t11
TEXT.WRITELN fsr, t12
TEXT.WRITELN fsr, t13
TEXT.WRITELN fsr, t14
TEXT.WRITELN fsr, t15
TEXT.WRITELN fsr, t16
TEXT.WRITELN fsr, t17
TEXT.WRITELN fsr, t18
TEXT.WRITELN fsr, t19
TEXT.WRITELN fsr, t20
TEXT.WRITELN fsr, t21
TEXT.WRITELN fsr, t22
TEXT.WRITELN fsr, t23
TEXT.WRITELN fsr, t24
TEXT.WRITELN fsr, t25
TEXT.WRITELN fsr, t26
TEXT.WRITELN fsr, t27
TEXT.WRITELN fsr, t28
TEXT.WRITELN fsr, t29
TEXT.WRITELN fsr, t30
TEXT.WRITELN fsr, t31
TEXT.WRITELN fsr, t32
TEXT.WRITELN fsr, t33
TEXT.WRITELN fsr, t34
TEXT.WRITELN fsr, t37
TEXT.WRITELN fsr, t38
TEXT.WRITELN fsr, t39
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
PRINT"Copyright © 2020-23 by Dietmar Gerald SCHRAUSSER"
PRINT"https://github.com/Schrausser/SSR"
RETURN
! % ENDE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
