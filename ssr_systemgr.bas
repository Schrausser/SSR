!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
               Info Subroutine ssr_systemgr.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2023 by Dietmar Gerald Schrausser
!!
r=6378
f=sx/50
fd=sy/231 
fd2=sy/20 
td1=sx/150
sw_i03=1
GR.TEXT.BOLD 1
DO
 GR.CLS
 GR.TEXT.SETFONT "courier","",1
 GR.TEXT.ALIGN 1
 GR.TEXT.SIZE txzi
 GR.COLOR cc, cc, cc, cc/2, 1               %Sonne  
 GR.CIRCLE ci, mx,-my/0.49,(696000/r)*f
 GR.COLOR 80,100,cc,0, 1                    %Merkur 
 GR.CIRCLE ci, mx,sy/7, (2439/r)*f
 GR.COLOR 160, cc, cc, cc, 1                %Venus  
 GR.CIRCLE ci, mx,sy/(7/1.25), (6052/r)*f
 GR.COLOR 200, 0, 0, cc, 1                  %Erde
 GR.CIRCLE c2, mx, sy/(7/1.53),(6378/r)*f
 GR.COLOR 110, cc, cc, cc, 1                %Mond
 GR.CIRCLE c2, mx+mx/5,sy/(7/1.53),(1738/r)*f
 GR.COLOR cc/1.5, cc, 150, 150, 1           %Mars
 GR.CIRCLE ci, mx, sy/(7/1.8), (3397/r)*f
 GR.COLOR 60, cc, cc, cc, 1
 GR.CIRCLE c2, mx+mx/4, sy/(7/1.8),(800/r)*f
 GR.CIRCLE c2, mx+mx/5, sy/(7/1.8),(1000/r)*f
 GR.COLOR 85, cc-20, 170, 0, 1              %Jupiter 
 GR.CIRCLE ci, mx, sy/(7/2.77), (71398/r)*f
 GR.COLOR 70, cc, cc, cc, 1                 %Saturn 
 GR.CIRCLE ci, mx, sy/(7/4.4),(60000/r)*f
 GR.LINE ln,mx+sx/3,sy/(7/4.4)-sy/40,mx-sx/3,sy/(7/4.4)+sy/40
 GR.COLOR 100, 30, 30, 200, 1               %Uranus
 GR.CIRCLE ci, mx,sy/(7/5.5), (25400/r)*f
 GR.COLOR 55, 50, 50, 255, 1                %Neptun
 GR.CIRCLE ci, mx,sy/(7/6.2), (24300/r)*f
 GR.COLOR 80,100,100,100, 1                 %Pluto
 GR.CIRCLE ci, mx,sy/(7/6.65), (2000/r)*f
 IF sw_i03=1
  GR.COLOR cc-55, cc/2, cc/2, cc/2, 1
  GR.TEXT.DRAW tx,20,40,"i Sonnensystem: Radius - Distanz"
  GR.LINE ln, 1,50,sx-1,50
  GR.COLOR 100,150,150,150,0
  GR.LINE ln,mx+mx/2, 0,mx+mx/2,sy/(7/1.53)
  GR.LINE ln,mx+mx/2+-mx/8, sy/(7/1.53),mx+mx/2+mx/8,sy/(7/1.53)
  GR.COLOR 200,150,150,150,1
  GR.TEXT.ALIGN 1
  GR.TEXT.SIZE txz4
  GR.TEXT.DRAW txt,td1,sy/10-sy/60,"Sonne"
  GR.TEXT.DRAW txt,td1,sy/10,"696000km"
  GR.TEXT.DRAW txt,td1,sy/7-sy/60,"Merkur"
  GR.TEXT.DRAW txt,td1,sy/7,"2439km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/7,"0.39AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.25)-sy/60,"Venus"
  GR.TEXT.DRAW txt,td1,sy/(7/1.25),"6052km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.25),"0.72AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.53)-sy/60,"Erde / Mond"
  GR.TEXT.DRAW txt,td1,sy/(7/1.53),"6378km / 1738km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.53),"AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.8)-sy/60,"Mars"
  GR.TEXT.DRAW txt,td1,sy/(7/1.8),"3397km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.8),"1.52AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/2.77)-sy/60,"Jupiter"
  GR.TEXT.DRAW txt,td1,sy/(7/2.77),"71398km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/2.77),"5.20AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/4.4)-sy/60,"Saturn"
  GR.TEXT.DRAW txt,td1,sy/(7/4.4),"60000km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/4.4),"9.55AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/5.5)-sy/60,"Uranus"
  GR.TEXT.DRAW txt,td1,sy/(7/5.5),"25400km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/5.5),"19.22AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/6.2)-sy/60,"Neptun"
  GR.TEXT.DRAW txt,td1,sy/(7/6.2),"24300km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/6.2),"30.11AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/6.65)-sy/60,"Pluto"
  GR.TEXT.DRAW txt,td1,sy/(7/6.65),"2000km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/6.65),"39.54AE"
 ENDIF
 IF sw_i03=2
  GR.TEXT.ALIGN 1
  GR.TEXT.SIZE txzi
  GR.COLOR cc-40, cc/2, cc/2, cc/2, 1
  GR.TEXT.DRAW tx,20,40,"i Sonnensystem: Rotation - Umlauf"
  GR.LINE ln, 1,50,sx-1,50
  GR.COLOR 100,150,150,150,0
  GR.CIRCLE ci, mx,-my/0.49,(696000/r)*f*(sx/982.711)
  GR.CIRCLE ci, mx,sy/(7/1.53),sx/30
  GR.COLOR 255,15,15,15,1
  GR.COLOR 200,150,150,150,1
  GR.TEXT.ALIGN 1
  GR.TEXT.SIZE txz4 
  GR.TEXT.DRAW txt,td1,sy/10-sy/60,"Sonne"
  GR.TEXT.DRAW txt,td1,sy/10,"25.38T"
  GR.TEXT.DRAW txt,td1,sy/7-sy/60,"Merkur"
  GR.TEXT.DRAW txt,td1,sy/7,"58.65T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/7,"0.24J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.25)-sy/60,"Venus"
  GR.TEXT.DRAW txt,td1,sy/(7/1.25),"243.01T
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.25),"0.62J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.53)-sy/60,"Mond"
  GR.TEXT.DRAW txt,td1,sy/(7/1.53),"27.32T"
  GR.TEXT.ALIGN 2
  GR.TEXT.DRAW txt,mx-mx/10,sy/(7/1.53),"T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.53),"J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.8)-sy/60,"Mars"
  GR.TEXT.DRAW txt,td1,sy/(7/1.8),"1.03T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.8),"1.88J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/2.77)-sy/60,"Jupiter"
  GR.TEXT.DRAW txt,td1,sy/(7/2.77),"0.41T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/2.77),"11.86J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/4.4)-sy/60,"Saturn"
  GR.TEXT.DRAW txt,td1,sy/(7/4.4),"0.44T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/4.4),"29.46J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/5.5)-sy/60,"Uranus"
  GR.TEXT.DRAW txt,td1,sy/(7/5.5),"0.65T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/5.5),"84.02J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/6.2)-sy/60,"Neptun"
  GR.TEXT.DRAW txt,td1,sy/(7/6.2),"0.77T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/6.2),"164.77J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/6.65)-sy/60,"Pluto"
  GR.TEXT.DRAW txt,td1,sy/(7/6.65),"6.39T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/6.65),"248.53J"
 ENDIF
 IF sw_i03=3
  GR.TEXT.ALIGN 1
  GR.TEXT.SIZE txzi
  GR.COLOR cc-40, cc/2, cc/2, cc/2, 1
  GR.TEXT.DRAW tx,20,40,"i Sonnensystem: Masse, Grav., Vol."
  GR.LINE ln, 1,50,sx-1,50
  GR.COLOR 200,150,150,150,1
  GR.TEXT.ALIGN 1
  GR.TEXT.SIZE txz4
  GR.TEXT.DRAW txt,td1,sy/10-sy/60,"Sonne"
  GR.TEXT.DRAW txt,td1,sy/10,"333946.00M, 28.01G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/10,"1 304000.00V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/7-sy/60,"Merkur"
  GR.TEXT.DRAW txt,td1,sy/7,"0.06M, 0.38G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/7,"0.06V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.25)-sy/60,"Venus"
  GR.TEXT.DRAW txt,td1,sy/(7/1.25),"0.82M, 0.91G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.25),"0.86V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.53)-sy/60,"Mond"
  GR.TEXT.DRAW txt,td1,sy/(7/1.53),"0.01M, 0.17G"
  GR.TEXT.ALIGN 2
  GR.TEXT.DRAW txt,mx-2,sy/(7/1.53),"M G V"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.53),"0.02V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.8)-sy/60,"Mars"
  GR.TEXT.DRAW txt,td1,sy/(7/1.8),"0.11M, 0.38G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.8),"0.15V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/2.77)-sy/60,"Jupiter"
  GR.TEXT.DRAW txt,td1,sy/(7/2.77),"317.83M, 2.37G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/2.77),"1316.00V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/4.4)-sy/60,"Saturn"
  GR.TEXT.DRAW txt,td1,sy/(7/4.4),"96.16M, 0.95G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/4.4),"745.00V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/5.5)-sy/60,"Uranus"
  GR.TEXT.DRAW txt,td1,sy/(7/5.5),"14.50M, 0.89G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/5.5),"62.00V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/6.2)-sy/60,"Neptun"
  GR.TEXT.DRAW txt,td1,sy/(7/6.2),"17.22M, 1.19G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/6.2),"54.00V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/6.65)-sy/60,"Pluto"
  GR.TEXT.DRAW txt,td1,sy/(7/6.65),"0.002M, 0.02G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/6.65),"0.03V"
 ENDIF
 GR.RENDER
 DO
  GR.TOUCH tc,tx,ty
  GR.TOUCH2 tc2,tx2,ty2
  IF tc2: GOTO end: ENDIF
 UNTIL tc
 PAUSE 100
 sw_i03=sw_i03+1
 IF sw_i03=4 THEN sw_i03=0
UNTIL 0
END:
GR.TEXT.BOLD 0
tc2=0
PAUSE 100
! % END %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
