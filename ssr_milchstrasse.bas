!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
               Subroutine ssr_milchstrasse.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
             © 2023 by Dietmar Gerald Schrausser
!!
t06=t06gm
vgr=vgr_gm
! % Milchstraßensystem %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dz= 26438                           %Zentrum Entfernung Lj
gm_d01=dz/pcl_
IF ae/Lj_>=300
 ! % Darstellung %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 d=200000*Lj_                       %Lichtjahre in AE
 GR.ROTATE.START -50,mx,my 
 IF ae/Lj_>=300  THEN GR.COLOR 6,cc,cc,cc,1
 IF ae/Lj_>=1500 THEN GR.COLOR cc/22,cc,cc,cc,1
 IF ae/Lj_>=6000 THEN GR.COLOR cc/14,cc,cc,cc,1
 GR.OVAL ovl,mx-ed*d/1.85,my-ed*d/2.1,mx+ed*d/3.4,my+ed*d/4
 GR.ROTATE.END
 IF t06=1 & ae<200*d                %Text
  GR.COLOR cc/5,cc,cc,cc,1
  GR.TEXT.ALIGN 2
  GR.TEXT.SIZE txz1                 %11
  GR.TEXT.DRAW txt,(mx+mx/10)-(ed*d)/15,my-ed*(d+c10)/4,"Milchstrasse"
 ENDIF
 ! % Zentrum %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 objname$=""                        %Name
 pro_=gm06                          %Projektionsvariable
 rds=15000                          %Objektradius Lj
 d= dz                              %Lichtjahre Entfernung
 dg_x=-29:dm_x=0:ds_x=28            %Deklination
 GOSUB dekl
 h_x=17:m_x=45:s_x=40               %Rekta Position
 GOSUB r_pos
 GR.COLOR cc/15,cc,cc,cc,1
 GOSUB objdarst
ENDIF
! %Sagittarius Wolke (Delle Caustiche) M24 %%%%%%%%%%%%%%
objname$="M24"                      %Name
pro_=gm05                           %Projektionsvariable
rds=150                             %Objektradius Lj
d= 12500                            %Lichtjahre Entfernung
gm_d02=d/pcl_
dg_x=-18:dm_x=26:ds_x=0             %Deklination
GOSUB dekl
h_x=18:m_x=18.4:s_x=0               %Rekta Position
GOSUB r_pos
GR.COLOR cc/12,cc,cc,cc,1
GOSUB objdarst
! % Sag DEG %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Sag DEG"                  %Name
pro_=gm01                           %Projektionsvariable
rds=5000                            %Objektradius Lj
d= 72000                            %Lichtjahre Entfernung
gm_d03=d/pcl_
dg_x=-30:dm_x=32:ds_x=43            %Deklination
GOSUB dekl
h_x=18:m_x=55:s_x=19.5              %Rekta Position
GOSUB r_pos
GR.COLOR cc/12,cc,cc,cc,1
GOSUB objdarst
! % M54 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M54"                      %Name
pro_=gm02                           %Projektionsvariable
rds=153                             %Objektradius Lj
d= 87400                            %Lichtjahre Entfernung
gm_d04=d/pcl_
dg_x=-30:dm_x=28:ds_x=47.5          %Deklination
GOSUB dekl
h_x=18:m_x=55:s_x=3.33              %Rekta Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! %  Kleine Wolke NGC 292 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Kleine Wolke"             %Name
pro_=gm04                           %Projektionsvariable
rds=10100/2                         %Objektradius Lj
d= 209000                           %Lichtjahre Entfernung
gm_d05=d/pcl_
dg_x=-73:dm_x=6:ds_x=0              %Deklination
GOSUB dekl
h_x=0:m_x=51:s_x=0                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/9,cc,cc,cc,1
GOSUB objdarst
! %  Große Wolke ESO 56-115 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Große Wolke"              %Name
pro_=gm03                           %Projektionsvariable
rds=25100/2                         %Objektradius Lj
d= 162980                           %Lichtjahre Entfernung
gm_d06=d/pcl_
dg_x=-69:dm_x=48:ds_x=0             %Deklination
GOSUB dekl
h_x=5:m_x=24:s_x=0                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/9,cc,cc,cc,1
GOSUB objdarst
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
vgr=1
!!
! % Neue Milchstrassenobjekte hier einfügen %%%%%%%%%%%%%%
! % ___ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="_"                        %Name
pro_=t__                            %Projektionsvariable
rds=__                              %Objektradius Lj
d= ____                             %Lichtjahre Entfernung
gm_d__=d/pcl_
dg_x=__:dm_x=__:ds_x=__             %Deklination
GOSUB dekl
h_x=__:m_x=__:s_x=__                %Rekta Position
GOSUB r_pos
GR.COLOR cc/7,cc,cc,cc,0
GOSUB objdarst
!!
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
