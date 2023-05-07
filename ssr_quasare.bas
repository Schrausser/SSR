!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
                 Subroutine ssr_quasare.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2023 by Dietmar Gerald Schrausser
!!
t06=t06gq
! % Markarian 231 UGC 8085 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Markarian 231"            %Name
pro_=gq01                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 581*10^6                         %Lichtjahre Entfernung
dg_x=56:dm_x=52:ds_x=25.24          %Deklination
GOSUB dekl
h_x=12:m_x=56:s_x=14.23             %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % SDSS J1430+1339 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="SDSS J1430+1339"          %Name
pro_=gq13                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 1*10^9                           %Lichtjahre Entfernung
dg_x=13:dm_x=39:ds_x=11.8           %Deklination
GOSUB dekl
h_x=14:m_x=30:s_x=29.87             %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % 3C 273 (1962) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="3C 273"                   %Name
pro_=gq03                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 2.4*10^9                         %Lichtjahre Entfernung
dg_x=2:dm_x=3:ds_x=9                %Deklination
GOSUB dekl
h_x=12:m_x=29:s_x=6.7               %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % CID-42 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="CID-42"                   %Name
pro_=gq14                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 3.9*10^9                         %Lichtjahre Entfernung
dg_x=2:dm_x=6:ds_x=37.4             %Deklination
GOSUB dekl
h_x=10:m_x=0:s_x=43.13              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % 3C 48 (1963) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="3C 48"                    %Name
pro_=gq04                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 4*10^9                           %Lichtjahre Entfernung
dg_x=33:dm_x=9:ds_x=32              %Deklination
GOSUB dekl
h_x=1:m_x=37:s_x=41.1               %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % 3C 47 (1964) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="3C 47"                    %Name
pro_=gq20                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 4.3*10^9                         %Lichtjahre Entfernung
dg_x=20:dm_x=57:ds_x=27.5           %Deklination
GOSUB dekl
h_x=1:m_x=36:s_x=24.42              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
!% 3C 279 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="3C 279"                   %Name
pro_=gq15                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 5*10^9                           %Lichtjahre Entfernung
dg_x=-5:dm_x=47:ds_x=22             %Deklination
GOSUB dekl
h_x=12:m_x=56:s_x=11.1              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % 3C 147 (1964) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="3C 147"                   %Name
pro_=gq05                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 5.1*10^9                         %Lichtjahre Entfernung
dg_x=49:dm_x=51:ds_x=7.23           %Deklination
GOSUB dekl
h_x=5:m_x=42:s_x=36.14              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % CTA-102 (1965) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="CTA-102"                  %Name
pro_=gq06                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 8*10^9                           %Lichtjahre Entfernung
dg_x=11:dm_x=43:ds_x=51             %Deklination
GOSUB dekl
h_x=22:m_x=32:s_x=36.4              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
!% Q2237+030 The Einstein Cross %%%%%%%%%%%%%%%%%%%%%%%%%
objname$="The Einstein Cross"       %Name
pro_=gq16                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 8*10^9                           %Lichtjahre Entfernung
dg_x=3:dm_x=21:ds_x=31              %Deklination
GOSUB dekl
h_x=22:m_x=40:s_x=30.3              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % QSO 0957+561 Twin Quasar %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="QSO 0957+561"             %Name
pro_=gq07                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 8.7*10^9                         %Lichtjahre Entfernung
dg_x=55:dm_x=53:ds_x=56.5           %Deklination
GOSUB dekl
h_x=10:m_x=01:s_x=20.99             %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % Huge-LQG U1.27 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Huge-LQG"                 %Name
pro_=gq09                           %Projektionsvariable
rds=1.5*10^9                        %Objektradius Lj
d= 9*10^9                           %Lichtjahre Entfernung
dg_x=15:dm_x=0:ds_x=0               %Deklination
GOSUB dekl
h_x=165:m_x=0:s_x=0                 %Rekta Position
GOSUB r_pos
GR.COLOR cc/20,cc/3,cc,cc/2,1
GOSUB objdarst
! % 3C 9 (1965) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="3C 9"                     %Name
pro_=gq08                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 10*10^9                          %Lichtjahre Entfernung
dg_x=15:dm_x=40:ds_x=54.7           %Deklination
GOSUB dekl
h_x=0:m_x=20:s_x=25.22              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % TON 618 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="TON 618"                  %Name
pro_=gq17                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 10.8*10^9                        %Lichtjahre Entfernung
dg_x=31:dm_x=28:ds_x=38             %Deklination
GOSUB dekl
h_x=12:m_x=28:s_x=24.9              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % H1413+117 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="H1413+117"                %Name
pro_=gq18                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 11*10^9                          %Lichtjahre Entfernung
dg_x=11:dm_x=29:ds_x=43.4           %Deklination
GOSUB dekl
h_x=14:m_x=15:s_x=46.27             %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
!% APM 08279+5255 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="APM 08279+5255"           %Name
pro_=gq19                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 23.6*10^9                        %Lichtjahre Entfernung
dg_x=52:dm_x=45:ds_x=16.8           %Deklination
GOSUB dekl
h_x=8:m_x=31:s_x=41.7               %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % QSO J0313-1806 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="QSO J0313-1806"           %Name
pro_=gq02                           %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= 30*10^9                          %Lichtjahre Entfernung
dg_x=-18:dm_x=6:ds_x=36.4           %Deklination
GOSUB dekl
h_x=3:m_x=13:s_x=43.84              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
!!
! % Neue Quasare hier einfügen %%%%%%%%%%%%%%%%%%%%%%%%%%%
! % ___ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="_"                        %Name
pro_=gq___                          %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= ____                             %Lichtjahre Entfernung
dg_x=__:dm_x=__:ds_x=__             %Deklination
GOSUB dekl
h_x=__:m_x=__:s_x=__                %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc/3,cc,cc/2,1
otype=-1:GOSUB objdarst:otype=0
!!
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
