!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
               Info Subroutine ssr_sterngr.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2025 by Dietmar Gerald Schrausser
!!
c=cc
ed04=sx/4                             %Anfagsvergrösserung
d=16                                  %Abstand 
ds=r_sne_km                           %Sonne r            
a0=2*(ds/ds)                          %Referenzdurchmesser
dx=r_srs_km                           %Sirius    
a1=2*(dx/ds)
dx=r_atr_km                           %Altair
a2=2*(dx/ds)
dx=r_vga_km                           %Vega 
a3=2*(dx/ds)
dx=r_plx_km                           %Pollux 
a4=2*(dx/ds)
dx=r_adb_km                           %Aldebaran 
a5=2*(dx/ds)
dx=r_rgl_km                           %Rigel 
a6=2*(dx/ds)
dx=r_dnb_km                           %Deneb 
a7=2*(dx/ds)
dx=r_838_km                           %V838 
a8=2*(dx/ds)
dx=r_anr_km                           %Antares  
a9=2*(dx/ds)
dx=r_rsg_km                           %RSGC2-01 
a10=2*(dx/ds)
sw=1
swv=1
GR.TEXT.BOLD 1
DO                                    %Start 
 GR.CLS
 GR.TEXT.SETFONT "courier","",1
 GR.TEXT.ALIGN 3
 IF ed04>0.3                          %Sonnensystem 
  GR.COLOR c,c,c,c/2,1
  gr=a0*ed04
  IF gr<1
   GR.COLOR c/2,c,c,c/2,1
   IF gr< 0.5
    GR.COLOR c/4,c,c,c/2,1
   ENDIF
   gr=1
  ENDIF
  GR.CIRCLE cl,mx,my-198+(0*d*ed04),gr  %Sonne 
  GR.COLOR 180,c,c,0,1                  %Merkur 
  GR.CIRCLE cl,mx, my-198+(1*2.3*ed04),ed04*2*((r_mkr_km*1.2)/ds)
  GR.COLOR 160,c,c,c,1                  %Venus    
  GR.CIRCLE cl,mx, my-198+(1*2.4*ed04),ed04*2*(r_vns_km/ds)
  GR.COLOR c,60,60,c,1                  %Erde
  GR.CIRCLE cl,mx, my-198+(1*2.5*ed04),ed04*2*(r_erd_km/ds)
  GR.COLOR 150,c,c,c,1                  %Mond  
  GR.CIRCLE cl,mx-2*((d_mnd_m/1000)/ds)*ed04, my-198+(1*2.5*ed04),ed04*2*((r_mnd_km)/ds)
  IF ed04>139
   GR.COLOR c/2,c,c,c,1
   GR.TEXT.ALIGN 1
   GR.TEXT.SIZE txz3
   GR.TEXT.DRAW tx,mx+15, my-195+(1*2.5*ed04) ,"Erde"
   GR.TEXT.DRAW tx,16, my-195+(1*2.5*ed04) ,"Mond"
  ENDIF
  GR.COLOR c,c,150,150,1                %Mars  
  GR.CIRCLE cl,mx, my-198+(1*2.6*ed04),ed04*2*(r_mrs_km/ds)
  GR.COLOR 120,c-20,170,0,1             %Jupiter
  GR.CIRCLE cl,mx, my-198+(1*3*ed04),ed04*2*(r_jpt_km/ds)
  GR.COLOR 70,c,c,c,1                   %Saturn
  GR.CIRCLE cl,mx, my-198+(1*3.6*ed04),ed04*2*(r_stn_km/ds)
  GR.LINE ln, mx-0.4*ed04,my-198+(1*3.64*ed04), mx+0.4*ed04, my-198+(1*3.56*ed04)
  GR.COLOR 150, 120, 120, 200,1              %Uranus
  GR.CIRCLE cl,mx, my-198+(1*4.1*ed04),ed04*2*(r_urs_km/ds)
  GR.COLOR 70,50,50,c,1                 %Neptun
  GR.CIRCLE cl,mx, my-198+(1*4.5*ed04),ed04*2*(r_npt_km/ds)
  IF ed04<100
   GR.COLOR c/2,c,c,c,1
   GR.TEXT.SIZE (18/23)*ed04
   GR.TEXT.DRAW tx, sx-20,my-198+(0.0*d*ed04) ,"Sonne"
   GR.TEXT.SIZE (11/23)*ed04
   GR.TEXT.DRAW tx, sx-20,my-198+(0.05*d*ed04) ,"r="+INT$(ds)+"km"
  ENDIF
 ENDIF
 dsx=2.2                                %Abstandsfaktor
 IF ed04>0.2
  GR.COLOR c,c,c,c/2,1
  gr=a1*ed04
  IF gr<1
   GR.COLOR c/2,c,c,c/2,1
   IF gr< 0.5
    GR.COLOR c/4,c,c,c/2,1
   ENDIF
   gr=1
  ENDIF
  GR.CIRCLE cl,mx,my-200+((1*d*ed04)*((a1/a0)/dsx)),gr
  IF ed04<115
   GR.COLOR c/2,c,c,c,1
   GR.TEXT.SIZE (18/18)*ed04
   GR.TEXT.DRAW tx, sx-20,my-200+ ((1*d*ed04)*((a1/a0)/dsx)) ,"Sirius"
   GR.TEXT.SIZE (11/18)*ed04
   GR.TEXT.DRAW tx, sx-20,my-200+ ((1.09*d*ed04)*((a1/a0)/dsx)) ,"r="+INT$(r_srs_km)+"km"
  ENDIF
 ENDIF
 dsx=2.15                               %Abstandsfaktor
 GR.COLOR c,c,c,c/2,1
 gr=a2*ed04
 IF gr<1
  GR.COLOR c/2,c,c,c/2,1
  IF gr< 0.5
   GR.COLOR c/4,c,c,c/2,1
  ENDIF
  gr=1
 ENDIF
 GR.CIRCLE cl,mx,my-200+((2*d*ed04)*((a2/a0)/dsx)),gr
 IF ed04<140
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/13)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((2*d*ed04)*((a2/a0)/dsx)) ,"Altair"
  GR.TEXT.SIZE (11/13)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((2.13*d*ed04)*((a2/a0)/dsx)) ,"r="+INT$(r_atr_km)+"km"
 ENDIF
 dsx=2.6                                %Abstandsfaktor
 GR.COLOR c,c,c,c/2,1
 gr=a3*ed04
 IF gr<1
  GR.COLOR c/2,c,c,c/2,1
  IF gr< 0.5
   GR.COLOR c/4,c,c,c/2,1
  ENDIF
  gr=1
 ENDIF
 GR.CIRCLE cl,mx,my-200+((3*d*ed04)*((a3/a0)/dsx)),gr
 IF ed04<180
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/9)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((3*d*ed04)*((a3/a0)/dsx)) ,"Vega"
  GR.TEXT.SIZE (11/9)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((3.13*d*ed04)*((a3/a0)/dsx)) ,"r="+INT$(r_vga_km)+"km"
 ENDIF
 dsx=7.2                               %Abstandsfaktor
 GR.COLOR c,c,150,0,1
 IF ed04<30
  GR.CIRCLE cl,mx,my-200+((4*d*ed04)*((a4/a0)/dsx)),a4*ed04
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/6)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((4*d*ed04)*((a4/a0)/dsx)) ,"Pollux"
  GR.TEXT.SIZE (11/6)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((4.1*d*ed04)*((a4/a0)/dsx)) ,"r="+INT$(r_plx_km)+"km"
 ENDIF
 dsx=17.5                              %Abstandsfaktor
 GR.COLOR c-20,c,0,0,1
 IF ed04<40
  GR.CIRCLE cl,mx,my-200+((5*d*ed04)*((a5/a0)/dsx)),a5*ed04
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/2.6)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((5*d*ed04)*((a5/a0)/dsx)) ,"Aldebaran"
  GR.TEXT.SIZE (11/2.6)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((5.15*d*ed04)*((a5/a0)/dsx)) ,"r="+INT$(r_adb_km)+"km"
 ENDIF
 dsx=14                               %Abstandsfaktor
 GR.COLOR 255,20,20,c,1
 IF ed04<60
  GR.CIRCLE cl,mx,my-200+((6*d*ed04)*((a6/a0)/dsx)),a6*ed04
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/1)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((6*d*ed04)*((a6/a0)/dsx)) ,"Rigel"
  GR.TEXT.SIZE (11/1)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((6.24*d*ed04)*((a6/a0)/dsx)) ,"r="+INT$(r_rgl_km)+"km"
 ENDIF
 dsx=12                               %Abstandsfaktor
 GR.COLOR 150,20,20,c,1
 IF ed04<120
  GR.CIRCLE cl,mx,my-200+((7*d*ed04)*((a7/a0)/dsx)),a7*ed04
  IF ed04<120
   GR.COLOR c/2,c,c,c,1
   GR.TEXT.SIZE (18/0.4)*ed04
   GR.TEXT.DRAW tx, sx-20,my-200+ ((7*d*ed04)*((a7/a0)/dsx)) ,"Deneb"
   GR.TEXT.SIZE (11/0.4)*ed04
   GR.TEXT.DRAW tx, sx-20,my-200+ ((7.24*d*ed04)*((a7/a0)/dsx)) ,"r="+INT$(r_dnb_km)+"km"
  ENDIF
 ENDIF 
 dsx=23                                %Abstandsfaktor
 GR.COLOR 35,c,c,c,1
 IF ed04<150
  GR.CIRCLE cl,mx,my-200+((8*d*ed04)*((a8/a0)/dsx)),a8*ed04
  GR.COLOR 200,0,0,0,1
  GR.CIRCLE cl,mx,my-200+((8*d*ed04)*((a8/a0)/dsx)),(a8*ed04)/2.1
  GR.COLOR 85,c,0,0,1
  GR.CIRCLE cl,mx,my-200+((8*d*ed04)*((a8/a0)/dsx)),(a8*ed04)/7
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/0.25)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((8*d*ed04)*((a8/a0)/dsx)) ,"V838"
  GR.TEXT.SIZE (11/0.25)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((8.24*d*ed04)*((a8/a0)/dsx)) ,"r="+INT$(r_838_km)+"km"
 ENDIF 
 dsx=18.4                              %Abstandsfaktor
 GR.COLOR 120,c,150,0,1
 IF ed04<180
  GR.CIRCLE cl,mx,my-200+((9*d*ed04)*((a9/a0)/dsx)),a9*ed04
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/0.1)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((9*d*ed04)*((a9/a0)/dsx)) ,"Antares"
  GR.TEXT.SIZE (11/0.1)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((9.35*d*ed04)*((a9/a0)/dsx)) ,"r="+INT$(r_anr_km)+"km"
 ENDIF 
 dsx=21                            %Abstandsfaktor
 GR.COLOR 100,c,0,0,1
 IF ed04<200
  GR.CIRCLE cl,mx,my-200+((10*d*ed04)*((a10/a0)/dsx)),a10*ed04
  GR.COLOR c/2,c,c,c,1
  GR.TEXT.SIZE (18/0.05)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((10*d*ed04)*((a10/a0)/dsx)) ,"RSGC2-01"
  GR.TEXT.SIZE (11/0.05)*ed04
  GR.TEXT.DRAW tx, sx-20,my-200+ ((10.40*d*ed04)*((a10/a0)/dsx)) ,"r="+INT$(r_rsg_km)+"km"
 ENDIF 
 ln=(ds/((ed04/(sx/4))))*2             %km
 GR.COLOR c-55,c/2,c/2,c/2,1
 GR.TEXT.ALIGN 3
 GR.TEXT.SIZE txz3
 lna=ln/(au_/1000)
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
 GR.TEXT.SIZE txzi
 GR.COLOR cc-55, c/2, c/2, c/2, 1
 GR.TEXT.DRAW tx,20,40,"i Größenverhältnisse in der Galaxie:"
 GOSUB sourceg2
 GR.LINE ln, 1,50,sx-1,50
 GR.RENDER
 ve=1.01                               %Geschwindigkeit
 IF swv=-1                             %Vollautomatik
  IF sw=1                              %Vorwärts      
   ed04=ed04/ve
   IF ed04<sx/15000:PAUSE 3000:sw=-1:ENDIF
  ENDIF
  IF sw=-1                             %Rückwärts
   ed04=ed04*ve
   IF ed04>sx/4:PAUSE 3000:sw=1:ENDIF
  ENDIF
 ENDIF
 GR.TOUCH tc,tx,ty
 IF tc
  IF swv=1
   IF tx>mx&ty>my&ed04<sx/4:ed04=ed04*ve:ENDIF
   IF tx>mx&ty<my&ed04>sx/15000:ed04=ed04/ve:ENDIF
  ENDIF
  IF tx<mx:swv=swv*-1: ENDIF 
  ! % Umschaltung: Manuell/Vollauto.
 ENDIF
 GR.TOUCH2 t2,tx,ty
 IF t2
  GOTO END04
 ENDIF
UNTIL 0
END04:
GR.TEXT.BOLD 0
t2=0
PAUSE 100
! % END %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
