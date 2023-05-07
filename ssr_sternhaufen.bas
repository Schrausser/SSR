!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
               Subroutine ssr_sternhaufen.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2023 by Dietmar Gerald Schrausser
!!
t06=t06st
! % Plejaden M45 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Plejaden"                   %Name
pro_=st01                             %Projektionsvariable
rds= 17.5                             %Objektradius Lj
d= 444                                %Lichtjahre 
dg_x=24:dm_x=7:ds_x=0                 %Deklination
GOSUB dekl
h_x=3:m_x=47:s_x=24                   %Position
GOSUB r_pos                           %Widder-Stier
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % Winnecke 4 M40 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M40 A"                      %Name
pro_=st14                             %Projektionsvariable
rds=gr_0                              %Objektradius Lj
d= 470                                %Lichtjahre 
dg_x=58:dm_x=4:ds_x=58.5              %Deklination
GOSUB dekl
h_x=12:m_x=22:s_x=12.5                %Position
GOSUB r_pos                           %
GR.COLOR cc/4,cc/2,cc/2,cc,1
otype=-1:GOSUB objdarst:otype=1
objname$="M40 B"                      %Name
pro_=st__                             %Projektionsvariable
rds=gr_0                              %Objektradius Lj
d= 1000                               %Lichtjahre 
dg_x=58:dm_x=5:ds_x=10.37             %Deklination
GOSUB dekl
h_x=12:m_x=22:s_x=19                  %Position
GOSUB r_pos                           %
GR.COLOR cc/4,cc/2,cc/2,cc,1
otype=-1:GOSUB objdarst:otype=0
! % Praesepe M44 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Praesepe"                   %Name
pro_=st02                             %Projektionsvariable
rds=10                                %Objektradius Lj
d= 577                                %Lichtjahre 
dg_x=19:dm_x=59:ds_x=0                %Deklination
GOSUB dekl
h_x=8:m_x=40.4:s_x=0                  %Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % Ptolemaeus M7 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="Ptolemaeus"                 %Name
pro_=st03                             %Projektionsvariable
rds=10                                %Objektradius Lj
d= 800                                %Lichtjahre
dg_x=-34:dm_x=47:ds_x=34              %Deklination
GOSUB dekl
h_x=17:m_x=53:s_x=51.2                %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % M39 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M39"                        %Name
pro_=st04                             %Projektionsvariable
rds=4                                 %Objektradius Lj
d= 824                                %Lichtjahre 
dg_x=48:dm_x=26:ds_x=0                %Deklination
GOSUB dekl
h_x=21:m_x=31.8:s_x=0                 %Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % M34 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M34"                        %Name
pro_=st05                             %Projektionsvariable
rds=7                                 %Objektradius Lj
d= 1500                               %Entfernung
dg_x=42:dm_x=46:ds_x=0                %Deklination
GOSUB dekl
h_x=2:m_x=42:s_x=7.4                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % Schmetterlingshaufen M6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M6"                         %Name
pro_=st06                             %Projektionsvariable
rds=6                                 %Objektradius Lj
d= 1590                               %Entfernung
dg_x=32:dm_x=13:ds_x=0                %Deklination
GOSUB dekl
h_x=17:m_x=40:s_x=18                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M47 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M47"                        %Name
pro_=st15                             %Projektionsvariable
rds=6                                 %Objektradius Lj
d= 1600                               %Entfernung
dg_x=-14:dm_x=28:ds_x=57              %Deklination
GOSUB dekl
h_x=7:m_x=36:s_x=35                   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M23 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M23"                        %Name
pro_=st16                             %Projektionsvariable
rds=8                                 %Objektradius Lj
d= 2050                               %Entfernung
dg_x=-18:dm_x=59:ds_x=6               %Deklination
GOSUB dekl
h_x=17:m_x=57:s_x=4                   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M25 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M25"                        %Name
pro_=st17                             %Projektionsvariable
rds=10                                %Objektradius Lj
d= 2100                               %Entfernung
dg_x=-19:dm_x=7:ds_x=0                %Deklination
GOSUB dekl
h_x=18:m_x=31:s_x=47                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M41 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M41"                        %Name
pro_=st18                             %Projektionsvariable
rds=12.5                              %Objektradius Lj
d= 2300                               %Entfernung
dg_x=-20:dm_x=46:ds_x=0               %Deklination
GOSUB dekl
h_x=6:m_x=46:s_x=0                    %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % M48 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M48"                        %Name
pro_=st07                             %Projektionsvariable
rds=63                                %Objektradius Lj
d= 2500                               %Lichtjahre
dg_x=5:dm_x=45:ds_x=0                 %Deklination
GOSUB dekl
h_x=8:m_x=13:s_x=43                   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M73 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M73"                        %Name
pro_=st19                             %Projektionsvariable
rds=gr_0                              %Objektradius Lj
d= 2500                               %Lichtjahre
dg_x=-12:dm_x=38:ds_x=0               %Deklination
GOSUB dekl
h_x=20:m_x=58:s_x=54                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
otype=-1:GOSUB objdarst:otype=0
! % M67 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M67"                        %Name
pro_=st08                             %Projektionsvariable
rds=10                                %Objektradius Lj
d= 2700                               %Lichtjahre
dg_x=11:dm_x=49:ds_x=0                %Deklination
GOSUB dekl
h_x=8:m_x=51:s_x=18                   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M50 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M50"                        %Name
pro_=st20                             %Projektionsvariable
rds=9                                 %Objektradius Lj
d= 2870                               %Lichtjahre
dg_x=-8:dm_x=20:ds_x=16               %Deklination
GOSUB dekl
h_x=7:m_x=2:s_x=47.5                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % M35 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M35"                        %Name
pro_=st21                             %Projektionsvariable
rds=11                                %Objektradius Lj
d= 2970                               %Lichtjahre
dg_x=24:dm_x=20:ds_x=0                %Deklination
GOSUB dekl
h_x=6:m_x=8:s_x=54                    %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M93 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M93"                        %Name
pro_=st22                             %Projektionsvariable
rds=5                                 %Objektradius Lj
d= 3380                               %Lichtjahre
dg_x=-23:dm_x=51:ds_x=24              %Deklination
GOSUB dekl
h_x=7:m_x=44:s_x=30                   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M38 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M38"                        %Name
pro_=st23                             %Projektionsvariable
rds=13                                %Objektradius Lj
d= 3480                               %Lichtjahre
dg_x=35:dm_x=51:ds_x=18               %Deklination
GOSUB dekl
h_x=5:m_x=28:s_x=43                   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M29 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M29"                        %Name
pro_=st24                             %Projektionsvariable
rds=5                                 %Objektradius Lj
d= 3740                               %Lichtjahre
dg_x=38:dm_x=31:ds_x=24               %Deklination
GOSUB dekl
h_x=20:m_x=23:s_x=56                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M36 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M36"                        %Name
pro_=st25                             %Projektionsvariable
rds=7                                 %Objektradius Lj
d= 4340                               %Lichtjahre 
dg_x=34:dm_x=8:ds_x=24                %Deklination
GOSUB dekl
h_x=5:m_x=36:s_x=18                   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M18 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M18"                        %Name
pro_=st26                             %Projektionsvariable
rds=27                                %Objektradius Lj
d= 4230                               %Lichtjahre
dg_x=-17:dm_x=6:ds_x=6                %Deklination
GOSUB dekl
h_x=18:m_x=19:s_x=58                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M21 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M21"                        %Name
pro_=st28                             %Projektionsvariable
rds=10                                %Objektradius Lj
d= 4250                               %Lichtjahre
dg_x=-22:dm_x=29:ds_x=24              %Deklination
GOSUB dekl
h_x=18:m_x=4:s_x=13                   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M37 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M37"                        %Name
pro_=st27                             %Projektionsvariable
rds=12                                %Objektradius Lj
d= 4511                               %Lichtjahre
dg_x=32:dm_x=33:ds_x=2                %Deklination
GOSUB dekl
h_x=5:m_x=52:s_x=18                   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M52 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M52"                        %Name
pro_=st29                             %Projektionsvariable
rds=9.5                               %Objektradius Lj
d= 4600                               %Lichtjahre
dg_x=61:dm_x=35:ds_x=36               %Deklination
GOSUB dekl
h_x=23:m_x=24:s_x=48                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M46 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M46"                        %Name
pro_=st30                             %Projektionsvariable
rds=37.8                              %Objektradius Lj
d= 4920                               %Lichtjahre
dg_x=-14:dm_x=48:ds_x=36              %Deklination
GOSUB dekl
h_x=7:m_x=41:s_x=46                   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M26 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M26"                        %Name
pro_=st31                             %Projektionsvariable
rds=11                                %Objektradius Lj
d= 5160                               %Lichtjahre
dg_x=-9:dm_x=23:ds_x=0                %Deklination
GOSUB dekl
h_x=18:m_x=45:s_x=18                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % Wildentenhaufen M11 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M11"                        %Name
pro_=st32                             %Projektionsvariable
rds=95                                %Objektradius Lj
d= 6120                               %Lichtjahre
dg_x=-6:dm_x=16:ds_x=12               %Deklination
GOSUB dekl
h_x=18:m_x=51:s_x=5                   %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % M4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M4"                         %Name
pro_=st09                             %Projektionsvariable
rds=36                                %Objektradius Lj
d= 7200                               %Lichtjahre
dg_x=26:dm_x=31:ds_x=32               %Deklination
GOSUB dekl
h_x=16:m_x=23:s_x=35.4                %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! %  M103 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M103"                       %Name
pro_=st33                             %Projektionsvariable
rds=15                                %Objektradius Lj
d= 8500                               %Lichtjahre
dg_x=60:dm_x=42:ds_x=0                %Deklination
GOSUB dekl
h_x=1:m_x=33.2:s_x=0                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
! % Kugelsternhaufen M22 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M22"                        %Name
pro_=st34                             %Projektionsvariable
rds=50                                %Objektradius Lj
d= 10400                              %Lichtjahre 
dg_x=-23:dm_x=54:ds_x=17.1            %Deklination
GOSUB dekl
h_x=18:m_x=36:s_x=23.94               %Position
GOSUB r_pos                           %
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M71 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M71"                        %Name
pro_=st35                             %Projektionsvariable
rds=13                                %Objektradius Lj
d= 13000                              %Lichtjahre 
dg_x=18:dm_x=46:ds_x=45.1             %Deklination
GOSUB dekl
h_x=19:m_x=53:s_x=46.5                %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M10 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M10"                        %Name
pro_=st36                             %Projektionsvariable
rds=41.6                              %Objektradius Lj
d= 14300                              %Lichtjahre 
dg_x=-4:dm_x=5:ds_x=58                %Deklination
GOSUB dekl
h_x=16:m_x=57:s_x=8.92                %Position
GOSUB r_pos                           %
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen im Omega Centauri %%%%%%%%%%%%%%%%%%%
objname$=CHR$(969)+" Haufen"          %Name
pro_=st10                             %Projektionsvariable
rds=86                                %Objektradius Lj
d= 15790                              %Lichtjahre 
dg_x=-47:dm_x=28:ds_x=46.1            %Deklination
GOSUB dekl
h_x=13:m_x=26:s_x=47.28               %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M12 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M12"                        %Name
pro_=st37                             %Projektionsvariable
rds=37.2                              %Objektradius Lj
d= 16440                              %Lichtjahre 
dg_x=-1:dm_x=56:ds_x=54.7             %Deklination
GOSUB dekl
h_x=16:m_x=47:s_x=14.18               %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M55 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M55"                        %Name
pro_=st38                             %Projektionsvariable
rds=48                                %Objektradius Lj
d= 17600                              %Lichtjahre 
dg_x=-30:dm_x=57:ds_x=53.1            %Deklination
GOSUB dekl
h_x=19:m_x=39:s_x=59.7                %Position
GOSUB r_pos                           %
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M28 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M28"                        %Name
pro_=st39                             %Projektionsvariable
rds=30                                %Objektradius Lj
d= 18260                              %Lichtjahre 
dg_x=-1:dm_x=56:ds_x=54.7             %Deklination
GOSUB dekl
h_x=18:m_x=24:s_x=32.9                %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M107 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M107"                       %Name
pro_=st40                             %Projektionsvariable
rds=30                                %Objektradius Lj
d= 20900                              %Lichtjahre 
dg_x=-13:dm_x=3:ds_x=13.6             %Deklination
GOSUB dekl
h_x=16:m_x=32:s_x=31.86               %Position
GOSUB r_pos                           %
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M62 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M62"                        %Name
pro_=st41                             %Projektionsvariable
rds=50                                %Objektradius Lj
d= 21500                              %Lichtjahre 
dg_x=-30:dm_x=6:ds_x=44.5             %Deklination
GOSUB dekl
h_x=17:m_x=1:s_x=12.6                 %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen im Herkules M13 %%%%%%%%%%%%%%%%%%%%%
objname$="M13"                        %Name
pro_=st11                             %Projektionsvariable
rds=84                                %Objektradius Lj
d= 22180                              %Lichtjahre 
dg_x=36:dm_x=27:ds_x=35.5             %Deklination
GOSUB dekl
h_x=16:m_x=41:s_x=41.24               %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M5"                         %Name
pro_=st42                             %Projektionsvariable
rds=80                                %Objektradius Lj
d= 24500                              %Lichtjahre 
dg_x=2:dm_x=4:ds_x=51.7               %Deklination
GOSUB dekl
h_x=15:m_x=18:s_x=33.22               %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M9 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M9"                         %Name
pro_=st43                             %Projektionsvariable
rds=45                                %Objektradius Lj
d= 25800                              %Lichtjahre 
dg_x=-18:dm_x=30:ds_x=58.5            %Deklination
GOSUB dekl
h_x=17:m_x=19:s_x=11.78               %Position
GOSUB r_pos                           %
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M92 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M92"                        %Name
pro_=st44                             %Projektionsvariable
rds=54.5                              %Objektradius Lj
d= 26700                              %Lichtjahre
dg_x=43:dm_x=8:ds_x=9.4               %Deklination
GOSUB dekl
h_x=17:m_x=17:s_x=7.39                %Rekta Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M30 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M30"                        %Name
pro_=st45                             %Projektionsvariable
rds=47                                %Objektradius Lj
d= 27140                              %Lichtjahre 
dg_x=-23:dm_x=10:ds_x=47.5            %Deklination
GOSUB dekl
h_x=21:m_x=40:s_x=22.12               %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M19 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M19"                        %Name
pro_=st46                             %Projektionsvariable
rds=70                                %Objektradius Lj
d= 28700                              %Lichtjahre 
dg_x=-26:dm_x=16:ds_x=4.6             %Deklination
GOSUB dekl
h_x=17:m_x=2:s_x=37.7                 %Position
GOSUB r_pos                           %
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M69 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M69"                        %Name
pro_=st47                             %Projektionsvariable
rds=45                                %Objektradius Lj
d= 29000                              %Lichtjahre 
dg_x=-32:dm_x=20:ds_x=53.1            %Deklination
GOSUB dekl
h_x=18:m_x=31:s_x=23.1                %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M70 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M70"                        %Name
pro_=st48                             %Projektionsvariable
rds=34                                %Objektradius Lj
d= 29400                              %Lichtjahre 
dg_x=-32:dm_x=17:ds_x=31.6            %Deklination
GOSUB dekl
h_x=18:m_x=43:s_x=12.76               %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M14 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M14"                        %Name
pro_=st49                             %Projektionsvariable
rds=50                                %Objektradius Lj
d= 30300                              %Lichtjahre 
dg_x=-3:dm_x=14:ds_x=45.3             %Deklination
GOSUB dekl
h_x=17:m_x=37:s_x=36.16               %Position
GOSUB r_pos 
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M80 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M80"                        %Name
pro_=st50                             %Projektionsvariable
rds=48                                %Objektradius Lj
d= 32000                              %Lichtjahre
dg_x=-22:dm_x=58:ds_x=34              %Deklination
GOSUB dekl
h_x=16:m_x=17:s_x=2.41                %Rekta Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M56 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M56"                        %Name
pro_=st51                             %Projektionsvariable
rds=42                                %Objektradius Lj
d= 32900                              %Lichtjahre 
dg_x=30:dm_x=11:ds_x=0.5              %Deklination
GOSUB dekl
h_x=19:m_x=16:s_x=35.57               %Position
GOSUB r_pos                           %
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M2"                         %Name
pro_=st52                             %Projektionsvariable
rds=87.3                              %Objektradius Lj
d= 33000                              %Lichtjahre 
dg_x=-0:dm_x=49:ds_x=23.7             %Deklination
GOSUB dekl
h_x=21:m_x=33:s_x=27                  %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M68 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M68"                        %Name
pro_=st53                             %Projektionsvariable
rds=53                                %Objektradius Lj
d= 33600                              %Lichtjahre 
dg_x=-26:dm_x=44:ds_x=38.6            %Deklination
GOSUB dekl
h_x=12:m_x=39:s_x=27.98               %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M3"                         %Name
pro_=st54                             %Projektionsvariable
rds=90                                %Objektradius Lj
d= 33900                              %Lichtjahre 
dg_x=28:dm_x=22:ds_x=38.2             %Deklination
GOSUB dekl
h_x=13:m_x=42:s_x=11.62               %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M15 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M15"                        %Name
pro_=st55                             %Projektionsvariable
rds=88                                %Objektradius Lj
d= 35690                              %Lichtjahre 
dg_x=12:dm_x=10:ds_x=1.2              %Deklination
GOSUB dekl
h_x=21:m_x=29:s_x=58.33               %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M79 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M79"                        %Name
pro_=st12                             %Projektionsvariable
rds=150                               %Objektradius Lj
d= 41000                              %Lichtjahre
dg_x=-24:dm_x=31:ds_x=26              %Deklination
GOSUB dekl
h_x=5:m_x=24:s_x=10.6                 %Rekta Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M72 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M72"                        %Name
pro_=st56                             %Projektionsvariable
rds=53                                %Objektradius Lj
d= 54700                              %Lichtjahre 
dg_x=-12:dm_x=32:ds_x=14.3            %Deklination
GOSUB dekl
h_x=20:m_x=53:s_x=27.7                %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M75 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M75"                        %Name
pro_=st57                             %Projektionsvariable
rds=67                                %Objektradius Lj
d= 68000                              %Lichtjahre 
dg_x=-21:dm_x=55:ds_x=17.85           %Deklination
GOSUB dekl
h_x=20:m_x=6:s_x=4.85                 %Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
! % Kugelsternhaufen M53 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="M53"                        %Name
pro_=st13                             %Projektionsvariable
rds=110                               %Objektradius Lj
d= 58000                              %Lichtjahre
dg_x=18:dm_x=10:ds_x=5.4              %Deklination
GOSUB dekl
h_x=13:m_x=12:s_x=55.25               %Rekta Position
GOSUB r_pos
GR.COLOR cc/8,cc,cc,cc,1
GOSUB objdarst
!!
! % Neue Sternhaufen hier einfügen %%%%%%%%%%%%%%%%%%%%%%%
! % ___ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
objname$="_"                          %Name
pro_=t__                              %Projektionsvariable
rds=__                                %Objektradius Lj
d= ____                               %Lichtjahre
dg_x=__:dm_x=__:ds_x=__               %Deklination
GOSUB dekl
h_x=__:m_x=__:s_x=__                  %Rekta Position
GOSUB r_pos
GR.COLOR cc/4,cc/2,cc/2,cc,1
GOSUB objdarst
!!
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
