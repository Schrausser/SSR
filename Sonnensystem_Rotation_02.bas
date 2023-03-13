!!
      SSR SONNENSYSTEMROTATION v3.2
       © 2020 by Dietmar Schrausser
!!

! %Einstellungen
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
 TEXT.READLN fsr, ini$:aed=VAL(ini$)
 TEXT.READLN fsr, ini$:aed$=ini$
 TEXT.READLN fsr, ini$:ed=VAL(ini$)
 TEXT.READLN fsr, ini$:swu=VAL(ini$)
 TEXT.READLN fsr, ini$:swk=VAL(ini$)
 TEXT.READLN fsr, ini$:inf=VAL(ini$)
 TEXT.READLN fsr, ini$:vsm=VAL(ini$)
 TEXT.READLN fsr, ini$:ae1=VAL(ini$)
 TEXT.READLN fsr, ini$:v=VAL(ini$)
 TEXT.READLN fsr, ini$:sw=VAL(ini$)
 TEXT.READLN fsr, ini$:sec1=VAL(ini$)
 TEXT.READLN fsr, ini$:h_=VAL(ini$)
 TEXT.READLN fsr, ini$:m_=VAL(ini$)
 TEXT.READLN fsr, ini$:s_=VAL(ini$)
 TEXT.READLN fsr, ini$:rk$=ini$
 TEXT.READLN fsr, ini$:ur$=ini$
 TEXT.READLN fsr, ini$:kp$=ini$
 TEXT.CLOSE fsr
ELSE
 GOSUB dialogprm
 GOSUB dialog1prm
 GOSUB dialog2prm
 aed=1 %Entfernung
 aed$=" 1.0AE"
 ed=110 %Vergrösserungsfaktor
 inf=1 %Startinfofensterschalter
 swu=-1 %Uhrzeit- und Kalenderskala
 ur$=""
 swk=0 %Kompassoption
 kp$=""
 vsm=1.05
 v=0.1  %Umlaufgeschwindigkeit bei Simulation
 sw=1   %Vollsimulation Schalter
 sec1=-1%
ENDIF

GOSUB mnt

SENSORS.OPEN 3
SENSORS.OPEN 8
scr=0
GR.OPEN scr,scr,scr,scr,0,1
GR.SCREEN sx,sy

clz1=sx/28 %8
clz2=sx/52 %4
clz3=sx/47 %5
clz4=sx/41 %6
clz5=sx/100 %1
clz6=sx/80 %2

txz1=sx/50 %12
txz2=sx/60 %10

! GR.BITMAP.CREATE scrs, sx,sy
pat$="../../EIGENEDATEIEN/SSR/scrs/"
mx=sx/2:my=sy/2
cc=255

!!
ed=ed/aed       %Anfangsentfernung
!!
c_= 1079252849  %km/h Lichtgeschwindigkeit
au_=1.4959787*10^11 %AE in m
Lj=63241.07 %1Lj in AE
!! 
IF inf=1 & s07<>2 %Startinfo
 DIALOG.MESSAGE ,"SSR SONNENSYSTEMROTATION v3.0         Copyright © 2020 by                   Dietmar G. SCHRAUSSER                       + Semper ubique sum +",m
ENDIF
!! 
GOSUB dialog

st0:

GOSUB zeit %Aktuelle Zeit

! %Schaltjahr
sj=0
IF Yr/4=INT(Yr/4) THEN sj=1
sj=1
GOSUB tagnr

! %Sommerzeit
sz$="":sz=0
IF nt>=mz+29 & nt<or+24
 sz$="MSZ":sz=1
ENDIF

tg=nt+1 %Tagnummer
tg=tg+10
i=((tg/366)*360)-135 %Tagposition
j=0 %Tagzaehler
jx=yr %Jahr

st:

IF s07=2
 GOSUB fin
 RUN "../../rfo-basic/source/zeit_real2.bas","r"
ENDIF

mnc=min/60 %Minutentakt
AE=1/(ed/110) %Astronomische Einheit

IF s07=1 THEN v=0 %bei Echtzeit
i=i+v %Tagposition
nt=nt+v %Tagnummer

GR.CLS

GR.TEXT.SETFONT "courier","",1

IF s01=1 %Jahreszeiten
 GR.COLOR 35,cc,cc,0,1
 GR.LINE ln,0,my,sx,my
 GR.LINE ln,mx,0,mx,sy
 ! %Namen
 stl=431
 ac=360/24
 lt=132
 GR.TEXT.ALIGN 2
 ! GR.TEXT.BOLD 1
 GR.TEXT.SIZE txz1 %12
 GR.COLOR 40,cc,cc,0,1
 GR.ROTATE.START stl+ac,mx,my
 GR.TEXT.DRAW tx,mx+2,my-lt,"W"
 GR.ROTATE.END
 GR.ROTATE.START stl+7*ac,mx,my
 GR.TEXT.DRAW tx,mx+2,my-lt,"H"
 GR.ROTATE.END
 GR.ROTATE.START stl+13*ac,mx,my
 GR.TEXT.DRAW tx,mx+2,my-lt,"S"
 GR.ROTATE.END
 GR.ROTATE.START stl+19*ac,mx,my
 GR.TEXT.DRAW tx,mx+2,my-lt,"F"
 GR.ROTATE.END
ENDIF

IF t34=1 %Himmelsgewölbe
 GR.COLOR 40,cc/2,cc/2,cc/2,0
 GR.CIRCLE cl,mx,my,mx
 FOR hg=1 TO 90 STEP 6
  GR.CIRCLE cl,mx,my,mx*SIN(TORADIANS(hg))
 NEXT
 FOR w=1 TO 24
  GR.ROTATE.START w/24*360,mx,my
  GR.LINE ln, 0,my,mx-10,my
  GR.ROTATE.END
 NEXT
ENDIF

IF t31=1 %Rektaszension
 ! GR.TEXT.BOLD 1
 GR.TEXT.SIZE txz1 %9
 GR.COLOR 80, cc,cc,0, 0
 IF s08=1:cor=0:ELSE:cor=1.1:ENDIF
 FOR hr=0 TO 24
  GR.ROTATE.START ((hr/24)*360)-cor,mx,my
  IF hr>0
   GR.TEXT.DRAW tx,mx,sx*1.24,INT$(24-hr)
  ENDIF
  GR.ROTATE.END
 NEXT
 ! %Positionszeiger
 m_1=m_/60
 s_2=s_/6000
 pos=h_+m_1+s_1
 pos1=-(pos/24)*360
 GR.ROTATE.START pos1,mx,my
 GR.LINE ln, mx,my,mx,sy-93
 GR.CIRCLE cl,mx,sy-87,7
 GR.ROTATE.END
 GR.TEXT.SIZE txz1 %12
 GR.TEXT.ALIGN 2
 rk1$=INT$(h_)+CHR$(688)
 rk1$=rk1$+INT$(m_)+"'"
 rk1$=rk1$+INT$(s_)+"''"
 GR.TEXT.DRAW tx,mx,12,rk1$
ENDIF

IF s02=1 %Monate
 FOR s=1 TO 12
  GR.ROTATE.START 180-((s/12)*360)-((10/366)*360),mx,my
  GR.COLOR 8, cc, cc,cc, 1
  GR.LINE ln,-sx,my,sx*2,my
  GR.ROTATE.END
 NEXT
 ! %Monatsnummern
 stl=410
 ac=360/24
 lt=117
 GR.TEXT.ALIGN 2
 ! GR.TEXT.BOLD 0
 GR.TEXT.SIZE txz1 %11
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

! %Sternbilder/Tierkreis
IF t00=1 
 GR.COLOR 10, cc,cc,0, 0
 IF ae/Lj<=2200
  FOR s=1 TO 12
   GR.ROTATE.START 180-((s/12)*360),mx,my
   GR.LINE ln,-sx,my,sx*2,my
   GR.ROTATE.END
  NEXT
  %Tierkreissymbole
  GR.COLOR 35,cc,cc,0,1
  GR.TEXT.ALIGN 2
  ! GR.TEXT.BOLD 1
  GR.TEXT.SIZE txz1*2 %15
  GR.ROTATE.START 16,mx,my
  GR.TEXT.DRAW tx,mx,my-134,CHR$(9804)
  GR.ROTATE.END
  GR.ROTATE.START 46,mx,my
  GR.TEXT.DRAW tx,mx,my-134,CHR$(9803)
  GR.ROTATE.END
  GR.ROTATE.START 75,mx,my
  GR.TEXT.DRAW tx,mx,my-134,CHR$(9802)
  GR.ROTATE.END
  GR.ROTATE.START 105,mx,my
  GR.TEXT.DRAW tx,mx,my-134,CHR$(9801)
  GR.ROTATE.END
  GR.ROTATE.START 135,mx,my
  GR.TEXT.DRAW tx,mx,my-134,CHR$(9800)
  GR.ROTATE.END
  GR.ROTATE.START 165,mx,my
  GR.TEXT.DRAW tx,mx,my-134,CHR$(9811)
  GR.ROTATE.END
  GR.ROTATE.START 196,mx,my
  GR.TEXT.DRAW tx,mx,my-134,CHR$(9810)
  GR.ROTATE.END
  GR.ROTATE.START 226,mx,my
  GR.TEXT.DRAW tx,mx,my-134,CHR$(9809)
  GR.ROTATE.END
  GR.ROTATE.START 256,mx,my
  GR.TEXT.DRAW tx,mx,my-134,CHR$(9808)
  GR.ROTATE.END
  GR.ROTATE.START 286,mx,my
  GR.TEXT.DRAW tx,mx,my-134,CHR$(9807)
  GR.ROTATE.END
  GR.ROTATE.START 316,mx,my
  GR.TEXT.DRAW tx,mx,my-134,CHR$(9806)
  GR.ROTATE.END
  GR.ROTATE.START 345,mx,my
  GR.TEXT.DRAW tx,mx,my-134,CHR$(9805)
  GR.ROTATE.END
 ENDIF
 IF ae/Lj>=2300 & ae/Lj<=32000
  GR.COLOR 30, cc,cc,0, 0
  GR.CIRCLE cl,mx,my,ed*(3000*Lj)
 ENDIF
ENDIF

! %Sonne
IF ae/Lj>=200000
 GR.COLOR cc/9,cc,cc,cc,1
ENDIF
IF ae/Lj<200000
 GR.COLOR cc,cc,cc,0, 1
 IF ae>1000
  GR.COLOR cc,cc,cc,cc,1
 ENDIF
ENDIF
gr=(ed*0.005)*1.45
!!
GR.COLOR cc-55,cc,0,0,1 %Beteigeuze Vergleich
gr=(ed*4.11)*1.45
!!
IF gr<1 THEN gr=1
GR.CIRCLE sn,mx,my,gr
IF t06=1 & ae/Lj<=5 %Text
 GR.COLOR cc,cc,cc,cc,1
 IF ae<=60:GR.COLOR cc,cc,cc,0,1:ENDIF
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 % %11
 IF t00=1
  GR.TEXT.DRAW txt,mx,my-10,CHR$(8857)
 ELSE
  GR.TEXT.DRAW txt,mx,my-10,"Sonne"
 ENDIF
ENDIF

! %Merkur
pos=20 %Position
d=0.39
uf=0.24
mkrd=TORADIANS(((pos-i/uf)-45))
mkx=mx-ed*(d*1.45)*SIN(-mkrd) %Merkurkoordinaten
mky=my-ed*(d*1.45)*COS(mkrd) %
IF s00=1 & AE<10000 %Umlaufbahn
 GR.COLOR 100,100,100,100,0
 GR.CIRCLE sn,mx,my,ed*d*1.45
ENDIF
IF u01=3%1 %Projektion
 GR.ROTATE.START (pos-i/uf)+45,mx,my,cl
 GR.COLOR 30,100,cc,0
 GR.LINE ln, -2*sx,my,mx,my
 GR.ROTATE.END
ENDIF
IF AE<2000 %Darstellung
 GR.COLOR 150,100,255,0,1
 GR.ROTATE.START pos-i/uf,mx,my
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
 IF u11=1 & ae<=2.5 %Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,mx-ed*d,my-ed*d
  ! GR.TEXT.BOLD 0
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1 %11
  IF t00=1
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"¥"
  ELSE
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Merkur"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END
ENDIF
! %%%%%%%%%%%% Projektion
IF u01=1
 GR.COLOR 30,100,cc,0
 GR.LINE ln, mkx,mky,ex,ey
ENDIF
! %%%%%%%%%%%%%

! %Venus
pos=65 %Position
d=0.72
uf=0.62
vrd=TORADIANS(((pos-i/uf)-45))
vx=mx-ed*(d*1.45)*SIN(-vrd) %Venuskoordinaten
vy=my-ed*(d*1.45)*COS(vrd) %
IF s00=1 & AE<10000 %Umlaufbahn
 GR.COLOR 100,100,100,100,0
 GR.CIRCLE sn,mx,my,ed*d*1.45
ENDIF
IF u02=3%1 %Projektion
 GR.ROTATE.START ((pos-i/uf)+45),mx,my
 GR.COLOR 25,cc,cc,cc
 GR.LINE ln, -sx,my,mx,my
 GR.ROTATE.END
ENDIF
IF AE<2000 %Darstellung
 GR.COLOR 250,255,255,255,1
 GR.ROTATE.START pos-i/uf,mx,my
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
 IF u11=1 & ae<=2.5 %Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,mx-ed*d,my-ed*d
  ! GR.TEXT.BOLD 0
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1 %%11
  IF t00=1
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,CHR$(9792)
  ELSE
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Venus"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END 
ENDIF
! %%%%%%%%%%%%% Projektion
IF u02=1
 GR.COLOR 25,cc,cc,cc
 GR.LINE ln, vx,vy,ex,ey
ENDIF
! %%%%%%%%%%%%%

! %Erde
erd=TORADIANS(-i-45)
ex=mx-(ed*1.45)*SIN(-erd) %Erdkoordinaten
ey=my-(ed*1.45)*COS(erd) %
IF s00=1 & AE<10000 %Umlaufbahn
 GR.COLOR 100,100,100,100,0
 GR.CIRCLE sn,mx,my, ed*1.45
ENDIF
IF s04=1 %Erdprojektion
 GR.ROTATE.START -i+45,mx,my
 GR.COLOR 65,200,200,255,1
 GR.LINE ln,-4,my,mx,my
 IF s03=1 THEN GR.CIRCLE cl, 5,my,3
 GR.ROTATE.END
ENDIF
GR.ROTATE.START -i,mx,my
IF AE<2000 %Darstellung
 GR.COLOR 255,100,100,255
 GR.CIRCLE cl,mx-ed,my-ed,1
 IF u11=1 & ae<=2.5 %Text
  pot= 0
  ! GR.TEXT.BOLD 0
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1 %11
  IF t00=1
   GR.ROTATE.START 180-pot+i,mx-ed,my-ed
   GR.TEXT.DRAW txt,mx-ed,my-ed+20,CHR$(9792)
  ELSE
   GR.ROTATE.START -pot+i,mx-ed,my-ed
   GR.TEXT.DRAW txt,mx-ed,my-ed-10,"Erde"
  ENDIF
  GR.ROTATE.END
 ENDIF
ENDIF
IF s08=1 %Blickrichtung
 IF swk=-1|swk=0
  SENSORS.READ 3,cp,dmy,dmy
  GR.COLOR cc-65,cc,0,0,0
  GR.ROTATE.START 180-cp+i,mx-ed,my-ed
  GR.LINE ln,mx-ed,my-ed,mx-ed,my-15-ed
  GR.CIRCLE cl,mx-ed,my-ed-18,3
  GR.CIRCLE cl,mx-ed,my-ed-23,1
  GR.CIRCLE cl,mx-ed,my-ed+5,2
  ! GR.TEXT.BOLD 1
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1 %9
  GR.TEXT.DRAW tx, mx-ed,my-ed-28,"S"
  GR.ROTATE.END
 ENDIF
ENDIF
IF s03=1 %Erdzeitskala
 IF s07=1 & swu=1 %Uhrzeit und Kalenderskala
  GR.COLOR 80,cc,cc,cc,1
  FOR j1=1 TO 24
   GR.ROTATE.START (j1/24)*360,mx-ed,my-ed
   GR.LINE ln, mx-ed,my-30-ed,mx-ed,my-25-ed
   GR.ROTATE.END
  NEXT
 ENDIF
 GR.COLOR 60,200,100,100,1
 cr=((1/24)*360)-3 %Korrekturfaktor
 IF s07=1 %bei Echtzeit
  GR.ROTATE.START ((12/24)-(((st-sz)+mnc)/24))*360-cr,mx-ed,my-ed
  GR.LINE ln, mx-ed,my-ed,2*sx-ed,2*sy-ed
  GR.CIRCLE cl, mx-ed+10,my-ed+15,3
  GR.ROTATE.END
  GR.ROTATE.START (((12/24)-(((st-sz)+mnc)/24))*360)-90-cr,mx-ed,my-ed
  GR.LINE ln, 0-ed,0-ed,2*sx-ed,2*sy-ed

  GR.COLOR 20,0,0,cc,1
  GR.ARC arc,mx-ed-150,my-ed-150,mx-ed+150,my-ed+150,56,180,1

  GR.ROTATE.END
 ENDIF
 IF s07=-1 %bei Simulation
  FOR j1=1 TO 24
   GR.ROTATE.START (j1/24)*360-41,mx-ed,my-ed
   GR.LINE ln, mx-ed,my-ed,2*sx-ed,2*sy-ed
   GR.ROTATE.END
  NEXT
 ENDIF
ENDIF
GR.ROTATE.END
IF s07=1 & swu=1 %Uhrzeit und Kalenderskala
 GR.COLOR 80,cc,cc,cc,1
 FOR j1=1 TO 52 %Wochen
  GR.ROTATE.START (j1/52)*360,mx,my
  GR.LINE ln, mx,80,mx,82
  GR.ROTATE.END
 NEXT
ENDIF

! %Mars
pos=74 %Position
d=1.52
uf=1.88
mrd=TORADIANS(((pos-i/uf)-45))
msx=mx-ed*(d*1.45)*SIN(-mrd) %Marskoordinaten
msy=my-ed*(d*1.45)*COS(mrd) %
IF s00=1 & AE<10000 %Umlaufbahn
 GR.COLOR 100,100,100,100,0
 GR.CIRCLE sn,mx,my,ed*d*1.43
ENDIF
IF u03=3%1 %Projektion
 GR.ROTATE.START (pos-i/uf)+45,mx,my
 GR.COLOR 35,255,100,100
 GR.LINE ln, -2*sx,my,mx,my
 GR.ROTATE.END
ENDIF
IF AE<2000 %Darstellung
 GR.COLOR 255,255,100,100,1
 GR.ROTATE.START pos-i/uf,mx,my
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
 IF u11=1 & ae<=2.5 %Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,mx-ed*d,my-ed*d
  ! GR.TEXT.BOLD 0
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1 %11
  IF t00=1
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,CHR$(9794)
  ELSE
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Mars"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END
ENDIF
! %%%%%%%%%%%%% Projektion
IF u03=1
 GR.COLOR 35,cc,100,100
 GR.LINE ln, msx,msy,ex,ey
ENDIF
! %%%%%%%%%%%%%

! %Asteroidengürtel
d=3
IF u04=1 & ed<45 & AE<10000 %
 GR.COLOR 50,100,100,60,0
 GR.CIRCLE sn,mx,my,ed*d*1.43
 GR.CIRCLE sn,mx,my,ed*d*1.8
ENDIF

! %Jupiter
pos=210 %Position
d=5.2 %AE Entfernung
uf=11.9 %J Umlauf
jrd=TORADIANS(((pos-i/uf)-45))
jsx=mx-ed*(d*1.45)*SIN(-jrd) %Jupiterkoordinaten
jsy=my-ed*(d*1.45)*COS(jrd) %
IF s00=1 & ed<30 & AE<10000 %Umlaufbahn
 GR.COLOR 60,100,100,100,0
 GR.CIRCLE sn,mx,my,ed*d*1.43
ENDIF
IF u05=3%1 %Projektion
 GR.ROTATE.START (pos-i/uf)+45,mx,my
 GR.COLOR 30,255,255,100
 GR.LINE ln, -2*sx,my,mx,my
 GR.ROTATE.END
ENDIF
IF AE<2000 %Darstellung
 GR.COLOR 150,255,255,100,1
 GR.ROTATE.START pos-i/uf,mx,my
 GR.CIRCLE cl,mx-ed*d,my-ed*d,2
 IF u11=1 & ae<20 %Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,mx-ed*d,my-ed*d
  ! GR.TEXT.BOLD 0
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1 %11
  GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Jupiter"
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END
ENDIF
! %%%%%%%%%%%%% Projektion
IF u05=1
 GR.COLOR 30,cc,cc,100
 GR.LINE ln, jsx,jsy,ex,ey
ENDIF
! %%%%%%%%%%%%%

! %Saturn
pos=240 %Position
d=9.55
uf=26.46
srd=TORADIANS(((pos-i/uf)-45))
ssx=mx-ed*(d*1.45)*SIN(-srd) %Saturnkoordinaten
ssy=my-ed*(d*1.45)*COS(srd) %
IF s00=1 & ed<20 & AE<3000 %Umlaufbahn
 GR.COLOR 60,100,100,100,0
 GR.CIRCLE sn,mx,my,ed*d*1.43
ENDIF
IF u06=3%1 %Projektion
 GR.ROTATE.START (pos-i/uf)+45,mx,my
 GR.COLOR 30,255,255,255
 GR.LINE ln, -2*sx,my,mx,my
 GR.ROTATE.END
ENDIF
IF AE<1000 %Darstellung
 GR.COLOR 150,255,255,255,1
 GR.ROTATE.START pos-i/uf,mx,my
 GR.CIRCLE cl,mx-ed*d,my-ed*d,2
 GR.LINE ln,mx-ed*d-5,my-ed*d, mx-ed*d+5, my-ed*d
 IF u11=1 & ae<=20 %Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,mx-ed*d,my-ed*d
  ! GR.TEXT.BOLD 0
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1 %%11
  GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Saturn"
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END 
ENDIF
! %%%%%%%%%%%%% Projektion
IF u06=1
 GR.COLOR 30,cc,cc,cc
 GR.LINE ln, ssx,ssy,ex,ey
ENDIF
! %%%%%%%%%%%%%

! %Uranus
pos=188 % Position
d=19.22
uf=84
urd=TORADIANS(((pos-i/uf)-45))
usx=mx-ed*(d*1.45)*SIN(-urd) %Uranuskoordinaten
usy=my-ed*(d*1.45)*COS(urd) %
IF ed<10
 IF s00=1 & AE<10000 %Umlaufbahn
  GR.COLOR 60,100,100,100,0
  GR.CIRCLE sn,mx,my,ed*d*1.42
 ENDIF
 IF u07=3%1 %Projektion
  GR.ROTATE.START (pos-i/uf)+45,mx,my
  GR.COLOR 30,100,100,255
  GR.LINE ln, -2*sx,my,mx,my
  GR.ROTATE.END
 ENDIF
 IF AE<2000 %Darstellung
  GR.COLOR 150,100,100,255,1
  GR.ROTATE.START pos-i/uf,mx,my
  GR.CIRCLE cl,mx-ed*d,my-ed*d,1
  IF u11=1 & ae<=60 %Text
   pot= -pos
   GR.ROTATE.START pot+i/uf,mx-ed*d,my-ed*d
   ! GR.TEXT.BOLD 0
   GR.TEXT.ALIGN 2
   GR.TEXT.SIZE txz1 %11
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Uranus"
   GR.ROTATE.END
  ENDIF
  GR.ROTATE.END 
 ENDIF
ENDIF
! %%%%%%%%%%%%% Projektion
IF u07=1
 GR.COLOR 30,100,100,cc
 GR.LINE ln, usx,usy,ex,ey
ENDIF
! %%%%%%%%%%%%%

! %Neptun
pos=234 %Position
d=30.11
uf=165
nrd=TORADIANS(((pos-i/uf)-45))
npx=mx-ed*(d*1.45)*SIN(-nrd) %Neptunkoordinaten
npy=my-ed*(d*1.45)*COS(nrd) %
IF ed<10
 IF s00=1 & AE<10000 %Umlaufbahn
  GR.COLOR 60,100,100,100,0
  GR.CIRCLE sn,mx,my,ed*d*1.42
 ENDIF
 IF u08=3%1 %Projektion
  GR.ROTATE.START (pos-i/uf)+45,mx,my
  GR.COLOR 30,200,200,255
  GR.LINE ln, -2*sx,my,mx,my
  GR.ROTATE.END
 ENDIF
 IF AE<2000 %Darstellung
  GR.COLOR 100,200,200,255,1
  GR.ROTATE.START pos-i/uf,mx,my
  GR.CIRCLE cl,mx-ed*d,my-ed*d,1
  IF u11=1 & ae<=60 %Text
   pot=-pos
   GR.ROTATE.START pot+i/uf,mx-ed*d,my-ed*d
   ! GR.TEXT.BOLD 0
   GR.TEXT.ALIGN 2
   GR.TEXT.SIZE txz1 %%11
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Neptun"
   GR.ROTATE.END
  ENDIF
  GR.ROTATE.END
 ENDIF
ENDIF
! %%%%%%%%%%%%% Projektion
IF u08=1
 GR.COLOR 30,200,200,cc
 GR.LINE ln, npx,npy,ex,ey
ENDIF
! %%%%%%%%%%%%%

! %Pluto
pos=290 %Position
d=39.5
uf=249
prd=TORADIANS(((pos-i/uf)-45))
plx=mx-ed*(d*1.45)*SIN(-prd) %Plutokoordinaten
ply=my-ed*(d*1.45)*COS(prd) %
IF ed<10
 IF s00=1 & AE<10000 %Umlaufbahn
  GR.COLOR 60,100,100,100,0
  GR.CIRCLE sn,mx,my,ed*d*1.42
 ENDIF
 IF u09=3%1 %Projektion
  GR.ROTATE.START (pos-i/uf)+45,mx,my
  GR.COLOR 30,200,200,0
  GR.LINE ln, -2*sx,my,mx,my
  GR.ROTATE.END
 ENDIF
 IF AE<2000 %Darstellung
  GR.COLOR 80,200,200,0,1
  GR.ROTATE.START pos-i/uf,mx,my
  GR.CIRCLE cl,mx-ed*d,my-ed*d,1
  IF u11=1 & ae<=60 %Text
   pot= -pos
   GR.ROTATE.START pot+i/uf,mx-ed*d,my-ed*d
   ! GR.TEXT.BOLD 0
   GR.TEXT.ALIGN 2
   GR.TEXT.SIZE txz1 %%11
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Pluto"
   GR.ROTATE.END
  ENDIF
  GR.ROTATE.END
 ENDIF
ENDIF
! %%%%%%%%%%%%% Projektion
IF u09=1
 GR.COLOR 30,200,200,0
 GR.LINE ln, plx,ply,ex,ey
ENDIF
! %%%%%%%%%%%%%

! %Oortsche Wolke 
d=100000 %AE
IF u10=1 & ed<50000 & AE<10000000 %
 GR.COLOR 50,100,100,60,0
 GR.CIRCLE sn,mx,my,ed*d*0.5
 GR.CIRCLE sn,mx,my,ed*d*1
ENDIF

! %Alpha Centauri %%%
d=4.367
d=d*0.8
d=d*Lj
!!
pos=25
!!
h_x=14:m_x=39:s_x=37 %Position
m_x=m_x/60
s_x=s_x/6000
pos1=h_x+m_x+s_x
pos=(pos1/24)*9
GR.ROTATE.START pos,mx,my
GR.COLOR cc-100,cc,cc,cc,1 
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
 GR.COLOR cc-200,cc,cc/2,cc/2,0
 GR.CIRCLE cl,mx-ed*d,my-ed*d,ed*(Lj*0.22)
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.COLOR cc-55,cc,cc,cc,1 
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,CHR$(945)+" Centauri"
 GR.ROTATE.END
ENDIF
IF t01=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d,ex1,ey1
ENDIF
GR.ROTATE.END

! %Aldebaran  %%%
d=65.23 %Lichtjahre
d=d*Lj %AE
pos=157 % Position
GR.ROTATE.START pos,mx,my
GR.COLOR cc,cc,cc/2,cc/2,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Aldebaran"
 GR.ROTATE.END
ENDIF
IF t02=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc/2,cc/2,0
 GR.LINE ln, mx-ed*d,my-ed*d,ex1,ey1
ENDIF
GR.ROTATE.END

! %Arkturus %%%
d=36.72%Lichtjahre
d=d*Lj %AE
pos=11
GR.ROTATE.START pos,mx,my
GR.COLOR cc-80,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Arkturus"
 GR.ROTATE.END
ENDIF
IF t03=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d,ex1,ey1
ENDIF
GR.ROTATE.END

! %Daneb %%%
d= 2616%Lichtjahre 
d=d*0.7 %Ekliptikkorrektur
d=d*Lj %AE
pos= 275 %Position Steinbock
GR.ROTATE.START pos,mx,my
GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Daneb"
 GR.ROTATE.END
ENDIF
IF t20=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc/4,cc/4,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d,ex1,ey1
ENDIF
GR.ROTATE.END

! %Regulus %%%
d= 77.63%Lichtjahre 
d=d*1 %Ekliptikkorrektur
d=d*Lj %AE
pos= 73 %Position Löwe
GR.ROTATE.START pos,mx,my
GR.COLOR cc-120,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Regulus"
 GR.ROTATE.END
ENDIF
IF t13=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d,ex1,ey1
ENDIF
GR.ROTATE.END

! %Alderamin %%%
d= 49%Lichtjahre 
d=d*0.6 %Ekliptikkorrektur
d=d*Lj %AE
pos= 265.5 %Position Steinbock
GR.ROTATE.START pos,mx,my
GR.COLOR cc-120,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Alderamin"
 GR.ROTATE.END
ENDIF
IF t33=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Rasalhague %%%
d= 42.6%Lichtjahre 
d=d*1.0 %Ekliptikkorrektur
d=d*Lj %AE
pos= 320 %Position Skorpion
GR.ROTATE.START pos,mx,my
GR.COLOR cc-120,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Rasalhague"
 GR.ROTATE.END
ENDIF
IF t12=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Vega  %%%
d= 25.05%Lichtjahre 
d=d*0.8 %Ekliptikkorrektur
d=d*Lj %AE
pos= 305 %Position Schütze
GR.ROTATE.START pos,mx,my
GR.COLOR cc-120,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Vega"
 GR.ROTATE.END
ENDIF
IF t07=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Rigel %%%
d= 864.3%Lichtjahre 
d=d*Lj %AE
pos= 147 %Position Stier
GR.ROTATE.START pos,mx,my
GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Rigel"
 GR.ROTATE.END
ENDIF
IF t19=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc/2,cc/2,cc/1.2,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Beteigeuze  %%%
d= 642.5%Lichtjahre 
d=d*Lj %AE
pos= 136 %Position Stier
GR.ROTATE.START pos,mx,my
GR.COLOR cc,cc,cc/2,cc/2,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Beteigeuze"
 GR.ROTATE.END
ENDIF
IF t18=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc/2,cc/2,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Pollux %%%
d= 33.72 %Lichtjahre 
d=d*Lj %AE
pos= 108 %Position  
GR.ROTATE.START pos,mx,my
GR.COLOR cc-120,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Pollux"
 GR.ROTATE.END
ENDIF
IF t09=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Castor %%%
d= 50.88
d=d*Lj %AE
pos= 112 %Position Krebs - Zwilling
GR.ROTATE.START pos,mx,my
GR.COLOR cc-120,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Castor"
 GR.ROTATE.END
ENDIF
IF t10=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Sirius %%%
d= 8.611
d=d*Lj %AE
pos= 124 %Position Zwilling
GR.ROTATE.START pos,mx,my
GR.COLOR cc-35,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Sirius"
 GR.ROTATE.END
ENDIF
IF t05=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d,ex1,ey1
ENDIF
GR.ROTATE.END

! %Capella %%%
d= 42.92
d=d*0.7 %Ekliptikkorrektur
d=d*Lj %AE
pos= 146%Position Zwilling -Stier
GR.ROTATE.START pos,mx,my
GR.COLOR cc-120,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Capella"
 GR.ROTATE.END
ENDIF
IF t11=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Algol %%%
d= 92.95
d=d*0.8 %Ekliptikkorrektur
d=d*Lj %AE
pos= 178 %Position Widder
GR.ROTATE.START pos,mx,my
GR.COLOR cc-35,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Algol"
 GR.ROTATE.END
ENDIF
IF t14=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Spica  %%%
d= 271
d=d*Lj %AE
pos= 22.5 %Position Jungfrau
GR.ROTATE.START pos,mx,my
GR.COLOR cc-35,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Spica"
 GR.ROTATE.END
ENDIF
IF t32=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Antares %%%
d= 554.5
d=d*Lj %AE
pos= 338 %Position Skorpion
GR.ROTATE.START pos,mx,my
GR.COLOR cc,cc,cc/2,cc/2,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Antares"
 GR.ROTATE.END
ENDIF
IF t17=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc/2,cc/2,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Altair %%%
d= 16.73
d=d*Lj %AE
pos= 287 %Position Schuetze
GR.ROTATE.START pos,mx,my
GR.COLOR cc-120,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Altair"
 GR.ROTATE.END
ENDIF
IF t08=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Mira  %%%
d= 424
d=d*Lj %AE
pos= 207 %Position Fisch-Widder
GR.ROTATE.START pos,mx,my
GR.COLOR cc,cc,cc/2,cc/2,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Mira"
 GR.ROTATE.END
ENDIF
IF t15=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc/2,cc/2,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %%%%%%% weitere Sterne %%%%%%%%
!
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

! %Andromeda %%%
d=2500000 %Lichtjahre
d=d*Lj %AE
GR.ROTATE.START 213.5,mx,my
GR.COLOR cc/7,cc,cc,cc,1
IF ae/Lj<4*10^8 %Darstellung
 gr=ed*110000*Lj:IF gr<1:gr=1:ENDIF
 GR.CIRCLE cl,mx-ed*d,my-ed*d,gr
ENDIF
IF t06=1 & ae/Lj<10^8 %Text
 GR.ROTATE.START -213.5,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Andromeda"
 GR.ROTATE.END
ENDIF
IF t04=1 %Projektion
 erd=TORADIANS(-i-45-213.5)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR cc/7,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d,ex1,ey1
ENDIF
GR.ROTATE.END

! %M101  %%%
d=20870000 %Lichtjahre
d=d*Lj %AE
GR.ROTATE.START 15,mx,my
GR.COLOR cc/6,cc,cc,cc,1
IF ae/Lj<4*10^8 %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1%ed*85000*Lj
ENDIF
IF t06=1 & ae/Lj<10^8 %Text
 GR.ROTATE.START -15,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"M101"
 GR.ROTATE.END
ENDIF
IF t27=1 %Projektion
 erd=TORADIANS(-i-45-15)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR cc/7,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %M51 %%%
d=23269000 %Lichtjahre
d=d*Lj %AE
GR.ROTATE.START 22.5,mx,my
GR.COLOR cc/6,cc,cc,cc,1
IF ae/Lj<4*10^8 %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1%ed*30000*Lj
ENDIF
IF t06=1 & ae/Lj<10^8 %Text
 GR.ROTATE.START -22.5,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"M51"
 GR.ROTATE.END
ENDIF
IF t28=1 %Projektion
 erd=TORADIANS(-i-45-22.5)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR cc/7,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %M104  %%%
d=29350000 %Lichtjahre
d=d*Lj %AE
GR.ROTATE.START 34.5,mx,my
GR.COLOR cc/6,cc,cc,cc,1
IF ae/Lj<4*10^8 %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1%ed*25000*Lj
ENDIF
IF t06=1 & ae/Lj<10^8 %Text
 GR.ROTATE.START -34.5,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"M104"
 GR.ROTATE.END
ENDIF
IF t29=1 %Projektion
 erd=TORADIANS(-i-45-34.5)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR cc/7,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Virgo Haufen  %%%
d=65230000 %Lichtjahre
d=d*Lj %AE
GR.ROTATE.START 38,mx,my
GR.COLOR cc/6,cc,cc,cc,1
IF ae/Lj<4*10^8 %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,ed*7500000*Lj
ENDIF
IF t06=1 & ae/Lj<10^8 %Text
 GR.ROTATE.START -38,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Virgo Haufen"
 GR.ROTATE.END
ENDIF
IF t30=1 %Projektion
 erd=TORADIANS(-i-45-38)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR cc/7,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Plejaden  %%%
d= 444%Lichtjahre 
d=d %Ekliptikkorrektur
d=d*Lj %AE
pos= 169 %Position Widder-Stier
GR.ROTATE.START pos,mx,my
GR.COLOR cc/4,cc/2,cc/2,cc,0
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Plejaden"
 GR.ROTATE.END
ENDIF
IF t16=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,ccy/2,cc/2,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Krebsnebel M1  %%%
d= 6523%Lichtjahre 
d=d*1 %Ekliptikkorrektur
d=d*Lj %AE
pos= 141 %Position 
GR.ROTATE.START pos,mx,my
GR.COLOR cc/3,cc,cc/3,cc/2,0
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Krebsnebel"
 GR.ROTATE.END
ENDIF
IF t21=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc/3,cc/2,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Stundenglasnebel  %%%
d= 8154%Lichtjahre 
d=d*1 %Ekliptikkorrektur
d=d*Lj %AE
pos= 20 %Position 
GR.ROTATE.START pos,mx,my
GR.COLOR cc/3,cc,cc/3,cc/2,0
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Stundenglasnebel"
 GR.ROTATE.END
ENDIF
IF t23=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc/3,cc/2,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Monocerotis %%%
d= 19520%Lichtjahre 
d=d*1 %Ekliptikkorrektur
d=d*Lj %AE
pos= 118 %Position 
GR.ROTATE.START pos,mx,my
GR.COLOR cc/3,cc,cc/3,cc/2,0
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Monocerotis"
 GR.ROTATE.END
ENDIF
IF t25=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc/3,cc/2,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Adlernebel M16 %%%
d= 7000%Lichtjahre 
d=d*1 %Ekliptikkorrektur
d=d*Lj %AE
pos= 311 %Position Schütze-Skorpion
GR.ROTATE.START pos,mx,my
GR.COLOR cc/3,cc,cc/3,cc/2,0
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"Adlernebel"
 GR.ROTATE.END
ENDIF
IF t22=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc/3,cc/2,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Kugelsternhaufen im Herkules M13 %%%
d= 22180%Lichtjahre 
d=d*0.8 %Ekliptikkorrektur
d=d*Lj %AE
pos= 334 %Position 
GR.ROTATE.START pos,mx,my
GR.COLOR cc/8,cc,cc,cc,1
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1%ed*72*Lj
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,"M13"
 GR.ROTATE.END
ENDIF
IF t26=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Kugelsternhaufen im Omega Centauri %%%
d= 15790%Lichtjahre 
d=d*0.7 %Ekliptikkorrektur
d=d*Lj %AE
pos= 23 %Position 
GR.ROTATE.START pos,mx,my
GR.COLOR cc/8,cc,cc,cc,0
IF ae<200*d %Darstellung
 GR.CIRCLE cl,mx-ed*d,my-ed*d,1
ENDIF
IF t06=1 & ae<5*d %Text
 GR.ROTATE.START -pos,mx-ed*d,my-ed*d
 ! GR.TEXT.BOLD 0
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 %%11
 GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-10,CHR$(969)+" Haufen"
 GR.ROTATE.END
ENDIF
IF t24=1 %Projektion
 erd=TORADIANS(-i-45-pos)
 ex1= mx-(ed*1.45)*SIN(-erd)
 ey1= my-(ed*1.45)*COS(erd)
 GR.COLOR 30,cc,cc,cc,0
 GR.LINE ln, mx-ed*d,my-ed*d, ex1,ey1
ENDIF
GR.ROTATE.END

! %Galaxie
IF ae/Lj>=9000
 d=200000 %Lichtjahre
 d=d*Lj %AE
 GR.ROTATE.START -10,mx,my 
 GR.COLOR cc/14,cc,cc,cc,1
 IF ae/Lj>=17000
  GR.CIRCLE cl,mx-ed*d/8,my-ed*d/2,ed*d/7
  GR.CIRCLE cl,mx-ed*d/9,my-ed*d/1.8,ed*d/3
 ENDIF
 %Darstellung
 GR.OVAL ovl,mx-ed*d/1.8,my-ed*d*1.2,mx+ed*d/3,my+ed*d/7
 GR.ROTATE.END
ENDIF

! %Simulation
jc=i-(j*360)
IF jc>=360-135+10
 j=j+1:jx=jx+1:nt=1
ENDIF
IF nt<0
 j=j-1:jx=jx-1:nt=366
ENDIF

! %Textoutput
GR.COLOR 80,cc,cc,cc,0
! ! GR.TEXT.BOLD 1
GR.TEXT.ALIGN 3
GR.TEXT.SIZE sx/35 %txz1 %12
IF s10=1 %Skala
 GR.LINE ln,0,sy-13,mx,sy-14
 GR.LINE ln,0,sy-16,0,sy-11
 GR.LINE ln,mx,sy-16,mx,sy-11
 GR.LINE ln,mx/2,sy-16,mx/2,sy-11
 IF AE<Lj
  GR.TEXT.DRAW txt,mx,sy-sy/100,FORMAT$("#####.#",AE)+"AE"
 ENDIF
 IF AE>=Lj %1Lichtjahr
  GR.COLOR 30,cc,cc,cc,0
  GR.CIRCLE cl,mx,my,mx
  GR.COLOR 80,cc,cc,cc,0
  IF AE<Lj*3.261564
!!
   GR.TEXT.DRAW txt,mx,sy-sy/100,FORMAT$("#.#",AE/Lj)+"Lj"
!!
   GR.TEXT.DRAW txt,mx,sy-sy/100,FORMAT$("# ######.#",AE)+"AE"
   GR.TEXT.DRAW txt,mx,sy-sy/40,FORMAT$("#.#",AE/Lj)+"Lj"
  ENDIF
 ENDIF
 IF AE>=Lj*3.261564 %1Parsec
!!
  GR.TEXT.DRAW txt,mx,sy-sy/100,FORMAT$("###### ###### ######.#",AE/Lj)+"Lj"
!!
  GR.TEXT.DRAW txt,mx,sy-sy/100,FORMAT$("###### ###### ######.#",AE)+"AE"
  IF ae<Lj*3261.564
   GR.TEXT.DRAW txt,mx,sy-sy/40,FORMAT$("###.#",ae/Lj/3.261564)+"pc"
  ENDIF
  IF ae>=Lj*3261.564
   IF ae<Lj*3261564
    GR.TEXT.DRAW txt,mx,sy-sy/40,FORMAT$("###.#",ae/Lj/3261.564)+"kpc"
   ELSE
    GR.TEXT.DRAW txt,mx,sy-sy/40,FORMAT$("# ###### ######.#",ae/Lj/3261564)+"Mpc"
   ENDIF
  ENDIF
 ENDIF
 IF s07=0 %bei Vollsimulation
  GR.TEXT.ALIGN 3
!!
  GR.TEXT.DRAW txt,sx,sy-sy/100,FORMAT$("#.#",v)+"x"
!!
  GR.TEXT.DRAW txt,sx,sy-sy/100,FORMAT$("# ###### ###### ###### ######",v_)+"AE/h"
  GR.TEXT.DRAW txt,sx,sy-sy/40,FORMAT$("# ###### ###### ######",v_c)+"c"
 ENDIF
ENDIF
IF s09=1 %Text
 IF s07=0 %bei Vollsimulation
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,sx/100,sy/80,"SONNENSYSTEM Rotation © 2020 by Dietmar Schrausser
 ENDIF
 IF s07=-1 %bei Simulation
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,sx/100,sy/80,INT$(jx)
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx,sy/80,INT$(nt+1)+"T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx,sy-sy/100,"Simulation"+FORMAT$("#.#",v)+"x"
 ENDIF
 IF s07=1 %bei Echtzeit
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,sx/100,sy/80,d$+"."+m$+"."+y$
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx,sy/80,h$+":"+min$+" "+sz$
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx,sy-sy/100,"Echtzeit"
 ENDIF
ENDIF

IF s08=1 %Kompass
 lg=15:p=10
 SENSORS.READ 3,cp,cpi,crl
 IF swk=1| swk=0
  GR.COLOR cc/3,cc,50,50,1
  GR.CIRCLE cl,mx,my/(p/2),13
  GR.COLOR cc,cc,50,50,0

  GR.CIRCLE cl,mx+13*crl/90,my/(p/2)+13*cpi/90,13
  GR.CIRCLE cl,mx,my/(p/2),2
  GR.ROTATE.START 360-cp,mx,sy/p
  GR.CIRCLE cl,mx,sy/p-lg+8,1
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz2 %10
  GR.TEXT.DRAW tx, mx,sy/p-lg,"N"
  GR.ROTATE.END
  GR.ROTATE.START 180-cp,mx,sy/p
  GR.TEXT.DRAW tx, mx,sy/p-lg,"S"
  GR.CIRCLE cl,mx,sy/p-lg-10,1
  GR.ROTATE.END
  GR.ROTATE.START 90-cp,mx,sy/p
  GR.TEXT.DRAW tx, mx,sy/p-lg,"O"
  GR.ROTATE.END
  GR.ROTATE.START 270-cp,mx,sy/p
  GR.TEXT.DRAW tx, mx,sy/p-lg,"W"
  GR.ROTATE.END
 ENDIF
ENDIF

GR.TOUCH2 t2,tx,ty
IF t2
 GOSUB dialog
 ! IF s07=1 THEN GOTO st0
ENDIF

GR.TOUCH tc,tx,ty
IF tc
 IF ty<sy/3 THEN ed=ed/1.05
 IF ty>sy*2/3 THEN ed=ed*1.05
 IF s07=-1
  IF ty<=sy*2/3 & ty>=sy/3
   IF tx<mx THEN v=v+0.1
   IF tx>mx THEN v=v-0.1
  ENDIF
 ENDIF
ENDIF

! %Vollsimulation
IF s07=0
 IF sw=1
  ed=ed/vsm
  IF ae/Lj>=2.5*10^8:sw=-1:PAUSE 2000:ENDIF
 ENDIF
 IF sw=-1
  ed=ed*vsm
  IF ae<=0.02:sw=1:PAUSE 2000:ENDIF
 ENDIF
 GOSUB zeit
 IF sec<>sec1
  sec1=sec
  v_=(SQR((ae-ae1)^2))*3600 %AE/h
  v_c=v_*(au_/1000)
  v_c=v_c/c_ % Prozent c
  ae1=ae
 ENDIF
ENDIF

GR.RENDER

IF s11=1 %SCRS
 SENSORS.READ 8,bwg,dmy,dmy 
 IF bwg=5000 THEN sw0=1
 IF bwg=1&sw0=1
  scrs$=pat$+"SSR"+Y$+M$+D$+h$+min$+sec$
  GR.SCREEN.TO_BITMAP scrs
  GR.BITMAP.SAVE scrs,scrs$
  TONE 11500,55
  sw0=0
 ENDIF
ENDIF 

IF s07=1 
 v=0.1  %Umlaufgeschwindigkeit bei Simulation
 sw=1   %Vollsimulation Schalter
 sec1=-1%
 GOTO st0
ELSE
 GOTO st
ENDIF

OnError:
GOSUB fin
END

ONMENUKEY:
GOSUB dialog
MENUKEY.RESUME

ONBACKKEY:
GOSUB fin

END

zeit:
TIME Y$, M$, D$, h$, min$, sec$
yr=VAL(Y$)
sec=VAL(sec$)
nt=VAL(D$)
nm=VAL(M$)
st=VAL(h$)
min=VAL(min$)
RETURN

tagnr: %Tagesanzahl
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

mnt: %Monatslängen
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

dialogprm: %Dialog Parameter
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

dialog:
smb$=CHR$(9989)
smq$=CHR$(9654)
GOSUB menu
std:
ARRAY.LOAD sel$[],o00$,o01$,o02$,o03$,o08$,o04$,o05$,o06$,o10$,o09$,o07$,o11$,"Ok"
DIALOG.SELECT sel, sel$[],"SSR SONNENSYSTEMROTATION v3.0 - Ebenen:"
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
RETURN

dialog1:
GOSUB menu1
std1:
ARRAY.LOAD sel1$[],q01$,q02$,q03$,q04$,q05$,q06$,q07$,q08$,q09$,q10$,q11$,"Ok"
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
IF sel1=10:u10=u10*-1:ENDIF
IF sel1=11:u11=u11*-1:ENDIF
IF sel1=12:RETURN:   ENDIF
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
RETURN

dialog2:
GOSUB menu2
std2:
ARRAY.LOAD sel2$[],p01$,p05$,p08$,p07$,p09$,p03$,p11$,p12$,p33$,p10$,p02$,p13$,p14$,p32$,p15$,p16$,p17$,p18$,p19$,p20$,p21$,p22$,p23$,p24$,p25$,p26$,p04$,p27$,p28$,p29$,p30$,p31$,p00$,p34$,p06$,"Ok"
DIALOG.SELECT sel2, sel2$[],"Projektion/Darstellung:"
IF sel2=1:t01=t01*-1:ENDIF
IF sel2=2:t05=t05*-1:ENDIF
IF sel2=3:t08=t08*-1:ENDIF
IF sel2=4:t07=t07*-1:ENDIF
IF sel2=5:t09=t09*-1:ENDIF
IF sel2=6:t03=t03*-1:ENDIF
IF sel2=7:t11=t11*-1:ENDIF
IF sel2=8:t12=t12*-1:ENDIF
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
IF sel2=20:t20=t20*-1:ENDIF
IF sel2=21:t21=t21*-1:ENDIF
IF sel2=22:t22=t22*-1:ENDIF
IF sel2=23:t23=t23*-1:ENDIF
IF sel2=24:t24=t24*-1:ENDIF
IF sel2=25:t25=t25*-1:ENDIF
IF sel2=26:t26=t26*-1:ENDIF
IF sel2=27:t04=t04*-1:ENDIF
IF sel2=28:t27=t27*-1:ENDIF
IF sel2=29:t28=t28*-1:ENDIF
IF sel2=30:t29=t29*-1:ENDIF
IF sel2=31:t30=t30*-1:ENDIF
IF sel2=32:t31=t31*-1
 IF t31=1
  INPUT"Stunde h=…",h_,0
  INPUT"Minute min=…",m_,0
  INPUT"Sekunde sec=…",s_,0
  rk$=" "+INT$(h_)+CHR$(688)
  rk$= rk$+INT$(m_)+"'"
  rk$= rk$+INT$(s_)+"''"
 ENDIF
ENDIF
IF sel2=33:t00=t00*-1:ENDIF
IF sel2=35:t06=t06*-1:ENDIF
IF sel2=34:t34=t34*-1:ENDIF  
IF sel2=9:t33=t33*-1:ENDIF
IF sel2=36:RETURN:   ENDIF

GOSUB menu2
GOTO std2
RETURN

menu2:
IF t00=1:p00$=smb$+"  Tierkreis Sternbilder":ENDIF
IF t00=-1: p00$="     Tierkreis Sternbilder":ENDIF
IF t34=1:p34$=smb$+"  Himmelsgewölbe":ENDIF
IF t34=-1: p34$="     Himmelsgewölbe":ENDIF
IF t31=1:p31$=smb$+"  Rektaszension"+rk$:ENDIF
IF t31=-1: p31$="     Rektaszension":ENDIF
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
IF t06=1:p06$=smb$+"  Text":ENDIF
IF t06=-1:p06$="     Text":ENDIF
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
 ed=110/aed
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

fin:
! %Einstellungen
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
TEXT.WRITELN fsr, aed
TEXT.WRITELN fsr, aed$
TEXT.WRITELN fsr, ed
TEXT.WRITELN fsr, swu
TEXT.WRITELN fsr, swk
TEXT.WRITELN fsr, inf
TEXT.WRITELN fsr, vsm
TEXT.WRITELN fsr, ae1
TEXT.WRITELN fsr, v
TEXT.WRITELN fsr, sw
TEXT.WRITELN fsr, sec1
TEXT.WRITELN fsr, h_
TEXT.WRITELN fsr, m_
TEXT.WRITELN fsr, s_
TEXT.WRITELN fsr, rk$
TEXT.WRITELN fsr, ur$
TEXT.WRITELN fsr, kp$
TEXT.CLOSE fsr

PRINT "SSR SONNENSYSTEMROTATION v3.2 "
PRINT"Copyright © 2020 by Dietmar G. SCHRAUSSER"
RETURN
