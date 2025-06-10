!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
     Sonnensystem Parameterdefinition ssr_globals1.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2025 by Dietmar Gerald Schrausser
!!
! % NASA Aktualisierungen hier eintragen %%%%%%%%%%%%%%%%%
_g1_mon$="06"
_g1_jar$="2025"
% Sonne %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_sne_km=   695700                % Radius in km 
r_sne_ae=   (r_sne_km*1000)/au_   % Radius in AE
rt_sne_=    609.12 /24            % Eigenrotation in T
m_sne_kg=   1988500 *10^24        % Masse in kg
g_sne_ms2=  274                   % Gravitation in m/s2
v_sne_km3=  1412000 *10^12        % Volumen in km3
% Merkur %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_mkr_km=   4879 /2               % Radius in km
d_mkr_m=    57.9 *10^9            % mittlere Distanz in m 
uf_mkr_j=   88 /a_                % Umlaufzeit in J
rt_mkr_=    1407.6 /24            % Eigenrotation in T
m_mkr_kg=   0.33 *10^24           % Masse in kg
g_mkr_ms2=  3.7                   % Gravitation in m/s2
v_mkr_km3=  6.083 *10^10          % Volumen in km3
d_mkr_ae=d_mkr_m/au_              % mittlere Distanz in AE
% Venus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_vns_km=   12104 /2              % Radius in km
d_vns_m=    108.2 *10^9           % mittlere Distanz in m 
uf_vns_j=   224.7 /a_             % Umlaufzeit in J
rt_vns_=    5832.5 /24            % Eigenrotation in T re
m_vns_kg=   4.8673 *10^24         % Masse in kg
g_vns_ms2=  8.87                  % Gravitation in m/s2
v_vns_km3=  92.843 *10^10         % Volumen in km3
d_vns_ae=d_vns_m/au_              % mittlere Distanz in AE
% Erde %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_erd_km=   12756 /2              % Radius in km
d_erd_m=    au_                   % mittlere Distanz in m 
uf_erd_j=   1                     % Umlaufzeit in J
rt_erd_=    1                     % Eigenrotation in T
m_erd_kg=   5.9722 *10^24         % Masse in kg
g_erd_ms2=  9.82                  % Gravitation in m/s2
v_erd_km3=  1.083 *10^12          % Volumen in km3
d_erd_ae=d_erd_m/au_              % mittlere Distanz in AE
% Mond %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_mnd_km=   3475 /2               % Radius in km 
d_mnd_m=    3844 *10^6            % mittlere Erd Dis. in m 
uf_mnd_t=   655.72 /24            % Erdumlaufzeit in T
m_mnd_kg=   0.07346 *10^24        % Masse in kg
g_mnd_ms2=  1.62                  % Gravitation in m/s2
v_mnd_km3=  2.1968 *10^10         % Volumen in km3
% Mars %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_mrs_km=   6792 /2               % Radius in km
d_mrs_m=    228 *10^9             % mittlere Distanz in m 
uf_mrs_j=   687 /a_               % Umlaufzeit in J
rt_mrs_=    24.6 /24              % Eigenrotation in T
m_mrs_kg=   0.64169 *10^24        % Masse in kg
g_mrs_ms2=  3.73                  % Gravitation in m/s2
v_mrs_km3=  16.312 *10^10         % Volumen in km3
d_mrs_ae=d_mrs_m/au_              % mittlere Distanz in AE
% Jupiter %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_jpt_km=   142984 /2             % Radius in km
d_jpt_m=    778.5 *10^9           % mittlere Distanz in m 
uf_jpt_j=   4333 /a_              % Umlaufzeit in J
rt_jpt_=    9.9 /24               % Eigenrotation in T
m_jpt_kg=   1898.13 *10^24        % Masse in kg
g_jpt_ms2=  25.92                 % Gravitation in m/s2
v_jpt_km3=  143128 *10^10         % Volumen in km3
d_jpt_ae=d_jpt_m/au_              % mittlere Distanz in AE
% Saturn %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_stn_km=   120536 /2             % Radius in km
d_stn_m=    1432 *10^9            % mittlere Distanz in m 
uf_stn_j=   10756 /a_             % Umlaufzeit in J
rt_stn_=    10.7 /24              % Eigenrotation in T
m_stn_kg=   568.32 *10^24         % Masse in kg
g_stn_ms2=  11.19                 % Gravitation in m/s2
v_stn_km3=  82713 *10^10          % Volumen in km3
d_stn_ae=d_stn_m/au_              % mittlere Distanz in AE
% Uranus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_urs_km=   51118 /2              % Radius in km
d_urs_m=    2867 *10^9            % mittlere Distanz in m 
uf_urs_j=   30685 /a_             % Umlaufzeit in J
rt_urs_=    17.2 /24              % Eigenrotation in T re
m_urs_kg=   86.811 *10^24         % Masse in kg
g_urs_ms2=  9.01                  % Gravitation in m/s2
v_urs_km3=  6833 *10^10           % Volumen in km3
d_urs_ae=d_urs_m/au_              % mittlere Distanz in AE
% Neptun %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_npt_km=   49528 /2              % Radius in km
d_npt_m=    4515 *10^9            % mittlere Distanz in m 
uf_npt_j=   60189 /a_             % Umlaufzeit in J
rt_npt_=    16.1 /24              % Eigenrotation in T
m_npt_kg=   102.409 *10^24        % Masse in kg
g_npt_ms2=  11.27                 % Gravitation in m/s2
v_npt_km3=  6254 *10^10           % Volumen in km3
d_npt_ae=d_npt_m/au_              % mittlere Distanz in AE
% Pluto %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_plt_km=   2376 /2               % Radius in km
d_plt_m=    5869.7 *10^9          % mittlere Distanz in m 
uf_plt_j=   90560 /a_             % Umlaufzeit in J
rt_plt_=    153.3 /24             % Eigenrotation in T re
m_plt_kg=   0.01303 *10^24        % Masse in kg
g_plt_ms2=  0.62                  % Gravitation in m/s2
v_plt_km3=  0.702 *10^10          % Volumen in km3
d_plt_ae=d_plt_m/au_              % mittlere Distanz in AE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
!!
References:
Williams, D. R. (Year). Planetary Fact Sheet. NASA Goddard Space Flight Center. https://nssdc.gsfc.nasa.gov/planetary/factsheet/
https://nssdc.gsfc.nasa.gov/planetary/factsheet/sunfact.html
!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
