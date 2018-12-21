% First run "Plot_Universal_Params_wBetweenness.m",
% to obtain total nodes for each year.
% Then run this script

% clear
close all
format long
clc
set(0,'DefaultLineLineWidth',1.5)
set(0,'DefaultaxesLineWidth',1.5)
set(0,'DefaultaxesFontSize',15)
%
%%%%%%%%%%%%%%%%%%%% Read
fileName='Domestic/Results/1996_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:184
    B1996(i)=fscanf(FID,'%e ',1);
    pB1996(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/1997_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:165
    B1997(i)=fscanf(FID,'%e ',1);
    pB1997(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/1998_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:178
    B1998(i)=fscanf(FID,'%e ',1);
    pB1998(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/1999_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:183
    B1999(i)=fscanf(FID,'%e ',1);
    pB1999(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2000_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:204
    B2000(i)=fscanf(FID,'%e ',1);
    pB2000(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2001_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:219
    B2001(i)=fscanf(FID,'%e ',1);
    pB2001(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2002_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:379
    B2002(i)=fscanf(FID,'%e ',1);
    pB2002(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2003_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:409
    B2003(i)=fscanf(FID,'%e ',1);
    pB2003(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2004_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:431
    B2004(i)=fscanf(FID,'%e ',1);
    pB2004(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2005_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:441
    B2005(i)=fscanf(FID,'%e ',1);
    pB2005(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2006_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:444
    B2006(i)=fscanf(FID,'%e ',1);
    pB2006(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2007_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:433
    B2007(i)=fscanf(FID,'%e ',1);
    pB2007(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2008_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:444
    B2008(i)=fscanf(FID,'%e ',1);
    pB2008(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2009_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:443
    B2009(i)=fscanf(FID,'%e ',1);
    pB2009(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2010_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:437
    B2010(i)=fscanf(FID,'%e ',1);
    pB2010(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2011_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:433
    B2011(i)=fscanf(FID,'%e ',1);
    pB2011(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2012_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:400
    B2012(i)=fscanf(FID,'%e ',1);
    pB2012(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2013_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:397
    B2013(i)=fscanf(FID,'%e ',1);
    pB2013(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2014_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:398
    B2014(i)=fscanf(FID,'%e ',1);
    pB2014(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2015_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:389
    B2015(i)=fscanf(FID,'%e ',1);
    pB2015(i)=fscanf(FID,'%e \n',1);    
end
%
fileName='Domestic/Results/2016_wBetweenness/Cumulative_Probabilities_Betweenness.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',3);
for i=1:411
    B2016(i)=fscanf(FID,'%e ',1);
    pB2016(i)=fscanf(FID,'%e \n',1);    
end
%
AIR=AIRin;
B1996=B1996/(AIR(1)-1)/(AIR(1)-2);
B2001=B2001/(AIR(6)-1)/(AIR(6)-2);
B2006=B2006/(AIR(11)-1)/(AIR(11)-2);
B2011=B2011/(AIR(16)-1)/(AIR(16)-2);
B2016=B2016/(AIR(21)-1)/(AIR(12)-2);
%%%%%%%%%%%%%%%%%%%% Plot
% Plot Betweenness
figure
loglog(B1996,pB1996,'dk','MarkerFaceColor','w')
hold on
loglog(B2001,pB2001,'om','MarkerFaceColor','m')
hold on
loglog(B2006,pB2006,'vb','MarkerFaceColor','b')
hold on
loglog(B2011,pB2011,'sr','MarkerFaceColor','r')
hold on
loglog(B2016,pB2016,'dk','MarkerFaceColor','k')
axis([1e-07 1e-0 1e-03 2])
ylabel('\it{P}\rm{(}\it{B}\rm{)}')
xlabel('\it{B}')
legend('1996','2001','2006','2011','2016','Location','Southwest')
print(gcf, '-dpng', 'Cumul_Distribution_Betweenness.png');
%