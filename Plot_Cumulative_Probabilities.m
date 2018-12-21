clear
close all
format long
clc
set(0,'DefaultLineLineWidth',1.5)
set(0,'DefaultaxesLineWidth',1.5)
set(0,'DefaultaxesFontSize',18)
%
%%%%%%%%%%%%%%%%%%%% 1996
fileName='Domestic/Results/1996/Cumulative_Probabilities_DegIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:84
    Din1996(i)=fscanf(FID,'%e ',1);
    pDin1996(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/1996/Cumulative_Probabilities_DegreeOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:83
    Dout1996(i)=fscanf(FID,'%e ',1);
    pDout1996(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/1996/Cumulative_Probabilities_FlightsIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:391
    Fin1996(i)=fscanf(FID,'%e ',1);
    pFin1996(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/1996/Cumulative_Probabilities_FlightsOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:385
    Fout1996(i)=fscanf(FID,'%e ',1);
    pFout1996(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/1996/Cumulative_Probabilities_PassengersIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:417
    Pin1996(i)=fscanf(FID,'%e ',1);
    pPin1996(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/1996/Cumulative_Probabilities_PassengersOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:416
    Pout1996(i)=fscanf(FID,'%e ',1);
    pPout1996(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
%%%%%%%%%%%%%%%%%%%% 2001
fileName='Domestic/Results/2001/Cumulative_Probabilities_DegIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:98
    Din2001(i)=fscanf(FID,'%e ',1);
    pDin2001(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2001/Cumulative_Probabilities_DegreeOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:106
    Dout2001(i)=fscanf(FID,'%e ',1);
    pDout2001(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2001/Cumulative_Probabilities_FlightsIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:377
    Fin2001(i)=fscanf(FID,'%e ',1);
    pFin2001(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2001/Cumulative_Probabilities_FlightsOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:383
    Fout2001(i)=fscanf(FID,'%e ',1);
    pFout2001(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2001/Cumulative_Probabilities_PassengersIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:431
    Pin2001(i)=fscanf(FID,'%e ',1);
    pPin2001(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2001/Cumulative_Probabilities_PassengersOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:421
    Pout2001(i)=fscanf(FID,'%e ',1);
    pPout2001(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
%%%%%%%%%%%%%%%%%%%% 2006
fileName='Domestic/Results/2006/Cumulative_Probabilities_DegIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:125
    Din2006(i)=fscanf(FID,'%e ',1);
    pDin2006(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2006/Cumulative_Probabilities_DegreeOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:137
    Dout2006(i)=fscanf(FID,'%e ',1);
    pDout2006(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2006/Cumulative_Probabilities_FlightsIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:777
    Fin2006(i)=fscanf(FID,'%e ',1);
    pFin2006(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2006/Cumulative_Probabilities_FlightsOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:769
    Fout2006(i)=fscanf(FID,'%e ',1);
    pFout2006(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2006/Cumulative_Probabilities_PassengersIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:857
    Pin2006(i)=fscanf(FID,'%e ',1);
    pPin2006(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2006/Cumulative_Probabilities_PassengersOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:842
    Pout2006(i)=fscanf(FID,'%e ',1);
    pPout2006(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
%%%%%%%%%%%%%%%%%%%% 2011
fileName='Domestic/Results/2011/Cumulative_Probabilities_DegIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:129
    Din2011(i)=fscanf(FID,'%e ',1);
    pDin2011(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2011/Cumulative_Probabilities_DegreeOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:140
    Dout2011(i)=fscanf(FID,'%e ',1);
    pDout2011(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2011/Cumulative_Probabilities_FlightsIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:751
    Fin2011(i)=fscanf(FID,'%e ',1);
    pFin2011(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2011/Cumulative_Probabilities_FlightsOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:738
    Fout2011(i)=fscanf(FID,'%e ',1);
    pFout2011(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2011/Cumulative_Probabilities_PassengersIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:834
    Pin2011(i)=fscanf(FID,'%e ',1);
    pPin2011(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2011/Cumulative_Probabilities_PassengersOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:826
    Pout2011(i)=fscanf(FID,'%e ',1);
    pPout2011(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
%%%%%%%%%%%%%%%%%%%% 2016
fileName='Domestic/Results/2016/Cumulative_Probabilities_DegIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:142
    Din2016(i)=fscanf(FID,'%e ',1);
    pDin2016(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2016/Cumulative_Probabilities_DegreeOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:136
    Dout2016(i)=fscanf(FID,'%e ',1);
    pDout2016(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2016/Cumulative_Probabilities_FlightsIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:735
    Fin2016(i)=fscanf(FID,'%e ',1);
    pFin2016(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2016/Cumulative_Probabilities_FlightsOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:730
    Fout2016(i)=fscanf(FID,'%e ',1);
    pFout2016(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2016/Cumulative_Probabilities_PassengersIn.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:835
    Pin2016(i)=fscanf(FID,'%e ',1);
    pPin2016(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
fileName='Domestic/Results/2016/Cumulative_Probabilities_PassengersOut.dat' ;
FID=fopen(fileName,'r');
char1 = fscanf(FID,'%s',5);
for i=1:813
    Pout2016(i)=fscanf(FID,'%e ',1);
    pPout2016(i)=fscanf(FID,'%e \n',1);    
end
fclose(FID);
%
%
%
% Plot Degree In
figure
loglog(Din1996,pDin1996,'dk','MarkerFaceColor','w')
hold on
loglog(Din2001,pDin2001,'om','MarkerFaceColor','m')
hold on
loglog(Din2006,pDin2006,'vb','MarkerFaceColor','b')
hold on
loglog(Din2011,pDin2011,'sr','MarkerFaceColor','r')
hold on
loglog(Din2016,pDin2016,'dk','MarkerFaceColor','k')
axis([0.5 5e02 5e-04 2])
ylabel('\it{P}\rm{(}\it{k}\rm{_i_n)}')
xlabel('\it{k}\rm{_i_n}')
legend('1996','2001','2006','2011','2016','Location','Southwest')
print(gcf, '-dpng', 'Cumul_Distribution_DegreeIn.png');
%
% Plot Degree Out
figure
loglog(Dout1996,pDout1996,'dk','MarkerFaceColor','w')
hold on
loglog(Dout2001,pDout2001,'om','MarkerFaceColor','m')
hold on
loglog(Dout2006,pDout2006,'vb','MarkerFaceColor','b')
hold on
loglog(Dout2011,pDout2011,'sr','MarkerFaceColor','r')
hold on
loglog(Dout2016,pDout2016,'dk','MarkerFaceColor','k')
axis([0.5 5e02 5e-04 2])
ylabel('\it{P}\rm{(}\it{k}\rm{_o_u_t)}')
xlabel('\it{k}\rm{_o_u_t}')
legend('1996','2001','2006','2011','2016','Location','Southwest')
print(gcf, '-dpng', 'Cumul_Distribution_DegreeOut.png');
%
% Plot Flights In
figure
loglog(Fin1996,pFin1996,'dk','MarkerFaceColor','w')
hold on
loglog(Fin2001,pFin2001,'om','MarkerFaceColor','m')
hold on
loglog(Fin2006,pFin2006,'vb','MarkerFaceColor','b')
hold on
loglog(Fin2011,pFin2011,'sr','MarkerFaceColor','r')
hold on
loglog(Fin2016,pFin2016,'dk','MarkerFaceColor','k')
ylabel('P(Flights In)')
xlabel('Flights In')
legend('1996','2001','2006','2011','2016','Location','Southwest')
grid on
%
% Plot Flights Out
figure
loglog(Fout1996,pFout1996,'dk','MarkerFaceColor','w')
hold on
loglog(Fout2001,pFout2001,'om','MarkerFaceColor','m')
hold on
loglog(Fout2006,pFout2006,'vb','MarkerFaceColor','b')
hold on
loglog(Fout2011,pFout2011,'sr','MarkerFaceColor','r')
hold on
loglog(Fout2016,pFout2016,'dk','MarkerFaceColor','k')
ylabel('P(Flights Out)')
xlabel('Flights Out')
legend('1996','2001','2006','2011','2016','Location','Southwest')
grid on
%
% Plot Passengers In
figure
loglog(Pin1996,pPin1996,'dk','MarkerFaceColor','w')
hold on
loglog(Pin2001,pPin2001,'om','MarkerFaceColor','m')
hold on
loglog(Pin2006,pPin2006,'vb','MarkerFaceColor','b')
hold on
loglog(Pin2011,pPin2011,'sr','MarkerFaceColor','r')
hold on
loglog(Pin2016,pPin2016,'dk','MarkerFaceColor','k')
ylabel('P(Passengers In)')
xlabel('Passengers In')
legend('1996','2001','2006','2011','2016','Location','Southwest')
grid on
%
% Plot Passengers Out
figure
loglog(Pout1996,pPout1996,'dk','MarkerFaceColor','w')
hold on
loglog(Pout2001,pPout2001,'om','MarkerFaceColor','m')
hold on
loglog(Pout2006,pPout2006,'vb','MarkerFaceColor','b')
hold on
loglog(Pout2011,pPout2011,'sr','MarkerFaceColor','r')
hold on
loglog(Pout2016,pPout2016,'dk','MarkerFaceColor','k')
ylabel('P(Passengers Out)')
xlabel('Passengers Out')
legend('1996','2001','2006','2011','2016','Location','Southwest')
grid on
%