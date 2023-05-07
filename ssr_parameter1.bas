!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  SSR SONNENSYSTEMROTATION
              Info Subroutine ssr_parameter1.bas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            © 2023 by Dietmar Gerald Schrausser
!!
au06=au_                       %Astronomische Einheit m 
c06=((c_*1000)/60)/60          %Lichtgeschwindigkeit m/s 
jr06=24*365.25                 %Stunden pro Jahr        
Lj06=(c06*3.6)*jr06            %Ein Lichtjahr in km  
Lh06=(Lj06/365.25)/24          %Eine Lichtstunde in km
Lm06=Lh06/60                   %Eine Lichtminute in km
pc06=pcm_                      %Ein Parsec pc in m   
la06=Lj06/(au06/1000)          %Lj in AE km         
lha06=Lh06/(au06/1000)         %Lh in AE km           
lma06=Lm06/(au06/1000)         %Lm in AE km             
pca06=(pc06/1000)/(au06/1000)  %pc in AE km             
pcl06=(pc06/1000)/Lj06         %pc in Lj                
GOSUB txt06
a06=sx/54
b06=sy/33
c06=sy/51.3
GR.TEXT.BOLD 1
GR.COLOR 200,150,150,150,1
GR.CLS
GR.TEXT.SETFONT "courier","",1
GR.TEXT.ALIGN 1
GR.TEXT.SIZE txzi
GR.TEXT.DRAW tx,a06,sy/77,"i Astronomische Parameter:"
GR.LINE ln, 0,sy/42.6,sx,sy/42.6
GR.TEXT.SIZE txzi2
FOR i=1 TO 20
 GR.TEXT.DRAW tx, a06,c06*i+b06,t06$[i]
NEXT
GR.RENDER
DO
 GR.TOUCH2 tc2,tx,ty
 IF tc2:GOTO end_06:ENDIF
UNTIL 0
txt06:
DIM t06$[20]
t06$[1]= "Bei Lichtgeschwindigkeit"
t06$[2]= "c ="+FORMAT$("### ######.##",c06)+" m/s" 
t06$[3]= "bzw."
t06$[4]= "c ="+FORMAT$("#### ######.##",c06*3.6)+" km/h" 
t06$[5]= "und astronomischer Einheit"
t06$[6]= "AE ="+FORMAT$("### ######.##",au06/1000)+ " km"
t06$[7]= "beträgt ein Lichtjahr
t06$[8]= "Lj ="+FORMAT$("# ###### ######.##",Lj06)+" km,"
t06$[9]= "Lj ="+FORMAT$("#####.##",la06)+" AE,"
t06$[10]= "eine Lichtstunde
t06$[11]= "Lh ="+FORMAT$("#### ######.##",Lh06)+" km,"
t06$[12]= "Lh ="+FORMAT$("##.##",lha06)+" AE,"
t06$[13]= "eine Lichtminute
t06$[14]= "Lm ="+FORMAT$("## ######.##",Lm06)+" km,"
t06$[15]= "Lm ="+FORMAT$("#0.##",lma06)+" AE,"
t06$[16]= "sowie ein Parsec"
t06$[17]= "pc ="+FORMAT$("## ###### ######.##",pc06/1000)+" km,"
t06$[18]= "pc ="+FORMAT$("######.##",pca06)+ " AE"
t06$[19]= "oder"
t06$[20]= "pc ="+FORMAT$("#.##",pcl06)+" Lj  bzw. kpc ="+FORMAT$("####.##",pcl06*1000)+" Lj."
RETURN
END_06:
tc2=0
GR.TEXT.BOLD 0
PAUSE 100
! % END %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
