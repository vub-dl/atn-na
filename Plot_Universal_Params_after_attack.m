clear
close all
format long
clc
set(0,'DefaultLineLineWidth',1.5)
set(0,'DefaultaxesLineWidth',1.5)
set(0,'DefaultaxesFontSize',18)
%
fileName='Domestic/Results/1996_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl1996(i) = fscanf(FID,'%e ',1);
    sb1996(i) = fscanf(FID,'%e ',1);
    se1996(i) = fscanf(FID,'%e ',1);
    airin1996(i) = fscanf(FID,'%e ',1);
    airout1996(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
%
fileName='Domestic/Results/1997_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl1997(i) = fscanf(FID,'%e ',1);
    sb1997(i) = fscanf(FID,'%e ',1);
    se1997(i) = fscanf(FID,'%e ',1);
    airin1997(i) = fscanf(FID,'%e ',1);
    airout1997(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
%
fileName='Domestic/Results/1998_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl1998(i) = fscanf(FID,'%e ',1);
    sb1998(i) = fscanf(FID,'%e ',1);
    se1998(i) = fscanf(FID,'%e ',1);
    airin1998(i) = fscanf(FID,'%e ',1);
    airout1998(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
%
fileName='Domestic/Results/1999_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl1999(i) = fscanf(FID,'%e ',1);
    sb1999(i) = fscanf(FID,'%e ',1);
    se1999(i) = fscanf(FID,'%e ',1);
    airin1999(i) = fscanf(FID,'%e ',1);
    airout1999(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
%
fileName='Domestic/Results/2000_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2000(i) = fscanf(FID,'%e ',1);
    sb2000(i) = fscanf(FID,'%e ',1);
    se2000(i) = fscanf(FID,'%e ',1);
    airin2000(i) = fscanf(FID,'%e ',1);
    airout2000(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
% 
fileName='Domestic/Results/2001_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2001(i) = fscanf(FID,'%e ',1);
    sb2001(i) = fscanf(FID,'%e ',1);
    se2001(i) = fscanf(FID,'%e ',1);
    airin2001(i) = fscanf(FID,'%e ',1);
    airout2001(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
% %
fileName='Domestic/Results/2002_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2002(i) = fscanf(FID,'%e ',1);
    sb2002(i) = fscanf(FID,'%e ',1);
    se2002(i) = fscanf(FID,'%e ',1);
    airin2002(i) = fscanf(FID,'%e ',1);
    airout2002(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
% %
fileName='Domestic/Results/2003_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2003(i) = fscanf(FID,'%e ',1);
    sb2003(i) = fscanf(FID,'%e ',1);
    se2003(i) = fscanf(FID,'%e ',1);
    airin2003(i) = fscanf(FID,'%e ',1);
    airout2003(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
% %
fileName='Domestic/Results/2004_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2004(i) = fscanf(FID,'%e ',1);
    sb2004(i) = fscanf(FID,'%e ',1);
    se2004(i) = fscanf(FID,'%e ',1);
    airin2004(i) = fscanf(FID,'%e ',1);
    airout2004(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
% %
fileName='Domestic/Results/2005_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2005(i) = fscanf(FID,'%e ',1);
    sb2005(i) = fscanf(FID,'%e ',1);
    se2005(i) = fscanf(FID,'%e ',1);
    airin2005(i) = fscanf(FID,'%e ',1);
    airout2005(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
% %
fileName='Domestic/Results/2006_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2006(i) = fscanf(FID,'%e ',1);
    sb2006(i) = fscanf(FID,'%e ',1);
    se2006(i) = fscanf(FID,'%e ',1);
    airin2006(i) = fscanf(FID,'%e ',1);
    airout2006(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
% %
fileName='Domestic/Results/2007_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2007(i) = fscanf(FID,'%e ',1);
    sb2007(i) = fscanf(FID,'%e ',1);
    se2007(i) = fscanf(FID,'%e ',1);
    airin2007(i) = fscanf(FID,'%e ',1);
    airout2007(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
% %
fileName='Domestic/Results/2008_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2008(i) = fscanf(FID,'%e ',1);
    sb2008(i) = fscanf(FID,'%e ',1);
    se2008(i) = fscanf(FID,'%e ',1);
    airin2008(i) = fscanf(FID,'%e ',1);
    airout2008(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
% %
fileName='Domestic/Results/2009_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2009(i) = fscanf(FID,'%e ',1);
    sb2009(i) = fscanf(FID,'%e ',1);
    se2009(i) = fscanf(FID,'%e ',1);
    airin2009(i) = fscanf(FID,'%e ',1);
    airout2009(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
% %
fileName='Domestic/Results/2010_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2010(i) = fscanf(FID,'%e ',1);
    sb2010(i) = fscanf(FID,'%e ',1);
    se2010(i) = fscanf(FID,'%e ',1);
    airin2010(i) = fscanf(FID,'%e ',1);
    airout2010(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
%
fileName='Domestic/Results/2011_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2011(i) = fscanf(FID,'%e ',1);
    sb2011(i) = fscanf(FID,'%e ',1);
    se2011(i) = fscanf(FID,'%e ',1);
    airin2011(i) = fscanf(FID,'%e ',1);
    airout2011(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
%
fileName='Domestic/Results/2012_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2012(i) = fscanf(FID,'%e ',1);
    sb2012(i) = fscanf(FID,'%e ',1);
    se2012(i) = fscanf(FID,'%e ',1);
    airin2012(i) = fscanf(FID,'%e ',1);
    airout2012(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
%
fileName='Domestic/Results/2013_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2013(i) = fscanf(FID,'%e ',1);
    sb2013(i) = fscanf(FID,'%e ',1);
    se2013(i) = fscanf(FID,'%e ',1);
    airin2013(i) = fscanf(FID,'%e ',1);
    airout2013(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
%
fileName='Domestic/Results/2014_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2014(i) = fscanf(FID,'%e ',1);
    sb2014(i) = fscanf(FID,'%e ',1);
    se2014(i) = fscanf(FID,'%e ',1);
    airin2014(i) = fscanf(FID,'%e ',1);
    airout2014(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
%
fileName='Domestic/Results/2015_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2015(i) = fscanf(FID,'%e ',1);
    sb2015(i) = fscanf(FID,'%e ',1);
    se2015(i) = fscanf(FID,'%e ',1);
    airin2015(i) = fscanf(FID,'%e ',1);
    airout2015(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
%
fileName='Domestic/Results/2016_wBetweenness/Universal_Params_after_attack.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',19);
for i=1:50
    iteration = fscanf(FID,'%i ',1);
    removed_airport = fscanf(FID,'%i ',1);
    sspl2016(i) = fscanf(FID,'%e ',1);
    sb2016(i) = fscanf(FID,'%e ',1);
    se2016(i) = fscanf(FID,'%e ',1);
    airin2016(i) = fscanf(FID,'%e ',1);
    airout2016(i) = fscanf(FID,'%e \n',1);
end
fclose(FID);
%
% Plot 5 instances
Years=[1996:2016];
ASPL1996=sspl1996./(airin1996/2+airout1996/2)./(airin1996/2+airout1996/2-1);
NE1996=se1996./(airin1996/2+airout1996/2)./(airin1996/2+airout1996/2-1);
B1996=sb1996./(airin1996/2+airout1996/2)./(airin1996/2+airout1996/2-1);
% 
ASPL2001=sspl2001./(airin2001/2+airout2001/2)./(airin2001/2+airout2001/2-1);
NE2001=se2001./(airin2001/2+airout2001/2)./(airin2001/2+airout2001/2-1);
B2001=sb2001./(airin2001/2+airout2001/2)./(airin2001/2+airout2001/2-1);
% 
ASPL2006=sspl2006./(airin2006/2+airout2006/2)./(airin2006/2+airout2006/2-1);
NE2006=se2006./(airin2006/2+airout2006/2)./(airin2006/2+airout2006/2-1);
B2006=sb2006./(airin2006/2+airout2006/2)./(airin2006/2+airout2006/2-1);
% 
ASPL2011=sspl2011./(airin2011/2+airout2011/2)./(airin2011/2+airout2011/2-1);
NE2011=se2011./(airin2011/2+airout2011/2)./(airin2011/2+airout2011/2-1);
B2011=sb2011./(airin2011/2+airout2011/2)./(airin2011/2+airout2011/2-1);
% 
ASPL2016=sspl2016./(airin2016/2+airout2016/2)./(airin2016/2+airout2016/2-1);
NE2016=se2016./(airin2016/2+airout2016/2)./(airin2016/2+airout2016/2-1);
B2016=sb2016./(airin2016/2+airout2016/2)./(airin2016/2+airout2016/2-1);
% 
% figure
% plot(1:50,ASPL1996/max(ASPL1996),'^y','MarkerFaceColor','y')
% hold on
% plot(1:50,ASPL2001/max(ASPL2001),'om','MarkerFaceColor','m')
% hold on
% plot(1:50,ASPL2006/max(ASPL2006),'vb','MarkerFaceColor','b')
% hold on
% plot(1:50,ASPL2011/max(ASPL2011),'sr','MarkerFaceColor','r')
% hold on
% plot(1:50,ASPL2016/max(ASPL2016),'dk','MarkerFaceColor','k')
% ylabel('Average Shortest Path Length')
% xlabel('Removed Airports')
% legend('1996','2001','2006','2011','2016','Location','Southwest')
% grid on
% 
figure
plot(1:50,NE1996/max(NE1996),'dk','MarkerFaceColor','w')
hold on
plot(1:50,NE2001/max(NE2001),'om','MarkerFaceColor','m')
hold on
plot(1:50,NE2006/max(NE2006),'vb','MarkerFaceColor','b')
hold on
plot(1:50,NE2011/max(NE2011),'sr','MarkerFaceColor','r')
hold on
plot(1:50,NE2016/max(NE2016),'dk','MarkerFaceColor','k')
ylabel('\it{E}')
xlabel('Removed Airports')
legend('1996','2001','2006','2011','2016','Location','Northeast')
grid on
% axis([0 10 0.8 1])
print(gcf, '-dpng', 'after_attack_E.png');
% 
% figure
% plot(1:50,B1996,'^y','MarkerFaceColor','y')
% hold on
% plot(1:50,B2001,'om','MarkerFaceColor','m')
% hold on
% plot(1:50,B2006,'vb','MarkerFaceColor','b')
% hold on
% plot(1:50,B2011,'sr','MarkerFaceColor','r')
% hold on
% plot(1:50,B2016,'dk','MarkerFaceColor','k')
% ylabel('B')
% xlabel('Removed Airports')
% legend('1996','2001','2006','2011','2016','Location','Southwest')
% grid on
%
figure
plot(1:50,(airin1996/2+airout1996/2)/max(airin1996/2+airout1996/2),'dk','MarkerFaceColor','w')
hold on
plot(1:50,(airin2001/2+airout2001/2)/max(airin2001/2+airout2001/2),'om','MarkerFaceColor','m')
hold on
plot(1:50,(airin2006/2+airout2006/2)/max(airin2006/2+airout2006/2),'vb','MarkerFaceColor','b')
hold on
plot(1:50,(airin2011/2+airout2011/2)/max(airin2011/2+airout2011/2),'sr','MarkerFaceColor','r')
hold on
plot(1:50,(airin2016/2+airout2016/2)/max(airin2016/2+airout2016/2),'dk','MarkerFaceColor','k')
ylabel('\it{S}')
xlabel('Removed Airports')
legend('1996','2001','2006','2011','2016','Location','Southwest')
grid on
% axis([0 10 0.95 1])
print(gcf, '-dpng', 'after_attack_S.png');
%
% Plot all time instances for NE
NE1997=se1997./(airin1997/2+airout1997/2)./(airin1997/2+airout1997/2-1);
NE1998=se1998./(airin1998/2+airout1998/2)./(airin1998/2+airout1998/2-1);
NE1999=se1999./(airin1999/2+airout1999/2)./(airin1999/2+airout1999/2-1);
NE2000=se2000./(airin2000/2+airout2000/2)./(airin2000/2+airout2000/2-1);
NE2002=se2002./(airin2002/2+airout2002/2)./(airin2002/2+airout2002/2-1);
NE2003=se2003./(airin2003/2+airout2003/2)./(airin2003/2+airout2003/2-1);
NE2004=se2004./(airin2004/2+airout2004/2)./(airin2004/2+airout2004/2-1);
NE2005=se2005./(airin2005/2+airout2005/2)./(airin2005/2+airout2005/2-1);
NE2007=se2007./(airin2007/2+airout2007/2)./(airin2007/2+airout2007/2-1);
NE2008=se2008./(airin2008/2+airout2008/2)./(airin2008/2+airout2008/2-1);
NE2009=se2009./(airin2009/2+airout2009/2)./(airin2009/2+airout2009/2-1);
NE2010=se2010./(airin2010/2+airout2010/2)./(airin2010/2+airout2010/2-1);
NE2012=se2012./(airin2012/2+airout2012/2)./(airin2012/2+airout2012/2-1);
NE2013=se2013./(airin2013/2+airout2013/2)./(airin2013/2+airout2013/2-1);
NE2014=se2014./(airin2014/2+airout2014/2)./(airin2014/2+airout2014/2-1);
NE2015=se2015./(airin2015/2+airout2015/2)./(airin2015/2+airout2015/2-1);
for i=1:10
    NE_all(i,1)=NE1996(i)/max(NE1996);
    NE_all(i,2)=NE1997(i)/max(NE1997);
    NE_all(i,3)=NE1998(i)/max(NE1998);
    NE_all(i,4)=NE1999(i)/max(NE1999);
    NE_all(i,5)=NE2000(i)/max(NE2000);
    NE_all(i,6)=NE2001(i)/max(NE2001);
    NE_all(i,7)=NE2002(i)/max(NE2002);
    NE_all(i,8)=NE2003(i)/max(NE2003);
    NE_all(i,9)=NE2004(i)/max(NE2004);
    NE_all(i,10)=NE2005(i)/max(NE2005);
    NE_all(i,11)=NE2006(i)/max(NE2006);
    NE_all(i,12)=NE2007(i)/max(NE2007);
    NE_all(i,13)=NE2008(i)/max(NE2008);
    NE_all(i,14)=NE2009(i)/max(NE2009);
    NE_all(i,15)=NE2010(i)/max(NE2010);
    NE_all(i,16)=NE2011(i)/max(NE2011);
    NE_all(i,17)=NE2012(i)/max(NE2012);
    NE_all(i,18)=NE2013(i)/max(NE2013);
    NE_all(i,19)=NE2014(i)/max(NE2014);
    NE_all(i,20)=NE2015(i)/max(NE2015);
    NE_all(i,21)=NE2016(i)/max(NE2016);
end
%
figure
plot(Years,NE_all(1,:),'-r',Years,NE_all(2,:),'-r',Years,NE_all(3,:),'-r',Years,NE_all(4,:),'-r',Years,NE_all(5,:),'-r',...
    Years,NE_all(6,:),'-r',Years,NE_all(7,:),'-r',Years,NE_all(8,:),'-r',Years,NE_all(9,:),'-r',Years,NE_all(10,:),'-r')
ylabel('\it{E}')
xlabel('\it{t}\rm{, Years}')
axis([1996 2016 0.65 1])
grid on
print(gcf, '-dpng', 'top_ten_E.png');
% figure
% contourf(Years,1:10,NE_all,10,'LineColor','None');
% colormap(flipud(hot))
% ylabel('E')
% xlabel('Years')
%
% Plot all time instances for S
S1996=(airin1996/2+airout1996/2);
S1997=(airin1997/2+airout1997/2);
S1998=(airin1998/2+airout1998/2);
S1999=(airin1999/2+airout1999/2);
S2000=(airin2000/2+airout2000/2);
S2001=(airin2001/2+airout2001/2);
S2002=(airin2002/2+airout2002/2);
S2003=(airin2003/2+airout2003/2);
S2004=(airin2004/2+airout2004/2);
S2005=(airin2005/2+airout2005/2);
S2006=(airin2006/2+airout2006/2);
S2007=(airin2007/2+airout2007/2);
S2008=(airin2008/2+airout2008/2);
S2009=(airin2009/2+airout2009/2);
S2010=(airin2010/2+airout2010/2);
S2011=(airin2011/2+airout2011/2);
S2012=(airin2012/2+airout2012/2);
S2013=(airin2013/2+airout2013/2);
S2014=(airin2014/2+airout2014/2);
S2015=(airin2015/2+airout2015/2);
S2016=(airin2016/2+airout2016/2);
for i=1:10
    S_all(i,1)=S1996(i)/max(S1996);
    S_all(i,2)=S1997(i)/max(S1997);
    S_all(i,3)=S1998(i)/max(S1998);
    S_all(i,4)=S1999(i)/max(S1999);
    S_all(i,5)=S2000(i)/max(S2000);
    S_all(i,6)=S2001(i)/max(S2001);
    S_all(i,7)=S2002(i)/max(S2002);
    S_all(i,8)=S2003(i)/max(S2003);
    S_all(i,9)=S2004(i)/max(S2004);
    S_all(i,10)=S2005(i)/max(S2005);
    S_all(i,11)=S2006(i)/max(S2006);
    S_all(i,12)=S2007(i)/max(S2007);
    S_all(i,13)=S2008(i)/max(S2008);
    S_all(i,14)=S2009(i)/max(S2009);
    S_all(i,15)=S2010(i)/max(S2010);
    S_all(i,16)=S2011(i)/max(S2011);
    S_all(i,17)=S2012(i)/max(S2012);
    S_all(i,18)=S2013(i)/max(S2013);
    S_all(i,19)=S2014(i)/max(S2014);
    S_all(i,20)=S2015(i)/max(S2015);
    S_all(i,21)=S2016(i)/max(S2016);
end
%
figure
plot(Years,S_all(1,:),'-r',Years,S_all(2,:),'-r',Years,S_all(3,:),'-r',Years,S_all(4,:),'-r',Years,S_all(5,:),'-r',...
    Years,S_all(6,:),'-r',Years,S_all(7,:),'-r',Years,S_all(8,:),'-r',Years,S_all(9,:),'-r',Years,S_all(10,:),'-r')
ylabel('\it{S}')
xlabel('\it{t}\rm{, Years}')
axis([1996 2016 0.93 1])
grid on
print(gcf, '-dpng', 'top_ten_S.png');
