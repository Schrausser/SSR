!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
               Info Subroutine ssr_rotat2.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2023 by Dietmar Gerald Schrausser
!!
c=255
sc2=29.53
sw=1                % // Zeiger und Skalen  //
swe=-1              % // Echtzeit           //
sws=1               % // Simulation         //
v=0.4               % // Geschwindigkeit    //
v0=v
st002:
GOSUB zeit
a=0:b=0:b1=0
! // Schaltjahr //
sj=0
IF Yr/4=INT(Yr/4) THEN sj=1
sj=1 
nt0=nt
GOSUB tagnr
GOSUB mnt
! // Sommerzeit //
sz$=""
swz=1
sz=0
IF nt>=mz+29 & nt<or+25
 sz$="MSZ"
 sz=1
 swz=-1
ENDIF
! // Positionen //
tn=204                       % // Aktueller Tag //
tn=tn-(204-(nt-204))
psp=sx/2.0849 :upp=110             % // Pluto   //
psn=sx/2.41  :upn=170              % // Neptun  //
psu=sx/2.857 :upu=215              % // Uranus  //
pss=sx/3.506 :upv=160              % // Saturn  //
pse=sx/8.12  :upe=208+tn           % // Erde    //
psm=sx/4.537 :upm=195              % // Jupiter //
upmd=(3/sc2)*360+(tn*(1/sc2)*360)  % // Mond    //
! // Start //
st_02:
IF swe=1:b=st-sz:ENDIF
GR.CLS
GR.TEXT.SETFONT "courier","",1
GR.COLOR c/8,c,c,c,0
IF sw=1
 ! // Koordinaten //
 GR.LINE ln,mx-pse,my,mx+pse,my
 GR.LINE ln,mx,my-pse,mx,my+pse
 ! // Jahresskalen //
 GR.CIRCLE cl,mx,my,psp
 GR.CIRCLE cl,mx,my,psn
 GR.CIRCLE cl,mx,my,psu
 GR.CIRCLE cl,mx,my,pss
 GR.CIRCLE cl,mx,my,pse
 GR.CIRCLE cl,mx,my,psm
 FOR i= 1 TO 12
  GR.ROTATE.START 90-i/12*360-10,mx,my
  GR.LINE ln,mx+pse-sx/120,my,mx+pse,my
  GR.ROTATE.END
 NEXT
ENDIF
! // Sonne //
GR.COLOR c,c,c,c/2,1
GR.CIRCLE cl,mx,my,sx/60                 % // Sonne //
GR.ROTATE.START 90-(b1/24)*360/a_-upe,mx,my
IF sw=1
 GR.COLOR c/2,c,c,c,0
 GR.LINE ln,mx,my-pse,mx,my              % // Zeiger //
ENDIF
GR.ROTATE.START -((b1/24)/ rt_sne_ )*360,mx,my 
GR.COLOR c,c,0,0,0
GR.LINE ln, mx,my-sx/360,mx,my-sy/128.33 % // Rotation //
GR.ROTATE.END
IF sw=1
 ! // Stundenskala //
 GR.COLOR c/8,c,c,c,0
 GR.CIRCLE cl,mx,my-pse,sx/72
 FOR i= 0 TO 24
  GR.ROTATE.START 90-i/24*360,mx,my-pse
  GR.LINE ln,mx,my-pse+sx/98.18,mx,my-pse+sx/72
  GR.ROTATE.END
 NEXT
ENDIF
! // Erde //
GR.COLOR 200,0,0,c,1
GR.CIRCLE cl,mx,my-pse,sx/130            % // Erde  //
GR.ROTATE.START 180-b/24*360,mx,my-pse
IF sw=1
 GR.COLOR c,c,c,c,0
 GR.LINE ln,mx,my-pse+sx/360,mx,my-pse+sx/108 % // Zeiger //
ENDIF
GR.COLOR c,c,c,c,0
GR.LINE ln,mx,my-pse,mx,my-pse+sx/120    % // Rotation //
! // Mond //
GR.ROTATE.START -(b1/24)/ uf_mnd_t *360+b/24*360-180-upmd,mx,my-pse
IF sw=1
 GR.COLOR c/2,c,c,c,0
 GR.LINE ln,mx,my-pse+sx/77.14,mx,my-pse % // Zeiger //
ENDIF
GR.COLOR c,c,c,c,1
GR.CIRCLE cl,mx,my-pse+sx/60,sx/540      % // Mond   //
GR.ROTATE.END % // Mond  //
GR.ROTATE.END % // Erde  //
GR.ROTATE.END % // Sonne //
! // Sonne 3 //
GR.ROTATE.START 90-((b1/24)/(a_*uf_jpt_j))*360-(upe+upm),mx,my % Umlauf Jupiter
IF sw=1
 GR.COLOR c/2,c,c,c,0
 GR.LINE ln,mx,my-psm,mx,my              % // Zeiger //
ENDIF
! // Jupiter //
GR.COLOR 65, cc-20, 170, 0,1
GR.CIRCLE cl,mx,my-psm,sx/90              %Jupiter
GR.ROTATE.START 180-(b1/(24* rt_jpt_ ))*360 ,mx,my-psm
GR.COLOR c,c,c,0,0
GR.LINE ln,mx,my-psm+sx/540,mx,my-psm+sx/72 % // Rotation //
GR.ROTATE.END % // Jupiter //
GR.ROTATE.END % // Sonne 3 //
! // Sonne 4 //
GR.ROTATE.START 90-((b1/24)/(a_*uf_stn_j))*360-(upe+upv),mx,my % Umlauf Saturn
IF sw=1
 GR.COLOR c/2,c,c,c,0
 GR.LINE ln,mx,my-pss,mx,my             % // Zeiger //
ENDIF
! // Saturn //
GR.COLOR c/1.7,c,c,c,0
GR.CIRCLE cl,mx,my-pss,sx/43.2          % // Saturn //
GR.COLOR c/1.2,c,c,c,0
GR.CIRCLE cl,mx,my-pss,sx/54            % // Saturn //
GR.COLOR 200,c,c,c,1
GR.CIRCLE cl,mx,my-pss,sx/98.18         % // Saturn //
GR.ROTATE.START 180-(b1/(24* rt_stn_ ))*360 ,mx,my-pss
GR.COLOR c,c,c,c,0
GR.LINE ln,mx,my-pss+sx/1080,mx,my-pss+sx/67.5 % // Rotation //
GR.ROTATE.END % // Saturn  //
GR.ROTATE.END % // Sonne 4 //
! // Sonne 5 //
GR.ROTATE.START 90-(a/(a_*uf_urs_j))*360-(upe+upu),mx,my
IF sw=1
 GR.COLOR c/2,c,c,c,0
 GR.LINE ln,mx,my-psu,mx,my             % // Zeiger //
ENDIF
! // Uranus //
GR.COLOR 150, 100, 100, 150, 1
GR.CIRCLE cl,mx,my-psu,sx/90            % // Uranus //
GR.ROTATE.START (b1/(24* rt_urs_ ))*360 ,mx,my-psu
GR.COLOR c,c/2,c/2,c,0
GR.LINE ln,mx,my-psu,mx,my-psu+sx/77.14 % // Rotation //
GR.ROTATE.END % // Uranus  //
GR.ROTATE.END % // Sonne 5 //
! // Sonne 6 //
GR.ROTATE.START 90-(a/(a_*uf_npt_j))*360-(upe+upn),mx,my
IF sw=1
 GR.COLOR c/2,c,c,c,0
 GR.LINE ln,mx,my-psn,mx,my             % // Zeiger //
ENDIF
! // Neptun //
GR.COLOR 85, 50, 50, 255, 1
GR.CIRCLE cl,mx,my-psn,sx/90 %Neptun
GR.ROTATE.START 180-(b1/(24* rt_npt_ ))*360 ,mx,my-psn
GR.COLOR c,c/2,c/2,c,0
GR.LINE ln,mx,my-psn,mx,my-psn+sx/90    % // Rotation //
GR.ROTATE.END % // Neptun  //
GR.ROTATE.END % // Sonne 6 //
! // Sonne 7 //
GR.ROTATE.START 90-((b1/24)/(a_*uf_plt_j))*360-(upe+upp),mx,my
IF sw=1
 GR.COLOR c/2,c,c,c,0
 GR.LINE ln,mx,my-psp,mx,my             % // Zeiger //
ENDIF
! // Stundenskala //
IF sw=1
 GR.COLOR c/8,c,c,c,0
 GR.CIRCLE cl,mx,my-psp,sx/72
 FOR i= 0 TO 24
  GR.ROTATE.START 90-i/24*360,mx,my-psp
  GR.LINE ln,mx,my-psp+sx/98.18,mx,my-psp+sx/1080+sx/72
  GR.ROTATE.END
 NEXT
ENDIF
! // Pluto //
GR.COLOR 70,120,c,40,1
GR.CIRCLE cl,mx,my-psp,sx/154.28       % // Pluto //
GR.ROTATE.START ((b1/24)/ rt_plt_ )*360 ,mx,my-psp
IF sw=1
 GR.COLOR c,c,c,c,0
 GR.LINE ln,mx,my-psp+sx/360,mx,my-psp+sx/154.28 % // Zeiger //
ENDIF
GR.COLOR c,c,c,c,0
GR.LINE ln,mx,my-psp,mx,my-psp+sx/154.28 % // Rotation //
GR.ROTATE.END % // Pluto   //
GR.ROTATE.END % // Sonne 7 //
! // Text //
GR.COLOR c-4, c/2, c/2, c/2, 1
GR.TEXT.ALIGN 3
GR.TEXT.SIZE txzi2
GR.TEXT.DRAW tx,sx-sx/540,sy-sy/577.5,"Äußeres Sonnensystem"
GR.TEXT.ALIGN 1
GR.TEXT.SIZE txzi
GR.TEXT.DRAW tx,20,30,"i Planetenrotationen:"
GOSUB sourceg1
GR.LINE ln,1,sy/46.2,sx-sx/1080,sy/46.2
! // Werk //
b=b+v                          % // Stundenzähler,24h //
b1=b1+v
IF b>24
 a=a+1                         % // Tageszähler, 365.25t //
 b=0
ENDIF
GR.TOUCH2 tc2,tx2,ty2
IF tc2: GOTO end_02: ENDIF
GR.TOUCH tc,tx,ty
IF tc
 IF ty<my
  IF tx<mx:sw=sw*-1:PAUSE 5
  ELSE
   v=v0:GOTO st002
  ENDIF
 ENDIF
 IF ty>my
  IF tx<mx
   v=v-0.1
  ELSE
   v=v+0.1
  ENDIF
 ENDIF
ENDIF
GR.RENDER
GOSUB Zeit
IF nt<>nt0 THEN GOTO st002
GOSUB tagnr
IF sws=-1
 sws=1:GOTO st002
ELSE
 GOTO st_02
ENDIF
END_02:
tc2=0
PAUSE 100
GOSUB global
! % END %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
