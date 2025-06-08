!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
                Subroutine ssr_galaxien.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2025 by Dietmar Gerald Schrausser
!!
t06=t06gx                           %Projektion
vgr=vgr_gx                          %Vergrößerung
symsw=gx101                         %Symbol
! % Andromeda M31 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Andromeda"                %Name
pro_=gx01                           %Projektionsvariable
rds=30000                           %Objektradius Lj
d= 2500000                          %Lichtjahre Entfernung
gx_d01=d/pcl_
dg_x=41:dm_x=16:ds_x=9              %Deklination
GOSUB dekl
h_x=0:m_x=42:s_x=44.3               %Rekta Position
GOSUB r_pos
GR.COLOR cc/9,cc,cc,cc,1
GOSUB objdarst:otype=0
rds=100000                          %Objektradius Lj
d= 2500000                          %Lichtjahre Entfernung
dg_x=41:dm_x=16:ds_x=9              %Deklination
GOSUB dekl
h_x=0:m_x=42:s_x=44.3               %Rekta Position
GOSUB r_pos
GR.COLOR cc/13,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M110 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$=""                         %Name
pro_=gx_                            %Projektionsvariable
rds=12000                           %Objektradius Lj
d= 2650000                          %Lichtjahre Entfernung
dg_x=41:dm_x=41:ds_x=7              %Deklination
GOSUB dekl
h_x=0:m_x=40:s_x=22.1               %Rekta Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst:otype=0
! % Triangulum M33 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Triangulum"               %Name
pro_=gx05                           %Projektionsvariable
rds=55000/2                         %Objektradius Lj
d= 3200000                          %Lichtjahre Entfernung
gx_d02=d/pcl_
dg_x=13:dm_x=9:ds_x=50.02           %Deklination
GOSUB dekl
h_x=30:m_x=39:s_x=36.7              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M81 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M81"                      %Name
pro_=gx11                           %Projektionsvariable
rds=96000/2                         %Objektradius Lj
d= 11700000                         %Lichtjahre Entfernung
gx_d03=d/pcl_
dg_x=69:dm_x=3:ds_x=55              %Deklination
GOSUB dekl
h_x=9:m_x=55:s_x=33.2               %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M82 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M82"                      %Name
pro_=gx12                           %Projektionsvariable
rds=20000                           %Objektradius Lj
d= 11400000                         %Lichtjahre Entfernung
gx_d04=d/pcl_
dg_x=69:dm_x=40:ds_x=46             %Deklination
GOSUB dekl
h_x=9:m_x=55:s_x=52.7               %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M94 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M94"                      %Name
pro_=gx20                           %Projektionsvariable
rds=55000/2                         %Objektradius Lj
d= 16000000                         %Lichtjahre Entfernung
gx_d05=d/pcl_
dg_x=41:dm_x=07:ds_x=14             %Deklination
GOSUB dekl
h_x=12:m_x=50:s_x=53                %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M83 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M83"                      %Name
pro_=gx13                           %Projektionsvariable
rds=75000/2                         %Objektradius Lj
d= 17000000                         %Lichtjahre Entfernung
gx_d06=d/pcl_
dg_x=-29:dm_x=51:ds_x=56            %Deklination
GOSUB dekl
h_x=13:m_x=37:s_x=0.9               %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M101 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M101"                     %Name
pro_=gx02                           %Projektionsvariable
rds=77310/2                        %Objektradius Lj
d=20870000                          %Lichtjahre
gx_d07=d/pcl_
dg_x=54:dm_x=20:ds_x=57             %Deklination
GOSUB dekl
h_x=14:m_x=3:s_x=12.6               %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M106 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M106"                     %Name
pro_=gx27                           %Projektionsvariable
rds=125000/2                        %Objektradius Lj
d= 23000000                         %Lichtjahre Entfernung
gx_d08=d/pcl_
dg_x=47:dm_x=18:ds_x=14             %Deklination
GOSUB dekl
h_x=15:m_x=18:s_x=57.5              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M95 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M95"                      %Name
pro_=gx21                           %Projektionsvariable
rds=70000/2                         %Objektradius Lj
d= 30000000                         %Lichtjahre Entfernung
gx_d09=d/pcl_
dg_x=11:dm_x=42:ds_x=14             %Deklination
GOSUB dekl
h_x=10:m_x=43:s_x=57.7              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M51 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M51"                      %Name
pro_=gx03                           %Projektionsvariable
rds=80000/2                         %Objektradius Lj
d=24000000                          %Lichtjahre
gx_d10=d/pcl_
dg_x=47:dm_x=11:ds_x=43             %Deklination
GOSUB dekl
h_x=13:m_x=29:s_x=52.7              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M104 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M104"                     %Name
pro_=gx04                           %Projektionsvariable
rds=25000                           %Objektradius Lj
d=31100000                          %Lichtjahre
gx_d11=d/pcl_
dg_x=-11:dm_x=37:ds_x=23            %Deklination
GOSUB dekl
h_x=12:m_x=39:s_x=59.4              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M74 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M74"                      %Name
pro_=gx10                           %Projektionsvariable
rds=95000/2                         %Objektradius Lj
d= 34000000                         %Lichtjahre Entfernung
gx_d13=d/pcl_
dg_x=15:dm_x=47:ds_x=01             %Deklination
GOSUB dekl
h_x=1:m_x=36:s_x=41.7               %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M108 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M108"                     %Name
pro_=gx29                           %Projektionsvariable
rds=42500                           %Objektradius Lj
d= 34000000                         %Lichtjahre Entfernung
gx_d16=d/pcl_
dg_x=55:dm_x=40:ds_x=27             %Deklination
GOSUB dekl
h_x=11:m_x=11:s_x=31                %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M96 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M96"                      %Name
pro_=gx22                           %Projektionsvariable
rds=75000/2                         %Objektradius Lj
d= 35000000                         %Lichtjahre Entfernung
gx_d14=d/pcl_
dg_x=11:dm_x=49:ds_x=12             %Deklination
GOSUB dekl
h_x=10:m_x=46:s_x=45.7              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M105 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M105"                     %Name
pro_=gx28                           %Projektionsvariable
rds=55000/2                         %Objektradius Lj
d= 36000000                         %Lichtjahre Entfernung
gx_d17=d/pcl_
dg_x=12:dm_x=34:ds_x=54             %Deklination
GOSUB dekl
h_x=10:m_x=47:s_x=49.6              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M84 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M84"                      %Name
pro_=gx14                           %Projektionsvariable
rds=90000/2                         %Objektradius Lj
d= 43000000                         %Lichtjahre Entfernung
gx_d18=d/pcl_
dg_x=12:dm_x=53:ds_x=13             %Deklination
GOSUB dekl
h_x=12:m_x=25:s_x=3.7               %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M98 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M98"                      %Name
pro_=gx23                           %Projektionsvariable
rds=150000/2                        %Objektradius Lj
d= 46000000                         %Lichtjahre Entfernung
gx_d19=d/pcl_
dg_x=14:dm_x=54:ds_x=1              %Deklination
GOSUB dekl
h_x=12:m_x=13:s_x=48.3              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M77 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M77"                      %Name
pro_=gx31                           %Projektionsvariable
rds=105000/2                        %Objektradius Lj
d= 47000000                         %Lichtjahre Entfernung
gx_d20=d/pcl_
dg_x=0:dm_x=0:ds_x=48               %Deklination
GOSUB dekl
h_x=2:m_x=41:s_x=40.7               %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M85 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M85"                      %Name
pro_=t66                            %Projektionsvariable
rds=105000/2                        %Objektradius Lj
d= 50000000                         %Lichtjahre Entfernung
gx_d21=d/pcl_
dg_x=18:dm_x=11:ds_x=29             %Deklination
GOSUB dekl
h_x=12:m_x=25:s_x=24.1              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M102 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M102"                     %Name
pro_=gx26                           %Projektionsvariable
rds=60000/2                         %Objektradius Lj
d= 50000000                         %Lichtjahre Entfernung
gx_d22=d/pcl_
dg_x=55:dm_x=45:ds_x=48             %Deklination
GOSUB dekl
h_x=15:m_x=6:s_x=29.5               %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M109 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M109"                     %Name
pro_=gx30                           %Projektionsvariable
rds=110000/2                        %Objektradius Lj
d= 50000000                         %Lichtjahre Entfernung
gx_d23=d/pcl_
dg_x=53:dm_x=22:ds_x=28             %Deklination
GOSUB dekl
h_x=11:m_x=57:s_x=36                %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M87 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M87"                      %Name
pro_=gx17                           %Projektionsvariable
rds=66000                           %Objektradius Lj
d= 53.5*10^6                        %Lichtjahre Entfernung
gx_d33=d/pcl_
dg_x=12:dm_x=23:ds_x=28.0439        %Deklination
GOSUB dekl
h_x=12:m_x=30:s_x=49.42338          %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M89 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M89"                      %Name
pro_=gx19                           %Projektionsvariable
rds=80000/2                         %Objektradius Lj
d= 54000000                         %Lichtjahre Entfernung
gx_d24=d/pcl_
dg_x=12:dm_x=33:ds_x=23             %Deklination
GOSUB dekl
h_x=12:m_x=35:s_x=39.8              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M49 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M49"                      %Name
pro_=gx07                           %Projektionsvariable
rds=155000/2                        %Objektradius Lj
d= 56000000                         %Lichtjahre Entfernung
gx_d25=d/pcl_
dg_x=8:dm_x=0:ds_x=2                %Deklination
GOSUB dekl
h_x=12:m_x=39:s_x=46.7              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M90 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M90"                      %Name
pro_=gx06                           %Projektionsvariable
rds=150000/2                        %Objektradius Lj
d= 58700000                         %Lichtjahre Entfernung
gx_d26=d/pcl_
dg_x=13:dm_x=9:ds_x=46              %Deklination
GOSUB dekl
h_x=12:m_x=36:s_x=49.8              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M86 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M86"                      %Name
pro_=gx16                           %Projektionsvariable
rds=80000                           %Objektradius Lj
d= 61000000                         %Lichtjahre Entfernung
gx_d27=d/pcl_
dg_x=12:dm_x=56:ds_x=46             %Deklination
GOSUB dekl
h_x=12:m_x=26:s_x=11.7              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M91 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M91"                      %Name
pro_=gx09                           %Projektionsvariable
rds=85000/2                         %Objektradius Lj
d= 63000000                         %Lichtjahre Entfernung
gx_d28=d/pcl_
dg_x=14:dm_x=29:ds_x=47             %Deklination
GOSUB dekl
h_x=12:m_x=35:s_x=26.4              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M58 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M58"                      %Name
pro_=gx08                           %Projektionsvariable
rds=110000/2                        %Objektradius Lj
d= 68000000                         %Lichtjahre Entfernung
gx_d29=d/pcl_
dg_x=11:dm_x=49:ds_x=5              %Deklination
GOSUB dekl
h_x=12:m_x=37:s_x=43.5              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M100 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M100"                     %Name
pro_=gx25                           %Projektionsvariable
rds=120000/2                        %Objektradius Lj
d= 68000000                         %Lichtjahre Entfernung
gx_d30=d/pcl_
dg_x=15:dm_x=49:ds_x=19             %Deklination
GOSUB dekl
h_x=12:m_x=22:s_x=54.8              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M88 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M88"                      %Name
pro_=gx18                           %Projektionsvariable
rds=122000/2                        %Objektradius Lj
d= 80000000                         %Lichtjahre Entfernung
gx_d31=d/pcl_
dg_x=12:dm_x=25:ds_x=13             %Deklination
GOSUB dekl
h_x=12:m_x=31:s_x=59.1              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! % M99 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M99"                      %Name
pro_=gx24                           %Projektionsvariable
rds=80000                           %Objektradius Lj
d= 105000000                        %Lichtjahre Entfernung
gx_d32=d/pcl_
dg_x=14:dm_x=24:ds_x=59             %Deklination
GOSUB dekl
h_x=12:m_x=18:s_x=49.6              %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst:otype=0
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
vgr=1:symsw=1
!!
! % Neue Galaxien hier einfügen %%%%%%%%%%%%%%%%%%%%%%%%%%
! % M_ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M_"                       %Name
pro_=t__                            %Projektionsvariable
rds=gr_0                            %Objektradius Lj
d= ____                             %Lichtjahre Entfernung
gx_d__=d/pcl_
dg_x=__:dm_x=__:ds_x=__             %Deklination
GOSUB dekl
h_x=__:m_x=__:s_x=__                %Rekta Position
GOSUB r_pos
GR.COLOR cc/6,cc,cc,cc,1
GOSUB objdarst
!!
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
