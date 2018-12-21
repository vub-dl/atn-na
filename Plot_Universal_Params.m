clear
close all
format long
clc
set(0,'DefaultLineLineWidth',1.5)
set(0,'DefaultaxesLineWidth',1.5)
set(0,'DefaultaxesFontSize',15)
%
fileName='Domestic/Results/1996/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p1996 = fscanf(FID,'%e ',1);
f1996 = fscanf(FID,'%e ',1);
d1996 = fscanf(FID,'%e ',1);
r1996 = fscanf(FID,'%e ',1);
airin1996 = fscanf(FID,'%e ',1);
airout1996 = fscanf(FID,'%e ',1);
ccin1996 = fscanf(FID,'%e ',1);
ccout1996 = fscanf(FID,'%e ',1);
sspl1996 = fscanf(FID,'%e ',1);
se1996 = fscanf(FID,'%e ',1);
Ginin1996 = fscanf(FID,'%e ',1);
Ginout1996 = fscanf(FID,'%e ',1);
R1996 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/1997/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p1997 = fscanf(FID,'%e ',1);
f1997 = fscanf(FID,'%e ',1);
d1997 = fscanf(FID,'%e ',1);
r1997 = fscanf(FID,'%e ',1);
airin1997 = fscanf(FID,'%e ',1);
airout1997 = fscanf(FID,'%e ',1);
ccin1997 = fscanf(FID,'%e ',1);
ccout1997 = fscanf(FID,'%e ',1);
sspl1997 = fscanf(FID,'%e ',1);
se1997 = fscanf(FID,'%e ',1);
Ginin1997 = fscanf(FID,'%e ',1);
Ginout1997 = fscanf(FID,'%e ',1);
R1997 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/1998/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p1998 = fscanf(FID,'%e ',1);
f1998 = fscanf(FID,'%e ',1);
d1998 = fscanf(FID,'%e ',1);
r1998 = fscanf(FID,'%e ',1);
airin1998 = fscanf(FID,'%e ',1);
airout1998 = fscanf(FID,'%e ',1);
ccin1998 = fscanf(FID,'%e ',1);
ccout1998 = fscanf(FID,'%e ',1);
sspl1998 = fscanf(FID,'%e ',1);
se1998 = fscanf(FID,'%e ',1);
Ginin1998 = fscanf(FID,'%e ',1);
Ginout1998 = fscanf(FID,'%e ',1);
R1998 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/1999/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p1999 = fscanf(FID,'%e ',1);
f1999 = fscanf(FID,'%e ',1);
d1999 = fscanf(FID,'%e ',1);
r1999 = fscanf(FID,'%e ',1);
airin1999 = fscanf(FID,'%e ',1);
airout1999 = fscanf(FID,'%e ',1);
ccin1999 = fscanf(FID,'%e ',1);
ccout1999 = fscanf(FID,'%e ',1);
sspl1999 = fscanf(FID,'%e ',1);
se1999 = fscanf(FID,'%e ',1);
Ginin1999 = fscanf(FID,'%e ',1);
Ginout1999 = fscanf(FID,'%e ',1);
R1999 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2000/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2000 = fscanf(FID,'%e ',1);
f2000 = fscanf(FID,'%e ',1);
d2000 = fscanf(FID,'%e ',1);
r2000 = fscanf(FID,'%e ',1);
airin2000 = fscanf(FID,'%e ',1);
airout2000 = fscanf(FID,'%e ',1);
ccin2000 = fscanf(FID,'%e ',1);
ccout2000 = fscanf(FID,'%e ',1);
sspl2000 = fscanf(FID,'%e ',1);
se2000 = fscanf(FID,'%e ',1);
Ginin2000 = fscanf(FID,'%e ',1);
Ginout2000 = fscanf(FID,'%e ',1);
R2000 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2001/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2001 = fscanf(FID,'%e ',1);
f2001 = fscanf(FID,'%e ',1);
d2001 = fscanf(FID,'%e ',1);
r2001 = fscanf(FID,'%e ',1);
airin2001 = fscanf(FID,'%e ',1);
airout2001 = fscanf(FID,'%e ',1);
ccin2001 = fscanf(FID,'%e ',1);
ccout2001 = fscanf(FID,'%e ',1);
sspl2001 = fscanf(FID,'%e ',1);
se2001 = fscanf(FID,'%e ',1);
Ginin2001 = fscanf(FID,'%e ',1);
Ginout2001 = fscanf(FID,'%e ',1);
R2001 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2002/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2002 = fscanf(FID,'%e ',1);
f2002 = fscanf(FID,'%e ',1);
d2002 = fscanf(FID,'%e ',1);
r2002 = fscanf(FID,'%e ',1);
airin2002 = fscanf(FID,'%e ',1);
airout2002 = fscanf(FID,'%e ',1);
ccin2002 = fscanf(FID,'%e ',1);
ccout2002 = fscanf(FID,'%e ',1);
sspl2002 = fscanf(FID,'%e ',1);
se2002 = fscanf(FID,'%e ',1);
Ginin2002 = fscanf(FID,'%e ',1);
Ginout2002 = fscanf(FID,'%e ',1);
R2002 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2003/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2003 = fscanf(FID,'%e ',1);
f2003 = fscanf(FID,'%e ',1);
d2003 = fscanf(FID,'%e ',1);
r2003 = fscanf(FID,'%e ',1);
airin2003 = fscanf(FID,'%e ',1);
airout2003 = fscanf(FID,'%e ',1);
ccin2003 = fscanf(FID,'%e ',1);
ccout2003 = fscanf(FID,'%e ',1);
sspl2003 = fscanf(FID,'%e ',1);
se2003 = fscanf(FID,'%e ',1);
Ginin2003 = fscanf(FID,'%e ',1);
Ginout2003 = fscanf(FID,'%e ',1);
R2003 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2004/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2004 = fscanf(FID,'%e ',1);
f2004 = fscanf(FID,'%e ',1);
d2004 = fscanf(FID,'%e ',1);
r2004 = fscanf(FID,'%e ',1);
airin2004 = fscanf(FID,'%e ',1);
airout2004 = fscanf(FID,'%e ',1);
ccin2004 = fscanf(FID,'%e ',1);
ccout2004 = fscanf(FID,'%e ',1);
sspl2004 = fscanf(FID,'%e ',1);
se2004 = fscanf(FID,'%e ',1);
Ginin2004 = fscanf(FID,'%e ',1);
Ginout2004 = fscanf(FID,'%e ',1);
R2004 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2005/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2005 = fscanf(FID,'%e ',1);
f2005 = fscanf(FID,'%e ',1);
d2005 = fscanf(FID,'%e ',1);
r2005 = fscanf(FID,'%e ',1);
airin2005 = fscanf(FID,'%e ',1);
airout2005 = fscanf(FID,'%e ',1);
ccin2005 = fscanf(FID,'%e ',1);
ccout2005 = fscanf(FID,'%e ',1);
sspl2005 = fscanf(FID,'%e ',1);
se2005 = fscanf(FID,'%e ',1);
Ginin2005 = fscanf(FID,'%e ',1);
Ginout2005 = fscanf(FID,'%e ',1);
R2005 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2006/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2006 = fscanf(FID,'%e ',1);
f2006 = fscanf(FID,'%e ',1);
d2006 = fscanf(FID,'%e ',1);
r2006 = fscanf(FID,'%e ',1);
airin2006 = fscanf(FID,'%e ',1);
airout2006 = fscanf(FID,'%e ',1);
ccin2006 = fscanf(FID,'%e ',1);
ccout2006= fscanf(FID,'%e ',1);
sspl2006 = fscanf(FID,'%e ',1);
se2006 = fscanf(FID,'%e ',1);
Ginin2006 = fscanf(FID,'%e ',1);
Ginout2006 = fscanf(FID,'%e ',1);
R2006 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2007/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2007 = fscanf(FID,'%e ',1);
f2007 = fscanf(FID,'%e ',1);
d2007 = fscanf(FID,'%e ',1);
r2007 = fscanf(FID,'%e ',1);
airin2007 = fscanf(FID,'%e ',1);
airout2007 = fscanf(FID,'%e ',1);
ccin2007 = fscanf(FID,'%e ',1);
ccout2007 = fscanf(FID,'%e ',1);
sspl2007 = fscanf(FID,'%e ',1);
se2007 = fscanf(FID,'%e ',1);
Ginin2007 = fscanf(FID,'%e ',1);
Ginout2007 = fscanf(FID,'%e ',1);
R2007 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2008/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2008 = fscanf(FID,'%e ',1);
f2008 = fscanf(FID,'%e ',1);
d2008 = fscanf(FID,'%e ',1);
r2008 = fscanf(FID,'%e ',1);
airin2008 = fscanf(FID,'%e ',1);
airout2008 = fscanf(FID,'%e ',1);
ccin2008 = fscanf(FID,'%e ',1);
ccout2008 = fscanf(FID,'%e ',1);
sspl2008 = fscanf(FID,'%e ',1);
se2008 = fscanf(FID,'%e ',1);
Ginin2008 = fscanf(FID,'%e ',1);
Ginout2008 = fscanf(FID,'%e ',1);
R2008 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2009/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2009 = fscanf(FID,'%e ',1);
f2009 = fscanf(FID,'%e ',1);
d2009 = fscanf(FID,'%e ',1);
r2009 = fscanf(FID,'%e ',1);
airin2009 = fscanf(FID,'%e ',1);
airout2009 = fscanf(FID,'%e ',1);
ccin2009 = fscanf(FID,'%e ',1);
ccout2009 = fscanf(FID,'%e ',1);
sspl2009 = fscanf(FID,'%e ',1);
se2009 = fscanf(FID,'%e ',1);
Ginin2009 = fscanf(FID,'%e ',1);
Ginout2009 = fscanf(FID,'%e ',1);
R2009 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2010/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2010 = fscanf(FID,'%e ',1);
f2010 = fscanf(FID,'%e ',1);
d2010 = fscanf(FID,'%e ',1);
r2010 = fscanf(FID,'%e ',1);
airin2010 = fscanf(FID,'%e ',1);
airout2010 = fscanf(FID,'%e ',1);
ccin2010 = fscanf(FID,'%e ',1);
ccout2010 = fscanf(FID,'%e ',1);
sspl2010 = fscanf(FID,'%e ',1);
se2010 = fscanf(FID,'%e ',1);
Ginin2010 = fscanf(FID,'%e ',1);
Ginout2010 = fscanf(FID,'%e ',1);
R2010 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2011/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2011 = fscanf(FID,'%e ',1);
f2011 = fscanf(FID,'%e ',1);
d2011 = fscanf(FID,'%e ',1);
r2011 = fscanf(FID,'%e ',1);
airin2011 = fscanf(FID,'%e ',1);
airout2011 = fscanf(FID,'%e ',1);
ccin2011 = fscanf(FID,'%e ',1);
ccout2011 = fscanf(FID,'%e ',1);
sspl2011 = fscanf(FID,'%e ',1);
se2011 = fscanf(FID,'%e ',1);
Ginin2011 = fscanf(FID,'%e ',1);
Ginout2011 = fscanf(FID,'%e ',1);
R2011 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2012/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2012 = fscanf(FID,'%e ',1);
f2012 = fscanf(FID,'%e ',1);
d2012 = fscanf(FID,'%e ',1);
r2012 = fscanf(FID,'%e ',1);
airin2012 = fscanf(FID,'%e ',1);
airout2012 = fscanf(FID,'%e ',1);
ccin2012 = fscanf(FID,'%e ',1);
ccout2012 = fscanf(FID,'%e ',1);
sspl2012 = fscanf(FID,'%e ',1);
se2012 = fscanf(FID,'%e ',1);
Ginin2012 = fscanf(FID,'%e ',1);
Ginout2012 = fscanf(FID,'%e ',1);
R2012 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2013/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2013 = fscanf(FID,'%e ',1);
f2013 = fscanf(FID,'%e ',1);
d2013 = fscanf(FID,'%e ',1);
r2013 = fscanf(FID,'%e ',1);
airin2013 = fscanf(FID,'%e ',1);
airout2013 = fscanf(FID,'%e ',1);
ccin2013 = fscanf(FID,'%e ',1);
ccout2013 = fscanf(FID,'%e ',1);
sspl2013 = fscanf(FID,'%e ',1);
se2013 = fscanf(FID,'%e ',1);
Ginin2013 = fscanf(FID,'%e ',1);
Ginout2013 = fscanf(FID,'%e ',1);
R2013 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2014/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2014 = fscanf(FID,'%e ',1);
f2014 = fscanf(FID,'%e ',1);
d2014 = fscanf(FID,'%e ',1);
r2014 = fscanf(FID,'%e ',1);
airin2014 = fscanf(FID,'%e ',1);
airout2014 = fscanf(FID,'%e ',1);
ccin2014 = fscanf(FID,'%e ',1);
ccout2014 = fscanf(FID,'%e ',1);
sspl2014 = fscanf(FID,'%e ',1);
se2014 = fscanf(FID,'%e ',1);
Ginin2014 = fscanf(FID,'%e ',1);
Ginout2014 = fscanf(FID,'%e ',1);
R2014 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2015/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2015 = fscanf(FID,'%e ',1);
f2015 = fscanf(FID,'%e ',1);
d2015 = fscanf(FID,'%e ',1);
r2015 = fscanf(FID,'%e ',1);
airin2015 = fscanf(FID,'%e ',1);
airout2015 = fscanf(FID,'%e ',1);
ccin2015 = fscanf(FID,'%e ',1);
ccout2015 = fscanf(FID,'%e ',1);
sspl2015 = fscanf(FID,'%e ',1);
se2015 = fscanf(FID,'%e ',1);
Ginin2015 = fscanf(FID,'%e ',1);
Ginout2015 = fscanf(FID,'%e ',1);
R2015 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2016/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',35);
p2016 = fscanf(FID,'%e ',1);
f2016 = fscanf(FID,'%e ',1);
d2016 = fscanf(FID,'%e ',1);
r2016 = fscanf(FID,'%e ',1);
airin2016 = fscanf(FID,'%e ',1);
airout2016 = fscanf(FID,'%e ',1);
ccin2016 = fscanf(FID,'%e ',1);
ccout2016 = fscanf(FID,'%e ',1);
sspl2016 = fscanf(FID,'%e ',1);
se2016 = fscanf(FID,'%e ',1);
Ginin2016 = fscanf(FID,'%e ',1);
Ginout2016 = fscanf(FID,'%e ',1);
R2016 = fscanf(FID,'%e ',1);
fclose(FID);
%
Years=[1996:2016];
P=[p1996;p1997;p1998;p1999;p2000;p2001;p2002;p2003;p2004;p2005;p2006;p2007;p2008;p2009;p2010;p2011;p2012;p2013;p2014;p2015;p2016];
F=[f1996;f1997;f1998;f1999;f2000;f2001;f2002;f2003;f2004;f2005;f2006;f2007;f2008;f2009;f2010;f2011;f2012;f2013;f2014;f2015;f2016];
D=[d1996;d1997;d1998;d1999;d2000;d2001;d2002;d2003;d2004;d2005;d2006;d2007;d2008;d2009;d2010;d2011;d2012;d2013;d2014;d2015;d2016];
R=[r1996;r1997;r1998;r1999;r2000;r2001;r2002;r2003;r2004;r2005;r2006;r2007;r2008;r2009;r2010;r2011;r2012;r2013;r2014;r2015;r2016];
AIRin=[airin1996;airin1997;airin1998;airin1999;airin2000;airin2001;airin2002;airin2003;airin2004;airin2005;airin2006;airin2007;airin2008;airin2009;airin2010;airin2011;airin2012;airin2013;airin2014;airin2015;airin2016];
AIRout=[airout1996;airout1997;airout1998;airout1999;airout2000;airout2001;airout2002;airout2003;airout2004;airout2005;airout2006;airout2007;airout2008;airout2009;airout2010;airout2011;airout2012;airout2013;airout2014;airout2015;airout2016];
CCin=[ccin1996;ccin1997;ccin1998;ccin1999;ccin2000;ccin2001;ccin2002;ccin2003;ccin2004;ccin2005;ccin2006;ccin2007;ccin2008;ccin2009;ccin2010;ccin2011;ccin2012;ccin2013;ccin2014;ccin2015;ccin2016];
CCout=[ccout1996;ccout1997;ccout1998;ccout1999;ccout2000;ccout2001;ccout2002;ccout2003;ccout2004;ccout2005;ccout2006;ccout2007;ccout2008;ccout2009;ccout2010;ccout2011;ccout2012;ccout2013;ccout2014;ccout2015;ccout2016];
SSPL=[sspl1996;sspl1997;sspl1998;sspl1999;sspl2000;sspl2001;sspl2002;sspl2003;sspl2004;sspl2005;sspl2006;sspl2007;sspl2008;sspl2009;sspl2010;sspl2011;sspl2012;sspl2013;sspl2014;sspl2015;sspl2016];
SE=[se1996;se1997;se1998;se1999;se2000;se2001;se2002;se2003;se2004;se2005;se2006;se2007;se2008;se2009;se2010;se2011;se2012;se2013;se2014;se2015;se2016];
GINIin=[Ginin1996;Ginin1997;Ginin1998;Ginin1999;Ginin2000;Ginin2001;Ginin2002;Ginin2003;Ginin2004;Ginin2005;Ginin2006;Ginin2007;Ginin2008;Ginin2009;Ginin2010;Ginin2011;Ginin2012;Ginin2013;Ginin2014;Ginin2015;Ginin2016];
GINIout=[Ginout1996;Ginout1997;Ginout1998;Ginout1999;Ginout2000;Ginout2001;Ginout2002;Ginout2003;Ginout2004;Ginout2005;Ginout2006;Ginout2007;Ginout2008;Ginout2009;Ginout2010;Ginout2011;Ginout2012;Ginout2013;Ginout2014;Ginout2015;Ginout2016];
Res=[R1996;R1997;R1998;R1999;R2000;R2001;R2002;R2003;R2004;R2005;R2006;R2007;R2008;R2009;R2010;R2011;R2012;R2013;R2014;R2015;R2016];
%
% % Plot Passengers
% figure
% plot(Years,P,'-sk','MarkerFaceColor','k')
% ylabel('Passengers')
% xlabel('Years')
% axis([1996 2016 5e08 8e08])
% grid on
% %
% % Plot Flights
% figure
% plot(Years,F,'-sk','MarkerFaceColor','k')
% ylabel('Flights')
% xlabel('Years')
% axis([1996 2016 7e06 11e06])
% grid on
figure
yyaxis left
plot(Years,P,'-sb','MarkerFaceColor','b')
ylabel('Passengers')
axis([1996 2016 5e08 8e08])
yyaxis right
plot(Years,F,'-or','MarkerFaceColor','r')
ylabel('Flights')
xlabel('\it{t}\rm{, Years}')
axis([1996 2016 7e06 11e06])
legend('Passengers','Flights','Location','SE')
print(gcf, '-dpng', 'passengers_and_flights.png');
%
% % Plot Airports (Nodes)
% figure
% % plot(Years,AIRin,'-sk','MarkerFaceColor','k')
% % hold on
% % plot(Years,AIRout,'-ok','MarkerFaceColor','w')
% plot(Years,AIRin/2+AIRout/2,'-sk','MarkerFaceColor','k')
% ylabel('Nodes')
% xlabel('Years')
% axis([1996 2016 400 1400])
% grid on
% %
% % Plot Routes (Edges)
% figure
% plot(Years,R,'-sk','MarkerFaceColor','k')
% ylabel('Edges')
% xlabel('Years')
% axis([1996 2016 1.3e04 1.9e04])
% grid on
figure
yyaxis left
plot(Years,AIRin/2+AIRout/2,'-bs','MarkerFaceColor','b')
ylabel('\it{N}')
axis([1996 2016 400 1400])
yyaxis right
plot(Years,R,'-or','MarkerFaceColor','r')
ylabel('\it{M}')
xlabel('\it{t}\rm{, Years}')
axis([1996 2016 0.5e04 3e04])
% legend('\it{N}','\it{M}','Location','S')
legend('Nodes','Edges','Location','SE')
print(gcf, '-dpng', 'nodes_and_edges.png');
%
% Plot Average Flight Distance
AFD=D./F;
AFD=AFD*1.60934;
figure
plot(Years,AFD,'-or','MarkerFaceColor','r')
ylabel('\rm{\langle}\it{D}\rm{\rangle, km}')
xlabel('\it{t}\rm{, Years}')
axis([1996 2016 900 1200])
% legend('\rm{\langle}\it{D}\rm{\rangle}','Location','N')
legend('Average flight distance','Location','N')
print(gcf, '-dpng', 'avg_flight_distance.png');
%
% % Plot Clustering Coefficient
% figure
% % plot(Years,CCin,'-sk','MarkerFaceColor','k')
% % hold on
% % plot(Years,CCout,'-ok','MarkerFaceColor','w')
% plot(Years,CCin/2+CCout/2,'-sk','MarkerFaceColor','k')
% ylabel('CC')
% xlabel('Years')
% axis([1996 2016 0.3 0.6])
% grid on
% %
% % Plot Average Shortest Path Length
% ASPL=SSPL./(AIRin)./(AIRin-1);
% figure
% plot(Years,ASPL,'-sk','MarkerFaceColor','k')
% ylabel('Average Shortest Path Length')
% xlabel('Years')
% axis([1996 2016 2.5 3.5])
% grid on
figure
yyaxis left
plot(Years,CCin/2+CCout/2,'-sb','MarkerFaceColor','b')
ylabel('\rm{\langle}\it{C}\rm{\rangle}')
axis([1996 2016 0.4 0.5])
yyaxis right
ASPL=SSPL./(AIRin)./(AIRin-1);
plot(Years,ASPL,'-or','MarkerFaceColor','r')
ylabel('\rm{\langle}\it{L}\rm{\rangle}')
xlabel('\it{t}\rm{, Years}')
% legend('\rm{\langle}\it{C}\rm{\rangle}','\rm{\langle}\it{L}\rm{\rangle}','Location','S')
legend('Average clustering coefficient','Average shortest path length','Location','NE')
axis([1996 2016 2.5 3.5])

print(gcf, '-dpng', 'clustcoeff_and_avgpathlength.png');
%
% Plot Gini Coefficient
figure
% plot(Years,GINIin,'-sk','MarkerFaceColor','k')
% hold on
% plot(Years,GINIout,'-ok','MarkerFaceColor','w')
plot(Years,GINIin/2+GINIout/2,'-or','MarkerFaceColor','r')
ylabel('\it{G}')
xlabel('\it{t}\rm{, Years}')
axis([1996 2016 0.6 0.7])
% legend('\it{G}','Location','S')
legend('Gini coefficient','Location','S')
print(gcf, '-dpng', 'Gini.png');
%
% % Plot Network Efficiency
% NE=SE./(AIRin)./(AIRin-1);
% figure
% plot(Years,NE,'-sk','MarkerFaceColor','k')
% ylabel('\it{E}')
% xlabel('\it{t}\rm{, Years}')
% axis([1996 2016 0.3 0.45])
% grid on
% print(gcf, '-dpng', 'efficiency.png');
% %
% % Plot Resilience
% figure
% plot(Years,Res,'-sk','MarkerFaceColor','k')
% ylabel('\it{R}')
% xlabel('\it{t}\rm{, Years}')
% axis([1996 2016 1.3e04 1.9e04])
% grid on
% print(gcf, '-dpng', 'resilience.png');
figure
yyaxis left
NE=SE./(AIRin)./(AIRin-1);
plot(Years,NE,'-sb','MarkerFaceColor','b')
ylabel('\it{E}')
axis([1996 2016 0.3 0.45])
yyaxis right
plot(Years,Res,'-or','MarkerFaceColor','r')
ylabel('\it{R}')
xlabel('\it{t}\rm{, Years}')
axis([1996 2016 1.3e04 1.9e04])
% legend('\it{E}','\it{R}','Location','N')
legend('Efficiency','Resilience','Location','NE')
print(gcf, '-dpng', 'efficiency_and_resilience.png');