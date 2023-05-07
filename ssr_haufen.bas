!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
                 Subroutine  ssr_haufen.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2023 by Dietmar Gerald Schrausser
!!
t06=t06gh
ch0=20                              %Superhaufen Stil
! % Virgo Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Virgo"                    %Name
pro_=gh01                           %Projektionsvariable
rds=9500000                         %Objektradius
d=53.8*10^6                         %Lichtjahre
dg_x=12:dm_x=43:ds_x=0              %Deklination
GOSUB dekl
h_x=12:m_x=27:s_x=0                 %Rekta Position
GOSUB r_pos
GR.COLOR cc/9,cc,cc,cc,0
GOSUB objdarst:otype=0
! % Fornax Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Fornax"                   %Name
pro_=gh03                           %Projektionsvariable
rds=(5*10^6)                        %Objektradius Lj 5°
d= 62*10^6                          %Lichtjahre Entfernung
dg_x=-35:dm_x=27:ds_x=0             %Deklination
GOSUB dekl
h_x=3:m_x=38:s_x=0                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/15,cc,cc,cc,1
GOSUB objdarst:otype=0
! % Eridanus (FornaxII) Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Eridanus"                 %Name
pro_=gh04                           %Projektionsvariable
rds=(16*10^6)                       %Objektradius Lj 10°
d= 75*10^6                          %Lichtjahre Entfernung
dg_x=-20:dm_x=44:ds_x=40            %Deklination
GOSUB dekl
h_x=3:m_x=28:s_x=13.8               %Rekta Position
GOSUB r_pos
GR.COLOR cc/15,cc,cc,cc,1
GOSUB objdarst:otype=0
! % Antila Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Antila"                   %Name
pro_=gh06                           %Projektionsvariable
rds=(1*10^6)                        %Objektradius Lj 
d= 132.7*10^6                       %Lichtjahre Entfernung
dg_x=-35:dm_x=19:ds_x=24            %Deklination
GOSUB dekl
h_x=10:m_x=30:s_x=3.5               %Rekta Position
GOSUB r_pos
GR.COLOR cc/15,cc,cc,cc,1
GOSUB objdarst:otype=0
!% Hydra Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Hydra"                    %Name
pro_=gh09                           %Projektionsvariable
rds=5*10^6                          %Objektradius Lj 
d= 190.1*10^6                       %Lichtjahre Entfernung
dg_x=-12:dm_x=5:ds_x=0              %Deklination
GOSUB dekl
h_x=9:m_x=18:s_x=0                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/15,cc,cc,cc,1
GOSUB objdarst:otype=0
! % Norma Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Norma"                    %Name
pro_=gh02                           %Projektionsvariable
rds=(2*10^6)*3.26                   %Objektradius Lj 1.75°
d= 221*10^6                         %Lichtjahre Entfernung
dg_x=-60:dm_x=54:ds_x=30            %Deklination
GOSUB dekl
h_x=16:m_x=15:s_x=32.8              %Rekta Position
GOSUB r_pos
GR.COLOR cc/15,cc,cc,cc,1
GOSUB objdarst:otype=0
! % Perseus-Pisces Super Haufen %%%%%%%%%%%%%%%%%%%%%%%
objname$="Perseus-Pisces Super Haufen"   %Name
pro_=gh10                           %Projektionsvariable
rds=(150*10^6)                      %Objektradius Lj 
d= 250*10^6                         %Lichtjahre Entfernung
dg_x=-36:dm_x=0:ds_x=0              %Deklination
GOSUB dekl
h_x=1:m_x=50:s_x=0                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/ch0,cc,cc,cc,1
GOSUB objdarst:otype=0
! % Laniakea Super Haufen, Grosser Attraktor %%%%%%%%%%%%%
objname$="Großer Attraktor"         %Name
pro_=gh07                           %Projektionsvariable
rds=(260*10^6)                      %Objektradius Lj 
d= 250*10^6                         %Lichtjahre Entfernung
dg_x=-46:dm_x=0:ds_x=0              %Deklination
GOSUB dekl
h_x=10:m_x=32:s_x=0                 %Rekta Position
GOSUB r_pos
GR.COLOR cc/ch0,cc,cc,cc,1
GOSUB objdarst:otype=0
!% Coma Super Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Coma Super Haufen"        %Name
pro_=gh11                           %Projektionsvariable
rds=(10*10^6)                       %Objektradius Lj 
d= 300*10^6                         %Lichtjahre Entfernung
dg_x=23:dm_x=55:ds_x=23             %Deklination
GOSUB dekl
h_x=12:m_x=24:s_x=6.8               %Rekta Position
GOSUB r_pos
GR.COLOR cc/ch0,cc,cc,cc,1
GOSUB objdarst:otype=0
! % Coma Haufen, Grosse Wand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Coma"                     %Name
pro_=gh05                           %Projektionsvariable
rds=(10*10^6)                       %Objektradius Lj 5°
d= 336*10^6                         %Lichtjahre Entfernung
dg_x=27:dm_x=58:ds_x=50             %Deklination
GOSUB dekl
h_x=12:m_x=59:s_x=48.7              %Rekta Position
GOSUB r_pos
GR.COLOR cc/15,cc,cc,cc,1
GOSUB objdarst:otype=0
!% Ophiuchus Super Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Ophiuchus Super Haufen"   %Name
pro_=gh12                           %Projektionsvariable
rds=(50*10^6)                       %Objektradius Lj 
d= 370*10^6                         %Lichtjahre Entfernung
dg_x=-22:dm_x=0:ds_x=0              %Deklination
GOSUB dekl
h_x=17:m_x=10:s_x=0                 %Rekta Position
GOSUB r_pos
GR.COLOR cc/ch0,cc,cc,cc,1
GOSUB objdarst:otype=0
!% Leo Super Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Leo Super Haufen"         %Name
pro_=gh13                           %Projektionsvariable
rds=(65*10^6)                       %Objektradius Lj 
d= 440*10^6                         %Lichtjahre Entfernung
dg_x=28:dm_x=42:ds_x=22             %Deklination
GOSUB dekl
h_x=11:m_x=10:s_x=47                %Rekta Position
GOSUB r_pos
GR.COLOR cc/ch0,cc,cc,cc,1
GOSUB objdarst:otype=0
!% Herkules Super Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Herkules Super Haufen"    %Name
pro_=gh14                           %Projektionsvariable
rds=(165*10^6)                      %Objektradius Lj 
d= 441*10^6                         %Lichtjahre Entfernung
dg_x=-18:dm_x=20:ds_x=47            %Deklination
GOSUB dekl
h_x=15:m_x=47:s_x=3.2               %Rekta Position
GOSUB r_pos
GR.COLOR cc/ch0,cc,cc,cc,1
GOSUB objdarst:otype=0
!% Shapley Super Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Shapley Super Haufen"     %Name
pro_=gh15                           %Projektionsvariable
rds=(165*10^6)                      %Objektradius Lj 
d= 650*10^6                         %Lichtjahre Entfernung
dg_x=-33:dm_x=4:ds_x=3              %Deklination
GOSUB dekl
h_x=13:m_x=5:s_x=57.8               %Rekta Position
GOSUB r_pos
GR.COLOR cc/ch0,cc,cc,cc,1
GOSUB objdarst:otype=0
! % Geschoss Haufen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Geschoss"                 %Name
pro_=gh08                           %Projektionsvariable
rds=(3*10^6)*3.26                   %Objektradius Lj
d= 3.4*10^9                         %Lichtjahre Entfernung
dg_x=-55:dm_x=57:ds_x=37.9          %Deklination
GOSUB dekl
h_x=6:m_x=58:s_x=37.9               %Rekta Position
GOSUB r_pos
GR.COLOR cc/15,cc,cc,cc,1
GOSUB objdarst:otype=0
! % CL J1001+0220 am weitesten entfernter Cluster %%%%%%%%
GR.COLOR cc/9,cc,cc,cc,0
GR.CIRCLE cl,mx,my,ed*(11.1*1.45)*10^9*Lj_
!!
! % Neue Galaxienhaufen hier einfügen %%%%%%%%%%%%%%%%%%%%
! % ___ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M_"                       %Name
pro_=t__                            %Projektionsvariable
rds=__                              %Objektradius Lj
d= ____                             %Lichtjahre Entfernung
dg_x=__:dm_x=__:ds_x=__             %Deklination
GOSUB dekl
h_x=__:m_x=__:s_x=__                %Rekta Position
GOSUB r_pos
GR.COLOR cc/7,cc,cc,cc,0
GOSUB objdarst
!!
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
