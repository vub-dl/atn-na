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
Betw1=zeros(Nair,1);
Betw=zeros(Nair,2);

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
%%%%%%%%%% Betweenness and shortest paths %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
counter=0;
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
totaldistance=sum(pathdistances);

for i=1:6397
    i
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
totalbetweenness=sum(Betw(:,1));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BetwS=flipud(sortrows(Betw));
Mr_outS=flipud(sortrows(Mr_out));
Mr_inS=flipud(sortrows(Mr_in));
Mf_outS=flipud(sortrows(Mf_out));
Mf_inS=flipud(sortrows(Mf_in));
Mp_outS=flipud(sortrows(Mp_out));
Mp_inS=flipud(sortrows(Mp_in));

fileID = fopen('Input/Orig_AIRPORT_ID.txt');
Cout = textscan(fileID,' %f   %s %s ');

fileID = fopen('Input/Dest_AIRPORT_ID.txt');
Cin = textscan(fileID,'%f %s %s');

airport_out_C=(Cout(1));
airport_out=cell2mat(airport_out_C);
airport_in_C=(Cin(1));
airport_in=cell2mat(airport_in_C);

%%%%%%%%%% Compute cumulative distribution %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PB1=sortrows(Betw);
c1=0;
c2=0;
NZB=nnz(PB1(:,1));
for i=6734-NZB+1:6734
    c1=c1+1;
    if PB1(i,1)~=PB1(i-1,1)
        c2=c2+1;
        PBx(c2)=PB1(i-1,1);
        PBy(c2)=(NZB-c1+1)/NZB;
        PBx(c2+1)=PB1(i,1);
        PBy(c2+1)=(NZB-c1+0)/NZB;
    end
end

%%%%%%%%%% Write output files %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Passengers
mkdir('Results/2016_wBetweenness');
fileName = 'Results/2016_wBetweenness/Passengers-Out_Airport.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s   ','"Rank"');
fprintf(FID,'%s   ','"Passengers"');
fprintf(FID,'%s \n','"Airport"');
for i=1:6397
    for j=1:6397
        if (Mp_outS(i,2)==airport_out(j))
            fprintf(FID,'  %i ',i);
            fprintf(FID,'    %e ',Mp_outS(i,1));
            fprintf(FID,'  %s',Cout{1,2}{j,1});
            fprintf(FID,'%s \n',Cout{1,3}{j,1});
        end
    end
end
fclose(FID);

fileName = 'Results/2016_wBetweenness/Passengers-In_Airport.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s   ','"Rank"');
fprintf(FID,'%s   ','"Passengers"');
fprintf(FID,'%s \n','"Airport"');
for i=1:6397
    for j=1:6397
        if (Mp_inS(i,2)==airport_in(j))
            fprintf(FID,'  %i ',i);
            fprintf(FID,'    %e ',Mp_inS(i,1));
            fprintf(FID,'  %s',Cin{1,2}{j,1});
            fprintf(FID,'%s \n',Cin{1,3}{j,1});
        end
    end
end
fclose(FID);

% Flights
fileName = 'Results/2016_wBetweenness/Flights-Out_Airport.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s   ','"Rank"');
fprintf(FID,'%s   ','"Flights"');
fprintf(FID,'%s \n','"Airport"');
for i=1:6397
    for j=1:6397
        if (Mf_outS(i,2)==airport_out(j))
            fprintf(FID,'  %i ',i);
            fprintf(FID,'    %e ',Mf_outS(i,1));
            fprintf(FID,'  %s',Cout{1,2}{j,1});
            fprintf(FID,'%s \n',Cout{1,3}{j,1});
        end
    end
end
fclose(FID);

fileName = 'Results/2016_wBetweenness/Flights-In_Airport.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s   ','"Rank"');
fprintf(FID,'%s   ','"Flights"');
fprintf(FID,'%s \n','"Airport"');
for i=1:6397
    for j=1:6397
        if (Mf_inS(i,2)==airport_in(j))
            fprintf(FID,'  %i ',i);
            fprintf(FID,'    %e ',Mf_inS(i,1));
            fprintf(FID,'  %s',Cin{1,2}{j,1});
            fprintf(FID,'%s \n',Cin{1,3}{j,1});
        end
    end
end
fclose(FID);

% Routes
fileName = 'Results/2016_wBetweenness/Routes-Out_Airport.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s   ','"Rank"');
fprintf(FID,'%s   ','"Routes"');
fprintf(FID,'%s \n','"Airport"');
for i=1:6397
    for j=1:6397
        if (Mr_outS(i,2)==airport_out(j))
            fprintf(FID,'  %i ',i);
            fprintf(FID,'       %i ',Mr_outS(i,1));
            fprintf(FID,'     %s',Cout{1,2}{j,1});
            fprintf(FID,'%s \n',Cout{1,3}{j,1});
        end
    end
end
fclose(FID);

fileName = 'Results/2016_wBetweenness/Routes-In_Airport.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s   ','"Rank"');
fprintf(FID,'%s   ','"Routes"');
fprintf(FID,'%s \n','"Airport"');
for i=1:6397
    for j=1:6397
        if (Mr_inS(i,2)==airport_in(j))
            fprintf(FID,'  %i ',i);
            fprintf(FID,'       %i ',Mr_inS(i,1));
            fprintf(FID,'     %s',Cin{1,2}{j,1});
            fprintf(FID,'%s \n',Cin{1,3}{j,1});
        end
    end
end
fclose(FID);

% Betweeness
fileName = 'Results/2016_wBetweenness/Betweeness_Airport.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s ','"Rank"');
fprintf(FID,'%s ','"Betweenness"');
fprintf(FID,'%s \n','"Airport"');
for i=1:6397
    for j=1:6397
        if (BetwS(i,2)==airport_in(j))
            fprintf(FID,'  %i ',i);
            fprintf(FID,'       %i ',BetwS(i,1));
            fprintf(FID,'       %s',Cin{1,2}{j,1});
            fprintf(FID,'%s \n',Cin{1,3}{j,1});
        end
    end
end
fclose(FID);

% Others
fileName = 'Results/2016_wBetweenness/Universal_Params.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s ','"Active Airports In"');
fprintf(FID,'%s ','"Active Airports Out"');
fprintf(FID,'%s \n','"Sum of Betweenness"');
fprintf(FID,'%i ',tot_active_airports_in);
fprintf(FID,'%i ',tot_active_airports_out);
fprintf(FID,'%i ',totalbetweenness);
fclose(FID);

% Cumulative Probabilities Distribution
fileName = 'Results/2016_wBetweenness/Cumulative_Probabilities_Betweenness.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s ','"Betweenness"');
fprintf(FID,'%s \n','"P Betweenness"');
for i=1:length(PBx)-1
    fprintf(FID,'%e ',PBx(i+1));
    fprintf(FID,'%e \n',PBy(i));
end
fclose(FID);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
toc