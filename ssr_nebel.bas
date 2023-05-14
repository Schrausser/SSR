!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
                  Subroutine ssr_nebel.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2023 by Dietmar Gerald Schrausser
!!
t06=t06nb
! % Planetarer Nebel Hantelnebel M27 %%%%%%%%%%%%%%%%%%%%%
objname$="M27"                       %Name
pro_=nb15                            %Projektionsvariable
rds=2                                %Objektradius Lj
d= 1300                              %Lichtjahre 
nb_d01=d/pcl_
dg_x=-22:dm_x=43:ds_x=16             %Deklination
GOSUB dekl
h_x=19:m_x=59:s_x=36                 %Position
GOSUB r_pos                          %
GR.COLOR cc/3,cc,cc/1.5,cc/1.5,1
GOSUB objdarst
! % Orionnebel M42 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Orionnebel"                %Name
pro_=nb01                            %Projektionsvariable
rds=12                               %Objektradius Lj
d= 1344                              %Lichtjahre 
nb_d02=d/pcl_
dg_x=-5:dm_x=23:ds_x=28              %Deklination
GOSUB dekl
h_x=5:m_x=35:s_x=17.3                %Position
GOSUB r_pos
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
! % De Mairan's Nebel M43 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$=""                          %Name
pro_=nb01                            %Projektionsvariable
rds=3                                %Objektradius Lj
d= 1300                              %Lichtjahre 
dg_x=-5:dm_x=16:ds_x=28              %Deklination
GOSUB dekl
h_x=5:m_x=35:s_x=31.4                %Position
GOSUB r_pos
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
! % Orion-Komplex %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$=""                          %Name
!pro_=nb01                           %Projektionsvariable
rds=290                              %Objektradius Lj
d= 1350                              %Lichtjahre 
dg_x=-5:dm_x=23:ds_x=0               %Deklination
GOSUB dekl
h_x=5:m_x=35.5:s_x=0                 %Position
GOSUB r_pos
GR.COLOR cc/23,cc,cc/3,cc/2,1
GOSUB objdarst
!%  M78 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M78"                       %Name
pro_=nb16                            %Projektionsvariable
rds=5                                %Objektradius Lj
d= 1600                              %Lichtjahre 
nb_d03=d/pcl_
dg_x=0:dm_x=0:ds_x=50                %Deklination
GOSUB dekl
h_x=5:m_x=46:s_x=46.7                %Position
GOSUB r_pos                          %
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
! % Planetarer Nebel Eulennebel M97 %%%%%%%%%%%%%%%%%%%%%%
objname$="M97"                       %Name
pro_=nb17                            %Projektionsvariable
rds=1                                %Objektradius Lj
d= 2030                              %Lichtjahre 
nb_d04=d/pcl_
dg_x=55:dm_x=1:ds_x=8.5              %Deklination
GOSUB dekl
h_x=11:m_x=14:s_x=47.7               %Position
GOSUB r_pos                          %
GR.COLOR cc/3,cc,cc/1.5,cc/1.5,1
GOSUB objdarst
! % Planetarer Nebel Kleiner Hantelnebel M76 %%%%%%%%%%%%%
objname$="M76"                       %Name
pro_=nb18                            %Projektionsvariable
rds=0.6                              %Objektradius Lj
d= 2500                              %Lichtjahre 
nb_d05=d/pcl_
dg_x=51:dm_x=34:ds_x=31              %Deklination
GOSUB dekl
h_x=1:m_x=42.4:s_x=0                 %Position
GOSUB r_pos                          %
GR.COLOR cc/3,cc,cc/1.5,cc/1.5,1
GOSUB objdarst
! % Planetarer Nebel Ringnebel M57 %%%%%%%%%%%%%%%%%%%%%%%
objname$="M57"                       %Name
pro_=nb19                            %Projektionsvariable
rds=2                                %Objektradius Lj
d= 2567                              %Lichtjahre 
nb_d06=d/pcl_
dg_x=33:dm_x=1:ds_x=45               %Deklination
GOSUB dekl
h_x=18:m_x=53:s_x=35.1               %Position
GOSUB r_pos                          %
GR.COLOR cc/3,cc,cc/1.5,cc/1.5,1
GOSUB objdarst
! % Lagunennebel M8 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M8"                        %Name
pro_=nb20                            %Projektionsvariable
rds=55                               %Objektradius Lj
d= 4100                              %Lichtjahre
nb_d07=d/pcl_
dg_x=-24:dm_x=23:ds_x=12             %Deklination
GOSUB dekl
h_x=18:m_x=03:s_x=37                 %Position
GOSUB r_pos                          %
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
!% Trifidnebel M20 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M20"                       %Name
pro_=nb21                            %Projektionsvariable
rds=20                               %Objektradius Lj
d= 5200                              %Lichtjahre 
nb_d08=d/pcl_
dg_x=-22:dm_x=58:ds_x=18             %Deklination
GOSUB dekl
h_x=18:m_x=02:s_x=42                 %Position
GOSUB r_pos                          %
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
!% Omeganebel M17 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Omeganebel"                %Name
pro_=nb22                            %Projektionsvariable
rds=20                               %Objektradius Lj
d= 5500                              %Lichtjahre 
nb_d09=d/pcl_
dg_x=-16:dm_x=10.6:ds_x=0            %Deklination
GOSUB dekl
h_x=18:m_x=20:s_x=26                 %Position
GOSUB r_pos                          %
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
! % Adlernebel M16 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Adlernebel"                %Name
pro_=nb11                            %Projektionsvariable
rds=70                               %Objektradius Lj
d= 5700                              %Lichtjahre 
nb_d10=d/pcl_
dg_x=-13:dm_x=49:ds_x=0              %Deklination
GOSUB dekl
h_x=18:m_x=18:s_x=48                 %Position
GOSUB r_pos                          %Schütze-Skorpion
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
! % Krebsnebel M1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Krebsnebel"                %Name
pro_=nb10                            %Projektionsvariable
rds= 5.5                             %Objektradius Lj
d= 6500                              %Lichtjahre 
nb_d11=d/pcl_
dg_x=22:dm_x=0:ds_x=52.2             %Deklination
GOSUB dekl
h_x=5:m_x=34:s_x=31.94               %Position
GOSUB r_pos
GR.COLOR cc/2,cc,40,40,1
GOSUB objdarst
! % Stundenglasnebel MyCn 18 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Stundenglasnebel"          %Name
pro_=nb12                            %Projektionsvariable
rds= 17.3                            %Objektradius Lj
d= 8154                              %Lichtjahre 
nb_d12=d/pcl_
dg_x=-67:dm_x=22:ds_x=51.45          %Deklination
GOSUB dekl
h_x=13:m_x=39:s_x=35.116             %Position
GOSUB r_pos   
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
! % Monocerotis V838 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="V838"                      %Name
pro_=nb14                            %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d= 19200                             %Lichtjahre 
nb_d13=d/pcl_
dg_x=-3:dm_x=50:ds_x=50.53           %Deklination
GOSUB dekl
h_x=7:m_x=4:s_x=4.822                %Position
GOSUB r_pos   
GR.COLOR cc/2,cc,40,40,1             %leuchtkr. rote Nova
otype=-1:GOSUB objdarst:otype=0
!!
! % Neue Nebel hier einfügen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
! % ___ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="_"                         %Name
pro_=t__                             %Projektionsvariable
rds=gr_0                             %Objektradius Lj
d= ____                              %Lichtjahre Entf.
nb_d__=d/pcl_
dg_x=__:dm_x=__:ds_x=__              %Deklination
GOSUB dekl
h_x=__:m_x=__:s_x=__                 %Rekta Position
GOSUB r_pos
GR.COLOR cc/3,cc,cc/3,cc/2,1
GOSUB objdarst
!!
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
