!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
                 Subroutine ssr_weitere.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2023 by Dietmar Gerald Schrausser
!!
t06=t06gw
FOR igw=1 TO n_gw
 ! % Weitere Objekte %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 objname$=gw$[igw]                %Name
 pro_=gw_p[igw]                   %Projektionsvariable
 ! %                              %Radius 
 rds=gw_r[igw]                    %Lj
 ! %                              %Entfernung 
 d=gw_d[igw]                      %Lj
 ! %                              %Deklination 
 dg_x=gwdg[igw]                   %Grad
 dm_x=gwdm[igw]                   %Minute
 ds_x=gwds[igw]                   %Sekunde                    
 GOSUB dekl
 ! %                              %Rekta Position
 h_x=gwh_[igw]                    %Sunde                      
 m_x=gwm_[igw]                    %Minute
 s_x=gws_[igw]                    %Sekunde            
 GOSUB r_pos
 SW.BEGIN gw_cl[igw]
  SW.CASE 1
   GR.COLOR cc-125,cc,cc,cc,1          %Größe 1
   SW.BREAK
  SW.CASE 2
   GR.COLOR cc-80,cc,cc,cc,1           %Größe 2
   SW.BREAK
  SW.CASE 3
   GR.COLOR cc-35,cc,cc,cc,1           %Größe 3
   SW.BREAK
  SW.CASE 4
   GR.COLOR cc,cc,cc/2,cc/2,1          %Roter Riese
   SW.BREAK
  SW.CASE 5
   GR.COLOR cc-35,cc/2,cc/2,cc/1.2,1   %Blauer Riese
   SW.BREAK
  SW.CASE 6
   GR.COLOR cc/4,cc,40,40,1            %Nova/Supernova
   SW.BREAK
  SW.CASE 7
   GR.COLOR cc/4,cc/2,cc/2,cc,1        %Sternhaufen
   SW.BREAK
  SW.CASE 8
   GR.COLOR cc/3,cc,cc/3,cc/2,1        %Nebel
   SW.BREAK
  SW.CASE 9
   GR.COLOR cc/3,cc,cc/1.5,cc/1.5,1    %Planetare Nebel
   SW.BREAK
  SW.CASE 10
   GR.COLOR cc/8,cc,cc,cc,1            %Kugelsternhaufen
   SW.BREAK
  SW.CASE 11
   GR.COLOR cc/9,cc,cc,cc,1            %Milchstraße
   SW.BREAK
  SW.CASE 12
   GR.COLOR cc/6,cc,cc,cc,1            %Galaxien
   SW.BREAK
  SW.CASE 13
   GR.COLOR cc/15,cc,cc,cc,1           %Haufen
   SW.BREAK
  SW.CASE 14
   GR.COLOR cc/20,cc,cc,cc,1           %Superhaufen
   SW.BREAK
  SW.CASE 15
   GR.COLOR cc/6,cc/3,cc,cc/2,1        %Quasar
   SW.BREAK
 SW.END
 otype=gw_t[igw]
 GOSUB objdarst
NEXT
! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
