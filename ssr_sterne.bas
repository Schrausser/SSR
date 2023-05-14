!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
                 Subroutine  ssr_sterne.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2023 by Dietmar Gerald Schrausser
!!
t06=t06s
! % Alpha Centauri A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$=CHR$(945)+" Centauri"       %Name
pro_=t01                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d=4.367                              %Lichtjahre
s_d01=d/pcl_
dg_x=-60:dm_x=50:ds_x=2.37           %Deklination
GOSUB dekl
h_x=14:m_x=39:s_x=36.494             %Position
GOSUB r_pos
GR.ROTATE.START pos, mx,my
GR.COLOR cc-200,cc,cc/2,cc/2,0
GR.CIRCLE cl,mx-ed*d,my-ed*d,ed*(Lj_*0.22)
GR.ROTATE.END
GR.COLOR cc-100,cc,cc,cc,1 
otype=-1:GOSUB objdarst:otype=0
! % Barnards Stern %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Barnards Stern"            %Name
pro_=t82                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=5.97
s_d02=d/pcl_
dg_x=4:dm_x=41:ds_x=36.11            %Deklination
GOSUB dekl
h_x=17:m_x=57:s_x=48.5               %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc/2,cc/2,1       %Größe 1
!GR.COLOR cc-80,cc,cc/2,cc/2,1       %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Sirius %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Sirius"                    %Name
pro_=t05                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d= 8.611
s_d03=d/pcl_
dg_x=-16:dm_x=42:ds_x=58.02          %Deklination
GOSUB dekl
h_x=6:m_x=45:s_x=8.9                 %Position
GOSUB r_pos                          %Zwilling
GR.COLOR cc-35,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Procyon %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Procyon"                   %Name
pro_=t35                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=11.5
s_d04=d/pcl_
dg_x=5:dm_x=13:ds_x=30               %Deklination
GOSUB dekl
h_x=7:m_x=39:s_x=18.1                %Position
GOSUB r_pos                          %
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Altair %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Altair"                    %Name
pro_=t08                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d= 16.73
s_d05=d/pcl_
dg_x=8:dm_x=52:ds_x=5.9              %Deklination
GOSUB dekl
h_x=19:m_x=50:s_x=47                 %Position
GOSUB r_pos
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Vega %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Vega"                      %Name
pro_=t12                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d= 25.04                             %Lichtjahre 
s_d06=d/pcl_
dg_x=38:dm_x=47:ds_x=1.28            %Deklination
GOSUB dekl
h_x=18:m_x=36:s_x=56.34              %Position
GOSUB r_pos                          %Position Schütze
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Fomalhaut %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Fomalhaut"                 %Name
pro_=t36                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=25.13
s_d07=d/pcl_
dg_x=-29:dm_x=37:ds_x=20             %Deklination
GOSUB dekl
h_x=22:m_x=57:s_x=39                 %Position
GOSUB r_pos                          %
GR.COLOR cc-80,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Pollux %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Pollux"                    %Name
pro_=t09                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d=33.8                               %Lichtjahre 
s_d08=d/pcl_
dg_x=28:dm_x=1:ds_x=34.32            %Deklination
GOSUB dekl
h_x=7:m_x=45:s_x=18.9                %Position
GOSUB r_pos                 
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Denebola %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Denebola"                  %Name
pro_=t38                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=35.9
s_d09=d/pcl_
dg_x=14:dm_x=34:ds_x=19.4            %Deklination
GOSUB dekl
h_x=11:m_x=49:s_x=3.6                %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Arkturus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Arkturus"                  %Name
pro_=t03                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d=36.7                               %Lichtjahre
s_d10=d/pcl_
dg_x=19:dm_x=10:ds_x=56              %Deklination
GOSUB dekl
h_x=14:m_x=15:s_x=39.7               %Position
GOSUB r_pos
GR.COLOR cc-80,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Rasalhague %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Rasalhague"                %Name
pro_=t12                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d= 42.6                              %Lichtjahre 
s_d11=d/pcl_
dg_x=12:dm_x=33:ds_x=36.13           %Deklination
GOSUB dekl
h_x=17:m_x=33:s_x=56.07              %Position
GOSUB r_pos
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Capella %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Capella"                   %Name
pro_=t05                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d= 42.92
s_d12=d/pcl_
dg_x=45:dm_x=59:ds_x=52.77           %Deklination
GOSUB dekl
h_x=5:m_x=16:s_x=41.36               %Position
GOSUB r_pos                          %Zwilling -Stier
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Alderamin %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Alderamin"                 %Name
pro_=t33                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d= 49                                %Lichtjahre 
s_d13=d/pcl_
dg_x=62:dm_x=35:ds_x=8.1             %Deklination
GOSUB dekl
h_x=21:m_x=18:s_x=34.77              %Position
GOSUB r_pos
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Castor A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Castor"                    %Name
pro_=t10                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d= 50.88
s_d14=d/pcl_
dg_x=31:dm_x=53:ds_x=17.8            %Deklination
GOSUB dekl
h_x=7:m_x=34:s_x=35.9                %Position
GOSUB r_pos                          %Krebs - Zwilling
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Caph %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Caph"                      %Name
pro_=t83                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=54.7
s_d15=d/pcl_
dg_x=59:dm_x=8:ds_x=59               %Deklination
GOSUB dekl
h_x=0:m_x=9:s_x=10.7                 %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Aldebaran  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Aldebaran"                 %Name
pro_=t02                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d=65.23                              %Lichtjahre
s_d16=d/pcl_
dg_x=16:dm_x=30:ds_x=33.49           %Deklination
GOSUB dekl
h_x=4:m_x=35:s_x=55.23907            %Position
GOSUB r_pos
GR.COLOR cc,cc,cc/2,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % Hamal %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Hamal"                     %Name
pro_=t84                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=65.8
s_d17=d/pcl_
dg_x=23:dm_x=27:ds_x=44.7            %Deklination
GOSUB dekl
h_x=2:m_x=7:s_x=10.4                 %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Unuk %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Unuk"                      %Name
pro_=t85                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=74
s_d18=d/pcl_
dg_x=6:dm_x=25:ds_x=32               %Deklination
GOSUB dekl
h_x=15:m_x=44:s_x=16                 %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Alphecca %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Alphecca"                  %Name
pro_=t86                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=75
s_d19=d/pcl_
dg_x=26:dm_x=42:ds_x=52.9            %Deklination
GOSUB dekl
h_x=15:m_x=34:s_x=41.3               %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Regulus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Regulus"                   %Name
pro_=t13                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d= 79.3                              %Lichtjahre 
s_d20=d/pcl_
dg_x=11:dm_x=58:ds_x=1.95            %Deklination
GOSUB dekl
h_x=10:m_x=8:s_x=22.311              %Position
GOSUB r_pos
GR.COLOR cc-120,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Merak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Merak"                     %Name
pro_=t87                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=79.7
s_d21=d/pcl_
dg_x=56:dm_x=22:ds_x=56.7            %Deklination
GOSUB dekl
h_x=11:m_x=1:s_x=50.5                %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Ankaa %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Ankaa"                     %Name
pro_=t88                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=82
s_d22=d/pcl_
dg_x=-42:dm_x=18:ds_x=21.5           %Deklination
GOSUB dekl
h_x=0:m_x=26:s_x=17                  %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Alioth %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Alioth"                    %Name
pro_=t89                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=82.6
s_d23=d/pcl_
dg_x=55:dm_x=57:ds_x=35.36           %Deklination
GOSUB dekl
h_x=12:m_x=54:s_x=1.75               %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Phecda (Phad) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Phecda"                    %Name
pro_=t90                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=83.2
s_d24=d/pcl_
dg_x=53:dm_x=41:ds_x=41.1            %Deklination
GOSUB dekl
h_x=11:m_x=53:s_x=49.8               %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Gacrux %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Gacrux"                    %Name
pro_=t91                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=87
s_d25=d/pcl_
dg_x=-57:dm_x=6:ds_x=47.568          %Deklination
GOSUB dekl
h_x=12:m_x=31:s_x=9.96               %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
GR.COLOR cc,cc,cc/2,cc/2,1           %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Algol %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Algol"                     %Name
pro_=t14                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d= 92.95
s_d26=d/pcl_
dg_x=40:dm_x=57:ds_x=20.33           %Deklination
GOSUB dekl
h_x=3:m_x=8:s_x=10.13                %Position
GOSUB r_pos
GR.COLOR cc-35,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Alpheratz %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Alpheratz"                 %Name
pro_=t92                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=97
s_d27=d/pcl_
dg_x=29:dm_x=5:ds_x=25.6             %Deklination
GOSUB dekl
h_x=0:m_x=8:s_x=23.3                 %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Alnair %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Alnair"                    %Name
pro_=t93                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=101
s_d28=d/pcl_
dg_x=-46:dm_x=57:ds_x=39.5           %Deklination
GOSUB dekl
h_x=22:m_x=8:s_x=14                  %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Alhena %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Alhena"                    %Name
pro_=t94                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=109
s_d29=d/pcl_
dg_x=16:dm_x=23:ds_x=57.4            %Deklination
GOSUB dekl
h_x=6:m_x=37:s_x=42.7                %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Vindemiatrix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Vindemiatrix"              %Name
pro_=t95                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=110
s_d30=d/pcl_
dg_x=10:dm_x=57:ds_x=33              %Deklination
GOSUB dekl
h_x=13:m_x=2:s_x=10.6                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Dubhe %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Dubhe"                     %Name
pro_=t96                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=123
s_d31=d/pcl_
dg_x=11:dm_x=3:ds_x=43.7             %Deklination
GOSUB dekl
h_x=12:m_x=54:s_x=3.7                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Algieba %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Algieba"                   %Name
pro_=t97                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=130
s_d32=d/pcl_
dg_x=19:dm_x=50:ds_x=29.35           %Deklination
GOSUB dekl
h_x=10:m_x=19:s_x=58.3               %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Kochab %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Kochab"                    %Name
pro_=t100                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=130.9
s_d33=d/pcl_
dg_x=74:dm_x=9:ds_x=19.8             %Deklination
GOSUB dekl
h_x=14:m_x=50:s_x=42.3               %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Markab %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Markab"                    %Name
pro_=t101                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=133
s_d34=d/pcl_
dg_x=15:dm_x=12:ds_x=19              %Deklination
GOSUB dekl
h_x=23:m_x=4:s_x=45.7                %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Elnath %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Elnath"                    %Name
pro_=t102                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=134
s_d35=d/pcl_
dg_x=28:dm_x=36:ds_x=26.8            %Deklination
GOSUB dekl
h_x=5:m_x=26:s_x=17.5                %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Achernar %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Achernar"                  %Name
pro_=t103                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=139
s_d36=d/pcl_
dg_x=-57:dm_x=14:ds_x=12.3           %Deklination
GOSUB dekl
h_x=1:m_x=37:s_x=42.8                %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Kaus Australis %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Kaus Australis"            %Name
pro_=t104                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=143
s_d37=d/pcl_
dg_x=-34:dm_x=23:ds_x=4.6            %Deklination
GOSUB dekl
h_x=18:m_x=24:s_x=10.3               %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Eltanin (Etamin) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Eltanin"                   %Name
pro_=t105                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=154
s_d38=d/pcl_
dg_x=51:dm_x=29:ds_x=20              %Deklination
GOSUB dekl
h_x=17:m_x=56:s_x=36.4               %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Alphard %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Alphard"                   %Name
pro_=t106                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=177
s_d39=d/pcl_
dg_x=-8:dm_x=39:ds_x=30.7            %Deklination
GOSUB dekl
h_x=9:m_x=27:s_x=35.2                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Scheat %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Scheat"                    %Name
pro_=t107                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=196
s_d40=d/pcl_
dg_x=28:dm_x=4:ds_x=58               %Deklination
GOSUB dekl
h_x=23:m_x=3:s_x=46.5                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
GR.COLOR cc,cc,cc/2,cc/2,1           %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Mirach %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Mirach"                    %Name
pro_=t108                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=197
s_d41=d/pcl_
dg_x=35:dm_x=37:ds_x=14              %Deklination
GOSUB dekl
h_x=1:m_x=9:s_x=43.9                 %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
GR.COLOR cc-35,cc,cc,cc,1            %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Nunki %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Nunki"                     %Name
pro_=t109                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=228
s_d42=d/pcl_
dg_x=-26:dm_x=17:ds_x=48.2           %Deklination
GOSUB dekl
h_x=18:m_x=55:s_x=15.9               %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Schedar %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Schedar"                   %Name
pro_=t110                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=228
s_d43=d/pcl_
dg_x=56:dm_x=32:ds_x=14.4            %Deklination
GOSUB dekl
h_x=0:m_x=40:s_x=30.4                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Izar %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Izar"                      %Name
pro_=t111                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=236
s_d44=d/pcl_
dg_x=27:dm_x=4:ds_x=27.2             %Deklination
GOSUB dekl
h_x=14:m_x=44:s_x=59.2               %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Menkar %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Menkar"                    %Name
pro_=t112                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=249
s_d45=d/pcl_
dg_x=4:dm_x=5:ds_x=23                %Deklination
GOSUB dekl
h_x=3:m_x=2:s_x=16.8                 %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
GR.COLOR cc-35,cc,cc,cc,1            %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Bellatrix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Bellatrix"                 %Name
pro_=t113                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=250
s_d46=d/pcl_
dg_x=6:dm_x=20:ds_x=58.9             %Deklination
GOSUB dekl
h_x=5:m_x=25:s_x=7.86                %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Spica %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Spica"                     %Name
pro_=t32                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d= 271
s_d47=d/pcl_
dg_x=-11:dm_x=9:ds_x=40.75           %Deklination
GOSUB dekl
h_x=13:m_x=25:s_x=11.58              %Position
GOSUB r_pos
GR.COLOR cc-35,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Deneb Kaitos %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Deneb Kaitos"              %Name
pro_=t114                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=275
s_d48=d/pcl_
dg_x=-8:dm_x=49:ds_x=26              %Deklination
GOSUB dekl
h_x=0:m_x=19:s_x=25.7                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Canopus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Canopus"                   %Name
pro_=t115                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=310
s_d49=d/pcl_
dg_x=-52:dm_x=41:ds_x=44.4           %Deklination
GOSUB dekl
h_x=6:m_x=23:s_x=57.1                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Acrux %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Acrux"                     %Name
pro_=t116                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=320
s_d50=d/pcl_
dg_x=-63:dm_x=5:ds_x=56.73           %Deklination
GOSUB dekl
h_x=12:m_x=26:s_x=35.9               %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Hadar %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Hadar"                     %Name
pro_=t117                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=320
s_d51=d/pcl_
dg_x=-60:dm_x=22:ds_x=23             %Deklination
GOSUB dekl
h_x=14:m_x=3:s_x=49.4                %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Polaris %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Polaris"                   %Name
pro_=t118                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=400
s_d52=d/pcl_
dg_x=89:dm_x=15:ds_x=50.8            %Deklination
GOSUB dekl
h_x=2:m_x=31:s_x=49.1                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Mira %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Mira"                      %Name
pro_=t15                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d= 424
s_d53=d/pcl_
dg_x=-2:dm_x=58:ds_x=39.5            %Deklination
GOSUB dekl
h_x=2:m_x=19:s_x=20.79               %Position
GOSUB r_pos                          %Fisch-Widder
GR.COLOR cc,cc,cc/2,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % Adhara %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Adhara"                    %Name
pro_=t119                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=430
s_d54=d/pcl_
dg_x=-28:dm_x=58:ds_x=19             %Deklination
GOSUB dekl
h_x=6:m_x=58:s_x=37.6                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Algenib %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Algenib"                   %Name
pro_=t120                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=470
s_d55=d/pcl_
dg_x=15:dm_x=11:ds_x=0.9             %Deklination
GOSUB dekl
h_x=0:m_x=13:s_x=14.2                %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Mirfak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Mirfak"                    %Name
pro_=t121                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=510
s_d56=d/pcl_
dg_x=49:dm_x=51:ds_x=40.2            %Deklination
GOSUB dekl
h_x=3:m_x=24:s_x=19.4                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Beteigeuze %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Beteigeuze"                %Name
pro_=t18                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d= 548                               %Lichtjahre 
s_d57=d/pcl_
dg_x=7:dm_x=24:ds_x=25.43            %Deklination
GOSUB dekl
h_x=5:m_x=55:s_x=10.3                %Position
GOSUB r_pos                          %Position Stier
GR.COLOR cc,cc,cc/2,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % Antares %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Antares"                   %Name
pro_=t17                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d= 554.5
s_d58=d/pcl_
dg_x=-26:dm_x=25:ds_x=55.21          %Deklination
GOSUB dekl
h_x=16:m_x=29:s_x=24.46              %Position
GOSUB r_pos
GR.COLOR cc,cc,cc/2,cc/2,1
otype=-1:GOSUB objdarst:otype=0
! % Shaula %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Shaula"                    %Name
pro_=t122                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=570
s_d59=d/pcl_
dg_x=-37:dm_x=6:ds_x=13.76           %Deklination
GOSUB dekl
h_x=17:m_x=33:s_x=36.5               %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Saiph %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Saiph"                     %Name
pro_=t123                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=650
s_d60=d/pcl_
dg_x=-9:dm_x=40:ds_x=10.6            %Deklination
GOSUB dekl
h_x=5:m_x=47:s_x=45.4                %Position
GOSUB r_pos                          %
GR.COLOR cc-100,cc,cc,cc,1           %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Enif %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Enif"                      %Name
pro_=t124                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=690
s_d61=d/pcl_
dg_x=9:dm_x=52:ds_x=30               %Deklination
GOSUB dekl
h_x=21:m_x=44:s_x=11.1               %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
GR.COLOR cc,cc,cc/2,cc/2,1           %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Rigel %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Rigel"                     %Name
pro_=t19                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d= 863                               %Lichtjahre 
s_d62=d/pcl_
dg_x=-8:dm_x=12:ds_x=5.9             %Deklination
GOSUB dekl
h_x=5:m_x=14:s_x=32.27               %Position
GOSUB r_pos                          %Position Stier
GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1
otype=-1:GOSUB objdarst:otype=0
! % Mintaka %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Mintaka"                   %Name
pro_=t125                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=1200
s_d63=d/pcl_
dg_x=0:dm_x=-17:ds_x=56.74           %Deklination
GOSUB dekl
h_x=5:m_x=32:s_x=0.4                 %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Alnitak %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Alnitak"                   %Name
pro_=t126                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=1260
s_d64=d/pcl_
dg_x=-1:dm_x=56:ds_x=34.26           %Deklination
GOSUB dekl
h_x=5:m_x=40:s_x=45.5                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Alnilam %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Alnilam"                   %Name
pro_=t127                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=2000
s_d65=d/pcl_
dg_x=-1:dm_x=12:ds_x=6.9             %Deklination
GOSUB dekl
h_x=5:m_x=36:s_x=12.8                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Arneb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Arneb"                     %Name
pro_=t128                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=2200
s_d66=d/pcl_
dg_x=-17:dm_x=49:ds_x=20.2           %Deklination
GOSUB dekl
h_x=5:m_x=32:s_x=43.8                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
GR.COLOR cc-80,cc,cc,cc,1            %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
!GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % Deneb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Deneb"                     %Name
pro_=t20                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d= 2616 %Lichtjahre 
s_d67=d/pcl_
dg_x=45:dm_x=16:ds_x=49              %Deklination
GOSUB dekl
h_x=20:m_x=41:s_x=25.9               %Position
GOSUB r_pos
GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1
otype=-1:GOSUB objdarst:otype=0
! % RSGC2-01 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="RSGC2-01"                  %Name
pro_=t129                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=18900
s_d68=d/pcl_
dg_x=18:dm_x=39:ds_x=2.4             %Deklination
GOSUB dekl
h_x=-6:m_x=5:s_x=10.5                %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
GR.COLOR cc,cc,cc/2,cc/2,1           %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
! % RSGC-F01 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="RSGC-F01"                  %Name
pro_=t130                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj 
d=22000
s_d69=d/pcl_
dg_x=18:dm_x=37:ds_x=56.31           %Deklination
GOSUB dekl
h_x=-6:m_x=52:s_x=32.2               %Position
GOSUB r_pos                          %
!GR.COLOR cc-100,cc,cc,cc,1          %Größe 1
!GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
!GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
GR.COLOR cc,cc,cc/2,cc/2,1           %Roter Riese
!GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
otype=-1:GOSUB objdarst:otype=0
!!
Sterne Größenordnung:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
1: <=Pollux;       radius<= 6.679*10^6m =  9.6RS
2: <=Rigel; 9.6RS< radius<= 54.891*10^6 = 78.9RS
3: >Rigel;         radius>  54.891*10^6 = 78.9RS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
!!
!!
! % Neue Sterne hier einfügen %%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % __ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="__"                       %Name
pro_=t__                            %Projektionsvariable
rds=gr_0                            %Objektradius Lj 
d=__
s_d__=d/pcl_
dg_x=__:dm_x=__:ds_x=__             %Deklination
GOSUB dekl
h_x=__:m_x=__:s_x=__                %Position
GOSUB r_pos                         %
GR.COLOR cc-80,cc,cc,cc,1
otype=-1:GOSUB objdarst:otype=0
!!
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
