!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
               Info Subroutine ssr_rotat1.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2023 by Dietmar Gerald Schrausser
!!
c=cc
sc2=29.53
sw=1                  % // Zeiger und Skalen //
swe=-1                % // Echtzeit          //
sws=1                 % // Simulation        //
v=1                   % // Geschwindigkeit   //
v0=v
st001:
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
psmk=sx/9.3506 :upmk=205          % // Merkur   //
psv=sx/4.7473  :upv=268           % // Venus    //
pse=sx/2.9387  :upe=215+tn        % // Erde     //
psm=sx/2.1281  :upm=296           % // Mars     //
upmd=(3/sc2)*360+(tn*(1/sc2)*360) % // Mond     //
! // Start //
st_01:
IF swe=1:b=st-sz:ENDIF
GR.CLS
GR.TEXT.SETFONT "courier","",1
GR.COLOR c/8,c,c,c,0
IF sw=1
 ! // Koordinaten //
 GR.LINE ln,mx-psm,my,mx+psm,my
 GR.LINE ln,mx,my-psm,mx,my+psm
 ! // Jahresskalen //
 GR.CIRCLE cl,mx,my,psmk
 GR.CIRCLE cl,mx,my,psv
 GR.CIRCLE cl,mx,my,pse
 GR.CIRCLE cl,mx,my,psm
 FOR i= 1 TO 12
  GR.ROTATE.START 90-i/12*360-10,mx,my
  GR.LINE ln,mx+pse-sx/72,my,mx+pse,my
  GR.ROTATE.END
 NEXT
ENDIF
! // Sonne //
GR.COLOR c,c,c,c/2,1
GR.CIRCLE cl,mx,my,sx/60                  % // Sonne    //
GR.ROTATE.START 90-(b1/24)*360/a_-upe,mx,my
IF sw=1
 GR.COLOR c/2,c,c,c,0
 GR.LINE ln,mx,my-pse,mx,my               % // Zeiger   //
ENDIF
GR.ROTATE.START -((b1/24)/rt_sne_)*360,mx,my 
GR.COLOR c,c,0,0,0
GR.LINE ln, mx,my,mx,my-sy/128.33         % // Rotation //
GR.ROTATE.END
IF sw=1
 ! // Mondskala //
 GR.COLOR c/8,c,c,c,0
 FOR i= 0 TO 27
  GR.ROTATE.START -i/27*360-33,mx,my-pse
  GR.LINE ln,mx,my-pse+20,mx,my-pse+sx/49
  GR.ROTATE.END
 NEXT
 ! // Stundenskala //
 GR.CIRCLE cl,mx,my-pse,sx/72
 FOR i= 0 TO 24
  GR.ROTATE.START 90-i/24*360,mx,my-pse
  GR.LINE ln,mx,my-pse+11,mx,my-pse+sx/72
  GR.ROTATE.END
 NEXT
ENDIF
! // Erde //
GR.COLOR 200,0,0,c,1
GR.CIRCLE cl,mx,my-pse,sx/90              % // Erde     //
GR.ROTATE.START 180-b/24*360,mx,my-pse
IF sw=1
 GR.COLOR c,c,c,c,0
 GR.LINE ln,mx,my-pse+5,mx,my-pse+sx/90   % // Zeiger   //
ENDIF
GR.COLOR c,c,c,c,0
GR.LINE ln,mx,my-pse,mx,my-pse+sx/120     % // Rotation //
! // Mond //
GR.ROTATE.START -(b1/24)/uf_mnd_t*360+b/24*360-180-upmd,mx,my-pse
IF sw=1
 GR.COLOR c/2,c,c,c,0
 GR.LINE ln,mx,my-pse+sx/54,mx,my-pse     % // Zeiger   //
ENDIF
GR.COLOR c,c,c,c,1
GR.CIRCLE cl,mx,my-pse+sx/51.42,sx/540    % // Mond     //
GR.ROTATE.END % // Mond  //
GR.ROTATE.END % // Erde  //
GR.ROTATE.END % // Sonne //
! // Sonne 2 //
GR.ROTATE.START 90-((b1/24)/(a_*uf_vns_j))*360-(upe+upv),mx,my
IF sw=1
 GR.COLOR c/2,c,c,c,0
 GR.LINE ln,mx,my-psv,mx,my               % // Zeiger   //
ENDIF
! // Stundenskala //
IF sw=1
 GR.COLOR c/8,c,c,c,0
 GR.CIRCLE cl,mx,my-psv,sx/72
ENDIF
! // Venus //
GR.COLOR 160,c,c,c,1
GR.ROTATE.START (b1/(24*rt_vns_))*360,mx,my-psv

GR.ARC ar,mx-sx/108,my-sx/108-psv,mx+sx/108,my+sx/108-psv,0,235,1 % // Venus
IF sw=1
 GR.COLOR c,c,c,c,0
 GR.LINE ln,mx,my-psv-sx/360,mx,my-psv-sx/120  % // Zeiger   //
ENDIF
GR.COLOR c,c,c,c,0
GR.LINE ln,mx,my-psv,mx,my-psv-sx/360          % // Rotation //
GR.ROTATE.END % // Venus   //
GR.ROTATE.END % // Sonne 2 //
! // Sonne 3 //
GR.ROTATE.START 90-((b1/24)/(a_*uf_mrs_j))*360-(upe+upm),mx,my
IF sw=1
 GR.COLOR c/2,c,c,c,0
 GR.LINE ln,mx,my-psm,mx,my               % // Zeiger  //
ENDIF
! // Stundenskala //
IF sw=1
 GR.COLOR c/8,c,c,c,0
 GR.CIRCLE cl,mx,my-psm,sx/72
 FOR i= 0 TO 24
  GR.ROTATE.START 90-i/24*360,mx,my-psm
  GR.LINE ln,mx,my-psm+sx/98.18,mx,my-psm+sx/72
  GR.ROTATE.END
 NEXT
ENDIF
! // Mars //
GR.COLOR c/1.5,c,150,150,1
GR.CIRCLE cl,mx,my-psm,sx/135             % // Mars     //
GR.ROTATE.START 180-(b1/(24*rt_mrs_))*360 ,mx,my-psm
IF sw=1
 GR.COLOR c,c,c,c,0
 GR.LINE ln,mx,my-psm+sx/360,mx,my-psm+sx/98.18  % // Zeiger   //
ENDIF
GR.COLOR c,c,c-30,c-30,0
GR.LINE ln,mx,my-psm,mx,my-psm+sx/120       % // Rotation //
GR.ROTATE.END % // Mars    //
GR.ROTATE.END % // Sonne 3 //
! // Sonne 4 //
GR.ROTATE.START 90-((b1/24)/(a_*uf_mkr_j))*360-(upe+upmk),mx,my
IF sw=1
 GR.COLOR c/2,c,c,c,0
 GR.LINE ln,mx,my-psmk,mx,my %Zeiger
ENDIF
! // Stundenskala //
IF sw=1
 GR.COLOR c/8,c,c,c,0
 GR.CIRCLE cl,mx,my-psmk,sx/72
ENDIF
! // Merkur //
GR.COLOR 180,c,c,0,1
GR.CIRCLE cl,mx,my-psmk,sx/180             % // Merkur //
GR.ROTATE.START 180-(b1/(24*rt_mkr_))*360 ,mx,my-psmk
IF sw=1
 GR.COLOR c,c,c,c,0
 GR.LINE ln,mx,my-psmk+sx/360,mx,my-psmk+sx/120   % // Zeiger //
ENDIF
GR.COLOR c,0,0,0,0
GR.LINE ln,mx,my-psmk,mx,my-psmk+sx/180        % // Rotation //
GR.ROTATE.END % // Merkur  //
GR.ROTATE.END % // Sonne 4 //
GR.COLOR c-4, c/2, c/2, c/2, 1
GR.TEXT.ALIGN 3
GR.TEXT.SIZE txzi2
GR.TEXT.DRAW tx,sx-2,sy-4,"Inneres Sonnensystem"
GR.TEXT.ALIGN 1
GR.TEXT.SIZE txzi
GR.COLOR c-40, c/2, c/2, c/2, 1
GR.TEXT.DRAW tx,20,40,"i Planetenrotationen:"
GOSUB sourceg1
GR.LINE ln,1,sy/46.2,sx-1,sy/46.2
! // Werk //
b=b+v                           % // Stundenzähler,24h //
b1=b1+v
IF b>24
 a=a+1                          % // Tageszähler, 365.25t //
 b=0
ENDIF
GR.TOUCH2 tc2,tx2,ty2
IF tc2: GOTO end_01: ENDIF
GR.TOUCH tc,tx,ty
IF tc
 IF ty<my
  IF tx<mx:sw=sw*-1:PAUSE 5
  ELSE
   v=v0:GOTO st001
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
IF nt<>nt0 THEN GOTO st001
GOSUB tagnr
IF sws=-1
 sws=1:GOTO st001
ELSE
 GOTO st_01
ENDIF
END_01:
tc2=0
PAUSE 100
! % END %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
