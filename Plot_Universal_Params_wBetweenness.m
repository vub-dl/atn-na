% First run "Plot_Universal_Params.m",
% to obtain Average Flight Distance (AFD) for each year.
% Then run this script

% clear
close all
format long
clc
set(0,'DefaultLineLineWidth',1.5)
set(0,'DefaultaxesLineWidth',1.5)
set(0,'DefaultaxesFontSize',15)
%
fileName='Domestic/Results/1996_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin1996 = fscanf(FID,'%e ',1);
airout1996 = fscanf(FID,'%e ',1);
sb1996 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/1997_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin1997 = fscanf(FID,'%e ',1);
airout1997 = fscanf(FID,'%e ',1);
sb1997 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/1998_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin1998 = fscanf(FID,'%e ',1);
airout1998 = fscanf(FID,'%e ',1);
sb1998 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/1999_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin1999 = fscanf(FID,'%e ',1);
airout1999 = fscanf(FID,'%e ',1);
sb1999 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2000_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2000 = fscanf(FID,'%e ',1);
airout2000 = fscanf(FID,'%e ',1);
sb2000 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2001_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2001 = fscanf(FID,'%e ',1);
airout2001 = fscanf(FID,'%e ',1);
sb2001 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2002_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2002 = fscanf(FID,'%e ',1);
airout2002 = fscanf(FID,'%e ',1);
sb2002 = fscanf(FID,'%e ',1);
fclose(FID);
%
%
fileName='Domestic/Results/2003_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2003 = fscanf(FID,'%e ',1);
airout2003 = fscanf(FID,'%e ',1);
sb2003 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2004_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2004 = fscanf(FID,'%e ',1);
airout2004 = fscanf(FID,'%e ',1);
sb2004 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2005_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2005 = fscanf(FID,'%e ',1);
airout2005 = fscanf(FID,'%e ',1);
sb2005 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2006_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2006 = fscanf(FID,'%e ',1);
airout2006 = fscanf(FID,'%e ',1);
sb2006 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2007_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2007 = fscanf(FID,'%e ',1);
airout2007 = fscanf(FID,'%e ',1);
sb2007 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2008_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2008 = fscanf(FID,'%e ',1);
airout2008 = fscanf(FID,'%e ',1);
sb2008 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2009_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2009 = fscanf(FID,'%e ',1);
airout2009 = fscanf(FID,'%e ',1);
sb2009 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2010_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2010 = fscanf(FID,'%e ',1);
airout2010 = fscanf(FID,'%e ',1);
sb2010 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2011_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2011 = fscanf(FID,'%e ',1);
airout2011 = fscanf(FID,'%e ',1);
sb2011 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2012_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2012 = fscanf(FID,'%e ',1);
airout2012 = fscanf(FID,'%e ',1);
sb2012 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2013_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2013 = fscanf(FID,'%e ',1);
airout2013 = fscanf(FID,'%e ',1);
sb2013 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2014_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2014 = fscanf(FID,'%e ',1);
airout2014 = fscanf(FID,'%e ',1);
sb2014 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2015_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2015 = fscanf(FID,'%e ',1);
airout2015 = fscanf(FID,'%e ',1);
sb2015 = fscanf(FID,'%e ',1);
fclose(FID);
%
fileName='Domestic/Results/2016_wBetweenness/Universal_Params.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',9);
airin2016 = fscanf(FID,'%e ',1);
airout2016 = fscanf(FID,'%e ',1);
sb2016 = fscanf(FID,'%e ',1);
fclose(FID);
%
Years=[1996:2016];
AIRin=[airin1996;airin1997;airin1998;airin1999;airin2000;airin2001;airin2002;airin2003;airin2004;airin2005;airin2006;airin2007;airin2008;airin2009;airin2010;airin2011;airin2012;airin2013;airin2014;airin2015;airin2016];
AIRout=[airout1996;airout1997;airout1998;airout1999;airout2000;airout2001;airout2002;airout2003;airout2004;airout2005;airout2006;airout2007;airout2008;airout2009;airout2010;airout2011;airout2012;airout2013;airout2014;airout2015;airout2016];
SB=[sb1996;sb1997;sb1998;sb1999;sb2000;sb2001;sb2002;sb2003;sb2004;sb2005;sb2006;sb2007;sb2008;sb2009;sb2010;sb2011;sb2012;sb2013;sb2014;sb2015;sb2016];
%
% Plot Airports (Nodes)
figure
% plot(Years,AIRin,'-sk','MarkerFaceColor','k')
% hold on
% plot(Years,AIRout,'-ok','MarkerFaceColor','w')
plot(Years,AIRin/2+AIRout/2,'-sk','MarkerFaceColor','k')
ylabel('Nodes')
xlabel('Years')
axis([1996 2016 400 1300])
grid on
%
% Betweenness
Bin=SB./(AIRin)./(AIRin-1);
Bout=SB./(AIRout)./(AIRout-1);
figure
% plot(Years,Bin,'-sk','MarkerFaceColor','k')
% hold on
% plot(Years,Bout,'-ok','MarkerFaceColor','w')
plot(Years,Bin/2+Bout/2,'-or','MarkerFaceColor','r')
ylabel('\rm{\langle}\it{B}\rm{\rangle}')
xlabel('\it{t}\rm{, Years}')
axis([1996 2016 1.6 2.3])
grid on
legend('Average betweenness','Location','S')
print(gcf, '-dpng', 'betweenness.png');
%
% Plot Betweenness with average flight distance
% First run "Plot_Universal_Params.m"
figure
yyaxis left
plot(Years,AFD,'-sb','MarkerFaceColor','b')
ylabel('\rm{\langle}\it{D}\rm{\rangle, km}')
axis([1996 2016 900 1200])
yyaxis right
plot(Years,Bin/2+Bout/2,'-or','MarkerFaceColor','r')
ylabel('\rm{\langle}\it{B}\rm{\rangle}')
xlabel('\it{t}\rm{, Years}')
axis([1996 2016 1.6 2.3])
legend('Average flight distance','Average betweenness','Location','SE')
print(gcf, '-dpng', 'distance_and_betweenness.png');

