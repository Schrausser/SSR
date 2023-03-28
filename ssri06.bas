!!
    SSR Info 06: Astronomische Parameter 1
       © 2020 by Dietmar Schrausser
!!
c=255
au=1.4959787*10^11       % // Astronomische Einheit m //
c=2.99792458*10^8        % //Lichtgeschwindigkeit m/s //
jr=24*365.25             % // Stunden pro Jahr        //
Lj=(c*3.6)*jr            % // Ein Lichtjahr in km     //
Lh=(Lj/365.25)/24        % // Eine Lichtstunde in km  //
Lm=Lh/60                 % // Eine Lichtminute in km  //
pc=3.0856776*10^16       % // Ein Parsec pc in m      //
la=Lj/(au/1000)          % // Lj in AE km             //
lha=Lh/(au/1000)         % // Lh in AE km             //
lma=Lm/(au/1000)         % // Lm in AE km             //
pca=(pc/1000)/(au/1000)  % // pc in AE km             //
pcl=(pc/1000)/Lj         % // pc in Lj                //
GOSUB txt06
a06=sx/54
b06=sy/33
c06=sy/51.3
GR.COLOR 200,150,150,150
GR.CLS
GR.TEXT.SETFONT "courier","",1
GR.TEXT.ALIGN 1
GR.TEXT.BOLD 1
GR.TEXT.SIZE sx/25
GR.TEXT.DRAW tx,a06,sy/77,CHR$(8560)+" Astronomische Parameter:"
GR.LINE ln, 0,sy/42.6,sx,sy/42.6
GR.TEXT.SIZE sx/32
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
t06$[2]= "c ="+FORMAT$("### ######.##",c)+" m/s" 
t06$[3]= "bzw."
t06$[4]= "c ="+FORMAT$("#### ######.##",c*3.6)+" km/h" 
t06$[5]= "und astronomischer Einheit"
t06$[6]= "AE ="+FORMAT$("### ######.##",au/1000)+ " km"
t06$[7]= "beträgt ein Lichtjahr
t06$[8]= "Lj ="+FORMAT$("# ###### ######.##",Lj)+" km,"
t06$[9]= "Lj ="+FORMAT$("#####.##",la)+" AE,"
t06$[10]= "eine Lichtstunde
t06$[11]= "Lh ="+FORMAT$("#### ######.##",Lh)+" km,"
t06$[12]= "Lh ="+FORMAT$("##.##",lha)+" AE,"
t06$[13]= "eine Lichtminute
t06$[14]= "Lm ="+FORMAT$("## ######.##",Lm)+" km,"
t06$[15]= "Lm ="+FORMAT$("#0.##",lma)+" AE,"
t06$[16]= "sowie ein Parsec"
t06$[17]= "pc ="+FORMAT$("## ###### ######.##",pc/1000)+" km,"
t06$[18]= "pc ="+FORMAT$("######.##",pca)+ " AE"
t06$[19]= "oder"
t06$[20]= "pc ="+FORMAT$("#.##",pcl)+" Lj  bzw. kpc ="+FORMAT$("####.##",pcl*1000)+" Lj."
RETURN
END_06:
tc2=0
PAUSE 100
! // END //
! //
