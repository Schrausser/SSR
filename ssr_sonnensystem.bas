!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
               Subroutine ssr_sonnensystem.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2023 by Dietmar Gerald Schrausser
!!
! % Sonne %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IF ae/Lj_>=200000
 GR.COLOR cc/9,cc,cc,cc,1
ENDIF
IF ae/Lj_<200000
 GR.COLOR cc,cc,cc,0, 1
 IF ae>1000
  GR.COLOR cc,cc,cc,cc,1
 ENDIF
ENDIF
IF u16=1  THEN gr=(ed*r_sne_ae)        % Sonnenradius AE
IF u16=-1 THEN gr=gr_0                 % Symbol
IF gr<gr_0 THEN gr=gr_0
!
GR.CIRCLE sn,mx,my,gr*vgr_p            % Darstellung
!
IF t06s=1 & ae/Lj_<=5                  % Text
 GR.COLOR cc,cc,cc,cc,1
 IF ae<=60:GR.COLOR cc,cc,cc,0,1:ENDIF
 GR.TEXT.ALIGN 2
 GR.TEXT.SIZE txz1 % %11
 IF t99=1
  GR.TEXT.DRAW txt,mx,my-c10,CHR$(8857)
 ELSE
  GR.TEXT.DRAW txt,mx,my-c10,"Sonne"
 ENDIF
ENDIF
! % Merkur %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=0                                % Position
d=d_mkr_ae
uf=uf_mkr_j
xcr=0.097*ed
ycr=0.03*ed
mkrd=TORADIANS(((pos-i/uf)-45))
mkx=mx-ed*(d*1.42)*SIN(-mkrd)          % Merkurkoordinaten
mky=my-ed*(d*1.42)*COS(mkrd)           %
IF s00=1 & AE<10000                    % Umlaufbahn
 GR.COLOR 100,100,100,100,0
 GR.CIRCLE sn,mx-xcr,my-ycr,ed*d*1.42
ENDIF
IF AE<2000                             % Darstellung
 GR.COLOR 150,100,cc,0,1
 IF u16=1
  gr=(ed*((r_mkr_km*1000)/au_))        % Merkurradius AE
  gr=gr*vgrp0
 ENDIF
 IF u16=-1 THEN gr=gr_0                % Symbol
 GR.ROTATE.START pos-i/uf,mx-xcr,my-ycr
 !
 GR.CIRCLE cl,(mx-xcr)-ed*d,(my-ycr)-ed*d,gr*vgr_p
 !
 IF u11=1 & ae<=2.5                    % Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,(mx-xcr)-ed*d,(my-ycr)-ed*d
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1                    %11
  IF t99=1
   GR.TEXT.SIZE txz1*1.5
   GR.TEXT.DRAW txt,(mx-xcr)-ed*d,(my-ycr)-ed*d-c10,CHR$(9791)
  ELSE
   GR.TEXT.DRAW txt,(mx-xcr)-ed*d,(my-ycr)-ed*d-c10,"Merkur"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END
ENDIF
!                                      % Projektion
IF u01=1
 GR.COLOR 30,100,cc,0
 GR.LINE ln, mkx-xcr,mky-ycr,ex,ey
ENDIF
! % Venus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=62                                 % Position
d=d_vns_ae
uf=uf_vns_j
vrd=TORADIANS(((pos-i/uf)-45))
vx=mx-ed*(d*1.42)*SIN(-vrd)            % Venuskoordinaten
vy=my-ed*(d*1.42)*COS(vrd)             %
IF s00=1 & AE<10000                    % Umlaufbahn
 GR.COLOR 100,100,100,100,0
 GR.CIRCLE sn,mx,my,ed*d*1.42
ENDIF
IF AE<2000                             % Darstellung
 GR.COLOR 250,cc,cc,cc,1
 IF u16=1
  gr=(ed*((r_vns_km*1000)/au_))        % Venusradius AE
  gr=gr*vgrp0
 ENDIF
 IF u16=-1 THEN gr=gr_0                % Symbol
 GR.ROTATE.START pos-i/uf,mx,my
 !
 GR.CIRCLE cl,mx-ed*d,my-ed*d,gr*vgr_p
 !
 IF u11=1 & ae<=2.5                    % Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,mx-ed*d,my-ed*d
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1                    %%11
  IF t99=1
   GR.TEXT.SIZE txz1*1.5
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,CHR$(9792)
  ELSE
   GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,"Venus"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END 
ENDIF
!                                      % Projektion
IF u02=1
 GR.COLOR 25,cc,cc,cc
 GR.LINE ln, vx,vy,ex,ey
ENDIF
! % Erde %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
erd=TORADIANS(-i-45)
ex=mx-(ed*1.42)*SIN(-erd)              % Erdkoordinaten
ey=my-(ed*1.42)*COS(erd)               %
IF s00=1 & AE<10000                    % Umlaufbahn
 GR.COLOR 100,100,100,100,0
 GR.CIRCLE sn,mx,my, ed*1.42
ENDIF
IF s04=1                               % Erdprojektion
 GR.ROTATE.START -i+45,mx,my
 GR.COLOR 65,200,200,cc,1
 GR.LINE ln,-sx/470,my,mx,my
 IF s03=1 THEN GR.CIRCLE cl, sx/216,my,sx/360
 GR.ROTATE.END
ENDIF
GR.ROTATE.START -i,mx,my
IF AE<2000                             % Darstellung
 GR.COLOR cc,100,100,cc,1
 IF u16=1
  gr=(ed*((r_erd_km*1000)/au_))        % Erdradius AE
  gr=gr*vgrp0
 ENDIF
 IF u16=-1 THEN gr=gr_0                % Symbol
 !
 GR.CIRCLE cl,mx-ed,my-ed,gr*vgr_p
 !
 IF u11=1 & ae<=2.5                    % // Text //
  pot= 0
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1                    % 11
  GR.ROTATE.START -pot+i,mx-ed,my-ed
  IF t99=1
   GR.TEXT.SIZE txz1*1.5
   GR.TEXT.DRAW txt,mx-ed,my-ed-c10,CHR$(9793)
  ELSE
   !GR.ROTATE.START -pot+i,mx-ed,my-ed
   GR.TEXT.DRAW txt,mx-ed,my-ed-sy/231,"Erde"
  ENDIF
  GR.ROTATE.END
 ENDIF
ENDIF
IF swbs                                % nur im Hochformat 
 IF s08=1                              % Blickrichtung 
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
 IF s03=1                              % Erdzeitskala 
  IF s07=1 & swu=1                     % Zeit, Kalendersk.
   GR.COLOR 80,cc,cc,cc,1
   FOR j1=1 TO 24
    GR.ROTATE.START (j1/24)*360,mx-ed,my-ed
    GR.LINE ln, mx-ed,my-(c10*3)-ed,mx-ed,my-(c10*2.5)-ed
    GR.ROTATE.END
   NEXT
  ENDIF
  GR.COLOR 60,200,100,100,1
  cr=((1/24)*360)                      % Korrekturfaktor
  IF s07=1                             % bei Echtzeit
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
  IF s07=-1                            % bei Simulation
   FOR j1=1 TO 24
    GR.ROTATE.START (j1/24)*360-41,mx-ed,my-ed
    GR.LINE ln, mx-ed,my-ed,2*mx+ed,2*my+ed
    GR.ROTATE.END
   NEXT
  ENDIF
 ENDIF
ENDIF 
GR.ROTATE.END
IF s07=1 & swu=1                       % Zeit, Kalendersk.
 GR.COLOR 80,cc,cc,cc,1
 FOR j1=1 TO 52                        % Wochen
  GR.ROTATE.START (j1/52)*360,mx,my
  GR.LINE ln, mx,my-c10*40,mx,my-c10*40.2
  GR.ROTATE.END
 NEXT
ENDIF
! % Mars %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=80                                 % Position
d=d_mrs_ae
uf=uf_mrs_j
xcr=0.1216*ed
ycr=0.15*ed
mrd=TORADIANS(((pos-i/uf)-45))
msx=mx-ed*(d*1.42)*SIN(-mrd)           % Marskoordinaten
msy=my-ed*(d*1.42)*COS(mrd)            %
IF s00=1 & AE<10000                    % Umlaufbahn
 GR.COLOR 100,100,100,100,0
 GR.CIRCLE sn,mx+xcr,my-ycr,ed*d*1.42
ENDIF
IF AE<2000                             % Darstellung
 GR.COLOR cc,cc,100,100,1
 IF u16=1
  gr=(ed*((r_mrs_km*1000)/au_))        % Marsradius AE
  gr=gr*vgrp0
 ENDIF
 IF u16=-1 THEN gr=gr_0                % Symbol
 GR.ROTATE.START pos-i/uf,mx+xcr,my-ycr
 !
 GR.CIRCLE cl,(mx+xcr)-ed*d,(my-ycr)-ed*d,gr*vgr_p
 !
 IF u11=1 & ae<=2.5                    % Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,(mx+xcr)-ed*d,(my-ycr)-ed*d
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1 %11
  IF t99=1
   GR.TEXT.SIZE txz1*1.5
   GR.TEXT.DRAW txt,(mx+xcr)-ed*d,(my-ycr)-ed*d-c10,CHR$(9794)
  ELSE
   GR.TEXT.DRAW txt,(mx+xcr)-ed*d,(my-ycr)-ed*d-c10,"Mars"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END
ENDIF
!                                      % Projektion
IF u03=1
 GR.COLOR 35,cc,100,100
 GR.LINE ln, msx+xcr,msy-ycr,ex,ey
ENDIF
! % Jupiter %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=219                               % Position
d=d_jpt_ae                             % AE Entfernung
uf=uf_jpt_j                            % J Umlauf
ycr=0.325*ed
jrd=TORADIANS(((pos-i/uf)-45))
jsx=mx-ed*(d*c145)*SIN(-jrd)           % Jupiterkoord.
jsy=my-ed*(d*c145)*COS(jrd)            %
IF s00=1 & ed<sy/10 & AE<3000          % Umlaufbahn
 GR.COLOR 60,100,100,100,0
 GR.CIRCLE sn,mx,my-ycr,ed*d*1.42
ENDIF
IF AE<1000                             % Darstellung
 GR.COLOR 150,cc,cc,100,1
 IF u16=1
  gr=(ed*((r_jpt_km*1000)/au_))        % Jupiterradius AE
  gr=gr*vgrp0
 ENDIF
 IF u16=-1 THEN gr=gr_0                % Symbol
 GR.ROTATE.START pos-i/uf,mx,my-ycr
 !
 GR.CIRCLE cl,mx-ed*d,(my-ycr)-ed*d,gr*vgr_p
 !
 IF u11=1 & ae<40                      % Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,mx-ed*d,(my-ycr)-ed*d
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1                    % 11
  IF t99=1
   GR.TEXT.SIZE txz1*1.5
   GR.TEXT.DRAW txt,mx-ed*d,(my-ycr)-ed*d-c10,CHR$(9795)
  ELSE
   GR.TEXT.DRAW txt,mx-ed*d,(my-ycr)-ed*d-c10,"Jupiter"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END
ENDIF
!                                      % Projektion
IF u05=1
 GR.COLOR 30,cc,cc,100
 GR.LINE ln, jsx,jsy-ycr,ex,ey
ENDIF
! % Saturn %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=240                                % Position
d=d_stn_ae
uf=uf_stn_j
xcr=0.6367*ed
srd=TORADIANS(((pos-i/uf)-45))
ssx=mx-ed*(d*c145)*SIN(-srd)           % Saturnkoordinaten
ssy=my-ed*(d*c145)*COS(srd)            %
IF s00=1 & ed<sy/10 & AE<3000          % Umlaufbahn
 GR.COLOR 60,100,100,100,0
 GR.CIRCLE sn,mx-xcr,my,ed*d*1.42
ENDIF
IF AE<1000                             % Darstellung
 GR.COLOR 150,cc,cc,cc,1
 IF u16=1
  gr=(ed*((r_stn_km*1000)/au_))        % Saturnradius AE
  gr=gr*vgrp0
 ENDIF
 IF u16=-1 THEN gr=gr_0                % Symbol
 GR.ROTATE.START pos-i/uf,mx-xcr,my
 !
 GR.CIRCLE cl,(mx-xcr)-ed*d,my-ed*d,gr*vgr_p
 !
 !GR.LINE ln,(mx-xcr)-ed*d-c10/2,my-ed*d, (mx-xcr)-ed*d+c10/2, my-ed*d
 IF u11=1 & ae<=90                     % Text
  pot= -pos
  GR.ROTATE.START pot+i/uf,(mx-xcr)-ed*d,my-ed*d
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1                    %11
  IF t99=1
   GR.TEXT.SIZE txz1*1.5
   GR.TEXT.DRAW txt,(mx-xcr)-ed*d,my-ed*d-c10,CHR$(9796)
  ELSE
   GR.TEXT.DRAW txt,(mx-xcr)-ed*d,my-ed*d-c10,"Saturn"
  ENDIF
  GR.ROTATE.END
 ENDIF
 GR.ROTATE.END 
ENDIF
!                                      % Projektion
IF u06=1
 GR.COLOR 30,cc,cc,cc
 GR.LINE ln, ssx-xcr,ssy,ex,ey
ENDIF
! % Uranus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=170                                % Position
d=d_urs_ae
uf=uf_urs_j
ycr=-0.6406*ed
urd=TORADIANS(((pos-i/uf)-45))
usx=mx-ed*(d*c145)*SIN(-urd)           % Uranuskoordinaten
usy=my-ed*(d*c145)*COS(urd)            %
IF ed<sy/20
 IF s00=1 & AE<10000                   % Umlaufbahn
  GR.COLOR 60,100,100,100,0
  GR.CIRCLE sn,mx,(my-ycr),ed*d*1.42
 ENDIF
 IF AE<2000                            % Darstellung
  GR.COLOR 150,100,100,cc,1
  IF u16=1
   gr=(ed*((r_urs_km*1000)/au_))        % Uranusradius AE
   gr=gr*vgrp0
  ENDIF
  IF u16=-1 THEN gr=gr_0                % Symbol
  GR.ROTATE.START pos-i/uf,mx,(my-ycr)
  !
  GR.CIRCLE cl,mx-ed*d,(my-ycr)-ed*d,gr*vgr_p
  !
  IF u11=1 & ae<=125                   % Text
   pot= -pos
   GR.ROTATE.START pot+i/uf,mx-ed*d,(my-ycr)-ed*d
   GR.TEXT.ALIGN 2
   GR.TEXT.SIZE txz1                   % 11
   IF t99=1
    GR.TEXT.SIZE txz1*1.5
    GR.TEXT.DRAW txt,mx-ed*d,(my-ycr)-ed*d-c10,CHR$(9797)
   ELSE
    GR.TEXT.DRAW txt,mx-ed*d,(my-ycr)-ed*d-c10,"Uranus"
   ENDIF
   GR.ROTATE.END
  ENDIF
  GR.ROTATE.END 
 ENDIF
ENDIF
!                                      % Projektion
IF u07=1
 GR.COLOR 30,100,100,cc
 GR.LINE ln, usx,usy-ycr,ex,ey
ENDIF
! % Neptun %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=228                                % Position
d=d_npt_ae
uf=uf_npt_j
nrd=TORADIANS(((pos-i/uf)-45))
npx=mx-ed*(d*c145)*SIN(-nrd)           % Neptunkoordinaten
npy=my-ed*(d*c145)*COS(nrd)            %
IF ed<sy/20
 IF s00=1 & AE<10000                   % Umlaufbahn
  GR.COLOR 60,100,100,100,0
  GR.CIRCLE sn,mx,my,ed*d*1.42
 ENDIF
 IF AE<2000                            % Darstellung
  GR.COLOR 100,200,200,cc,1
  IF u16=1
   gr=(ed*((r_npt_km*1000)/au_))        % Neptunradius AE
   gr=gr*vgrp0
  ENDIF
  IF u16=-1 THEN gr=gr_0                % Symbol
  GR.ROTATE.START pos-i/uf,mx,my
  !
  GR.CIRCLE cl,mx-ed*d,my-ed*d,gr*vgr_p
  !
  IF u11=1 & ae<=185                   % Text
   pot=-pos
   GR.ROTATE.START pot+i/uf,mx-ed*d,my-ed*d
   GR.TEXT.ALIGN 2
   GR.TEXT.SIZE txz1                   % 11
   IF t99=1
    GR.TEXT.SIZE txz1*1.5
    GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,CHR$(9798)
   ELSE
    GR.TEXT.DRAW txt,mx-ed*d,my-ed*d-c10,"Neptun"
   ENDIF
   GR.ROTATE.END
  ENDIF
  GR.ROTATE.END
 ENDIF
ENDIF
!                                      % Projektion
IF u08=1
 GR.COLOR 30,200,200,cc
 GR.LINE ln, npx,npy,ex,ey
ENDIF
! % Pluto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos=290                                % Position
d=d_plt_ae
uf=uf_plt_j
xcr=-12.29*ed
ycr=-9.29*ed
prd=TORADIANS(((pos-i/uf)-45))
plx=mx-ed*(d*c145)*SIN(-prd)           % Plutokoordinaten
ply=my-ed*(d*c145)*COS(prd)            %
IF ed<sy/20
 IF s00=1 & AE<10000                   % Umlaufbahn
  GR.COLOR 30,100,100,100,0
  GR.CIRCLE sn,mx-xcr,my-ycr,ed*d*1.42
 ENDIF
 IF AE<2000                            % Darstellung
  GR.COLOR 80,200,200,0,1
  IF u16=1
   gr=(ed*((r_plt_km*1000)/au_))        % Plutoradius AE
   gr=gr*vgrp0
  ENDIF
  IF u16=-1 THEN gr=gr_0                % Symbol
  GR.ROTATE.START pos-i/uf,mx-xcr,my-ycr
  !
  GR.CIRCLE cl,(mx-xcr)-ed*d,(my-ycr)-ed*d,gr*vgr_p
  !
  IF u11=1 & ae<=220                   % Text
   pot= -pos
   GR.ROTATE.START pot+i/uf,(mx-xcr)-ed*d,(my-ycr)-ed*d
   GR.TEXT.ALIGN 2
   GR.TEXT.SIZE txz1                   % 11
   IF t99=1
    GR.TEXT.SIZE txz1*1.5
    GR.TEXT.DRAW txt,(mx-xcr)-ed*d,(my-ycr)-ed*d-c10,CHR$(9799)
   ELSE
    GR.TEXT.DRAW txt,(mx-xcr)-ed*d,(my-ycr)-ed*d-c10,"Pluto"
   ENDIF 
   GR.ROTATE.END
  ENDIF
  GR.ROTATE.END
 ENDIF
ENDIF
!                                      % Projektion
IF u09=1
 GR.COLOR 30,200,200,0
 GR.LINE ln, plx-xcr,ply-ycr,ex,ey
ENDIF
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
