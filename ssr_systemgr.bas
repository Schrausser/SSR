!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
               Info Subroutine ssr_systemgr.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2023 by Dietmar Gerald Schrausser
!!
r=r_erd_km
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
 GR.CIRCLE ci, mx,-my/0.49,(r_sne_km/r)*f
 GR.COLOR 80,100,cc,0, 1                    %Merkur 
 GR.CIRCLE ci, mx,sy/7, (r_mkr_km/r)*f
 GR.COLOR 160, cc, cc, cc, 1                %Venus  
 GR.CIRCLE ci, mx,sy/(7/1.25), (r_vns_km/r)*f
 GR.COLOR 200, 0, 0, cc, 1                  %Erde
 GR.CIRCLE c2, mx, sy/(7/1.53),(r_erd_km/r)*f
 GR.COLOR 110, cc, cc, cc, 1                %Mond
 GR.CIRCLE c2, mx+mx/5,sy/(7/1.53),(r_mnd_km/r)*f
 GR.COLOR cc/1.5, cc, 150, 150, 1           %Mars
 GR.CIRCLE ci, mx, sy/(7/1.8), (r_mrs_km/r)*f
 GR.COLOR 60, cc, cc, cc, 1
 GR.CIRCLE c2, mx+mx/4, sy/(7/1.8),(800/r)*f
 GR.CIRCLE c2, mx+mx/5, sy/(7/1.8),(1000/r)*f
 GR.COLOR 85, cc-20, 170, 0, 1              %Jupiter 
 GR.CIRCLE ci, mx, sy/(7/2.77), (r_jpt_km/r)*f
 GR.COLOR 70, cc, cc, cc, 1                 %Saturn 
 GR.CIRCLE ci, mx, sy/(7/4.4),(r_stn_km/r)*f
 GR.LINE ln,mx+sx/3,sy/(7/4.4)-sy/40,mx-sx/3,sy/(7/4.4)+sy/40
 GR.COLOR 150, 120, 120, 200, 1               %Uranus
 GR.CIRCLE ci, mx,sy/(7/5.5), (r_urs_km/r)*f
 GR.COLOR 55, 50, 50, 255, 1                %Neptun
 GR.CIRCLE ci, mx,sy/(7/6.2), (r_npt_km/r)*f
 GR.COLOR 80,100,100,100, 1                 %Pluto
 GR.CIRCLE ci, mx,sy/(7/6.65), (r_plt_km/r)*f
 IF sw_i03=1
  GR.COLOR cc-55, cc/2, cc/2, cc/2, 1
  GR.TEXT.DRAW tx,20,40,"i Sonnensystem: Radius - Distanz"
  GOSUB sourceg1
  GR.LINE ln, 1,50,sx-1,50
  GR.COLOR 100,150,150,150,0
  GR.LINE ln,mx+mx/2, 0,mx+mx/2,sy/(7/1.53)
  GR.LINE ln,mx+mx/2+-mx/8, sy/(7/1.53),mx+mx/2+mx/8,sy/(7/1.53)
  GR.COLOR 200,150,150,150,1
  GR.TEXT.ALIGN 1
  GR.TEXT.SIZE txz4
  GR.TEXT.DRAW txt,td1,sy/10-sy/60,"Sonne"
  GR.TEXT.DRAW txt,td1,sy/10,INT$(r_sne_km)+"km"
  GR.TEXT.DRAW txt,td1,sy/7-sy/60,"Merkur"
  GR.TEXT.DRAW txt,td1,sy/7,INT$(r_mkr_km)+"km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/7,STR$(ROUND(d_mkr_ae,2))+"AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.25)-sy/60,"Venus"
  GR.TEXT.DRAW txt,td1,sy/(7/1.25),INT$(r_vns_km)+"km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.25),STR$(ROUND(d_vns_ae,2))+"AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.53)-sy/60,"Erde / Mond"
  GR.TEXT.DRAW txt,td1,sy/(7/1.53),INT$(r_erd_km)+"km / "+INT$(r_mnd_km)+"km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.53),"AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.8)-sy/60,"Mars"
  GR.TEXT.DRAW txt,td1,sy/(7/1.8),INT$(r_mrs_km)+"km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.8),STR$(ROUND(d_mrs_ae,2))+"AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/2.77)-sy/60,"Jupiter"
  GR.TEXT.DRAW txt,td1,sy/(7/2.77),INT$(r_jpt_km)+"km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/2.77),STR$(ROUND(d_jpt_ae,2))+"AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/4.4)-sy/60,"Saturn"
  GR.TEXT.DRAW txt,td1,sy/(7/4.4),INT$(r_stn_km)+"km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/4.4),STR$(ROUND(d_stn_ae,2))+"AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/5.5)-sy/60,"Uranus"
  GR.TEXT.DRAW txt,td1,sy/(7/5.5),INT$(r_urs_km)+"km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/5.5),STR$(ROUND(d_urs_ae,2))+"AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/6.2)-sy/60,"Neptun"
  GR.TEXT.DRAW txt,td1,sy/(7/6.2),INT$(r_npt_km)+"km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/6.2),STR$(ROUND(d_npt_ae,2))+"AE"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/6.65)-sy/60,"Pluto"
  GR.TEXT.DRAW txt,td1,sy/(7/6.65),INT$(r_plt_km)+"km"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/6.65),STR$(ROUND(d_plt_ae,2))+"AE"
 ENDIF
 IF sw_i03=2
  GR.TEXT.ALIGN 1
  GR.TEXT.SIZE txzi
  GR.COLOR cc-40, cc/2, cc/2, cc/2, 1
  GR.TEXT.DRAW tx,20,40,"i Sonnensystem: Rotation - Umlauf"
  GOSUB sourceg1
  GR.LINE ln, 1,50,sx-1,50
  GR.COLOR 100,150,150,150,0
  GR.CIRCLE ci, mx,-my/0.49,(r_sne_km/r)*f*(sx/982.711)
  GR.CIRCLE ci, mx,sy/(7/1.53),sx/30
  GR.COLOR 255,15,15,15,1
  GR.COLOR 200,150,150,150,1
  GR.TEXT.ALIGN 1
  GR.TEXT.SIZE txz4 
  GR.TEXT.DRAW txt,td1,sy/10-sy/60,"Sonne"
  GR.TEXT.DRAW txt,td1,sy/10,STR$(ROUND(rt_sne_,2))+"T"
  GR.TEXT.DRAW txt,td1,sy/7-sy/60,"Merkur"
  GR.TEXT.DRAW txt,td1,sy/7,STR$(ROUND(rt_mkr_,2))+"T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/7,STR$(ROUND(uf_mkr_j,2))+"J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.25)-sy/60,"Venus"
  GR.TEXT.DRAW txt,td1,sy/(7/1.25),STR$(ROUND(-rt_vns_,2))+"T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.25),STR$(ROUND(uf_vns_j,2))+"J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.53)-sy/60,"Mond"
  GR.TEXT.DRAW txt,td1,sy/(7/1.53),STR$(ROUND(uf_mnd_t,2))+"T"
  GR.TEXT.ALIGN 2
  GR.TEXT.DRAW txt,mx-mx/10,sy/(7/1.53),"T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.53),"J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.8)-sy/60,"Mars"
  GR.TEXT.DRAW txt,td1,sy/(7/1.8),STR$(ROUND(rt_mrs_,2))+"T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.8),STR$(ROUND(uf_mrs_j,2))+"J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/2.77)-sy/60,"Jupiter"
  GR.TEXT.DRAW txt,td1,sy/(7/2.77),STR$(ROUND(rt_jpt_,2))+"T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/2.77),STR$(ROUND(uf_jpt_j,2))+"J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/4.4)-sy/60,"Saturn"
  GR.TEXT.DRAW txt,td1,sy/(7/4.4),STR$(ROUND(rt_stn_,2))+"T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/4.4),STR$(ROUND(uf_stn_j,2))+"J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/5.5)-sy/60,"Uranus"
  GR.TEXT.DRAW txt,td1,sy/(7/5.5),STR$(ROUND(-rt_urs_,2))+"T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/5.5),STR$(ROUND(uf_urs_j,2))+"J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/6.2)-sy/60,"Neptun"
  GR.TEXT.DRAW txt,td1,sy/(7/6.2),STR$(ROUND(rt_npt_,2))+"T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/6.2),STR$(ROUND(uf_npt_j,2))+"J"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/6.65)-sy/60,"Pluto"
  GR.TEXT.DRAW txt,td1,sy/(7/6.65),STR$(ROUND(-rt_plt_,2))+"T"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/6.65),STR$(ROUND(uf_plt_j,2))+"J"
 ENDIF
 IF sw_i03=3
  GR.TEXT.ALIGN 1
  GR.TEXT.SIZE txzi
  GR.COLOR cc-40, cc/2, cc/2, cc/2, 1
  GR.TEXT.DRAW tx,20,40,"i Sonnensystem: Masse, Grav., Vol."
  GOSUB sourceg1
  GR.LINE ln, 1,50,sx-1,50
  GR.COLOR 200,150,150,150,1
  GR.TEXT.ALIGN 1
  GR.TEXT.SIZE txz4
  GR.TEXT.DRAW txt,td1,sy/10-sy/60,"Sonne"
  GR.TEXT.DRAW txt,td1,sy/10,STR$(ROUND((m_sne_kg/m_erd_kg),2))+"M, "+STR$(ROUND((g_sne_ms2/g_erd_ms2),2))+"G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/10,STR$(ROUND((v_sne_km3/v_erd_km3),2))+"V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/7-sy/60,"Merkur"
  GR.TEXT.DRAW txt,td1,sy/7,STR$(ROUND((m_mkr_kg/m_erd_kg),2))+"M, "+STR$(ROUND((g_mkr_ms2/g_erd_ms2),2))+"G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/7,STR$(ROUND((v_mkr_km3/v_erd_km3),2))+"V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.25)-sy/60,"Venus"
  GR.TEXT.DRAW txt,td1,sy/(7/1.25),"0.82M, 0.91G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.25),STR$(ROUND((v_vns_km3/v_erd_km3),2))+"V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.53)-sy/60,"Mond"
  GR.TEXT.DRAW txt,td1,sy/(7/1.53),STR$(ROUND((m_mnd_kg/m_erd_kg),2))+"M, "+STR$(ROUND((g_mnd_ms2/g_erd_ms2),2))+"G"
  GR.TEXT.ALIGN 2
  GR.TEXT.DRAW txt,mx-2,sy/(7/1.53),"M G V"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.53),STR$(ROUND((v_mnd_km3/v_erd_km3),2))+"V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/1.8)-sy/60,"Mars"
  GR.TEXT.DRAW txt,td1,sy/(7/1.8),STR$(ROUND((m_mrs_kg/m_erd_kg),2))+"M, "+STR$(ROUND((g_mrs_ms2/g_erd_ms2),2))+"G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/1.8),STR$(ROUND((v_mrs_km3/v_erd_km3),2))+"V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/2.77)-sy/60,"Jupiter"
  GR.TEXT.DRAW txt,td1,sy/(7/2.77),STR$(ROUND((m_jpt_kg/m_erd_kg),2))+"M, "+STR$(ROUND((g_jpt_ms2/g_erd_ms2),2))+"G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/2.77),STR$(ROUND((v_jpt_km3/v_erd_km3),2))+"V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/4.4)-sy/60,"Saturn"
  GR.TEXT.DRAW txt,td1,sy/(7/4.4),STR$(ROUND((m_stn_kg/m_erd_kg),2))+"M, "+STR$(ROUND((g_stn_ms2/g_erd_ms2),2))+"G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/4.4),STR$(ROUND((v_stn_km3/v_erd_km3),2))+"V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/5.5)-sy/60,"Uranus"
  GR.TEXT.DRAW txt,td1,sy/(7/5.5),STR$(ROUND((m_urs_kg/m_erd_kg),2))+"M, "+STR$(ROUND((g_urs_ms2/g_erd_ms2),2))+"G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/5.5),STR$(ROUND((v_urs_km3/v_erd_km3),2))+"V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/6.2)-sy/60,"Neptun"
  GR.TEXT.DRAW txt,td1,sy/(7/6.2),STR$(ROUND((m_npt_kg/m_erd_kg),2))+"M, "+STR$(ROUND((g_npt_ms2/g_erd_ms2),2))+"G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/6.2),STR$(ROUND((v_npt_km3/v_erd_km3),2))+"V"
  GR.TEXT.ALIGN 1
  GR.TEXT.DRAW txt,td1,sy/(7/6.65)-sy/60,"Pluto"
  GR.TEXT.DRAW txt,td1,sy/(7/6.65),STR$(ROUND((m_plt_kg/m_erd_kg),3))+"M, "+STR$(ROUND((g_plt_ms2/g_erd_ms2),3))+"G"
  GR.TEXT.ALIGN 3
  GR.TEXT.DRAW txt,sx-4,sy/(7/6.65),STR$(ROUND((v_plt_km3/v_erd_km3),3))+"V"
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
