tic
format long
close all
clear all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N=382120;                % Total entries
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Nair=16734-10000;        % Total airports

Mf=zeros(Nair,Nair);
Mp=zeros(Nair,Nair);
Md=zeros(Nair,Nair);
Mr_out=zeros(Nair,2);
Mr_in=zeros(Nair,2);
Mf_out=zeros(Nair,2);
Mf_in=zeros(Nair,2);
Mp_out=zeros(Nair,2);
Mp_in=zeros(Nair,2);

% Read input file
fileName = 'Input/2016_T_T100D_SEGMENT_ALL_CARRIER.csv';
FID=fopen(fileName,'r');
char = fscanf(FID,'%s',1);
for i=1:N
    
    flights=fscanf(FID,'%e,',1);
    passengers=fscanf(FID,'%e,',1);
    distance=fscanf(FID,'%e,',1);
    origin=fscanf(FID,'%e,',1);
    destination=fscanf(FID,'%e,\n',1);
    
    if (flights~=0)&&(distance~=0) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        for a=10001:16734
            counter=a-10000;
            if (a==origin)
                o=counter;
            end
            if (a==destination)
                d=counter;
            end
        end
        
        Md(o,d)=distance;
        Mf(o,d)=Mf(o,d)+flights;
        Mp(o,d)=Mp(o,d)+passengers;
        
    end %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
end
fclose(FID);

%%%%%%%%%% Sort %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%
for attack=1:50
%%%%%
attack

Betw1=zeros(Nair,1);
Betw=zeros(Nair,2);
tot_active_airports_out=0;
tot_active_airports_in=0;
for i=10001:16734
    counter=i-10000;
    
    Mr_out(counter,1)=length( find(Mf(counter,:)) );
    Mr_out(counter,2)=i;
    Mr_in(counter,1)=length( find(Mf(:,counter)) );
    Mr_in(counter,2)=i;
       
    Mf_out(counter,1)=sum(Mf(counter,:));
    Mf_out(counter,2)=i;
    Mf_in(counter,1)=sum(Mf(:,counter));
    Mf_in(counter,2)=i;
    
    Mp_out(counter,1)=sum(Mp(counter,:));
    Mp_out(counter,2)=i;
    Mp_in(counter,1)=sum(Mp(:,counter));
    Mp_in(counter,2)=i;
    
    if Mr_out(counter,1)>0
        tot_active_airports_out=tot_active_airports_out+1;
    end
    if Mr_in(counter,1)>0
        tot_active_airports_in=tot_active_airports_in+1;
    end
end
new_active_airports_in(attack)=tot_active_airports_in;
new_active_airports_out(attack)=tot_active_airports_out;

%%%%%%%%%% Betweenness and shortest paths %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
counter=0;
G=0;
for i=1:6397
    for j=1:6397
        counter=counter+1;
        if Mf(i,j)==0
            source(1,counter)=i;
            target(1,counter)=i;
        else                        
            source(1,counter)=i;
            target(1,counter)=j;
        end
    end
end
G=digraph(source,target,'OmitSelfLoops');
% figure
% plot(G)

pathdistances=distances(G);              % Find shortest geodesic distances
pathdistances(pathdistances==Inf)=0;
totaldistance(attack)=sum(sum(pathdistances));
Ematrix=1./pathdistances;
Ematrix(Ematrix==Inf)=0;
totalefficiency(attack)=sum(sum(Ematrix));

for i=1:6397
%     i
    if Mr_out(i,1)~=0
        for j=1:6397
        %%%%%%%%%%%%%%%%%%%%
           if Mf(i,j)==0
                P=shortestpath(G,i,j);                % Finds shortest path
                for k=2:length(P)-1
                     Betw1(P(1,k),1)=Betw1(P(1,k),1)+1;       % Betweenness
                end
            end
        %%%%%%%%%%%%%%%%%%%%
        end
    end
end
for i=10001:16734
    counter=i-10000;
    Betw(counter,1)=Betw1(counter);
    Betw(counter,2)=i;
end
totalbetweenness(attack)=sum(Betw(:,1));

% Attack and isolate node
[maxBetw,maxI]=max(Betw(:,1));
isonode(attack)=maxI;

Mf(isonode(attack),:)=0;
Mf(:,isonode(attack))=0;
Mp(isonode(attack),:)=0;
Mp(:,isonode(attack))=0;
Betw(isonode(attack),1)=0;

%%%%%
end % attack
%%%%%

%%%%%%%%%% Write output files %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fileName = 'Results/2016_wBetweenness/Universal_Params_after_attack.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s ','"Iteration"');
fprintf(FID,'%s ','"Most Central Airport"');
fprintf(FID,'%s ','"Sum of Shortest Path Lengths"');
fprintf(FID,'%s ','"Sum of Betweenness"');
fprintf(FID,'%s ','"Sum of Efficiency"');
fprintf(FID,'%s ','"Airports In"');
fprintf(FID,'%s \n','"Airports Out"');
for i=1:attack
fprintf(FID,'%i ',i);
fprintf(FID,'%i ',isonode(i));
fprintf(FID,'%e ',totaldistance(i));
fprintf(FID,'%e ',totalbetweenness(i));
fprintf(FID,'%e ',totalefficiency(i));
fprintf(FID,'%e ',new_active_airports_in(i));
fprintf(FID,'%e \n',new_active_airports_out(i));
end
fclose(FID);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
toc