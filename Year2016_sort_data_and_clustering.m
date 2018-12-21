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
Mr_out=zeros(Nair,2);
Mr_in=zeros(Nair,2);
Mf_out=zeros(Nair,2);
Mf_in=zeros(Nair,2);
Mp_out=zeros(Nair,2);
Mp_in=zeros(Nair,2);

tot_distance=0;
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
        
        Mf(o,d)=Mf(o,d)+flights;
        Mp(o,d)=Mp(o,d)+passengers;
        
    end %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    tot_distance=tot_distance+distance*flights;
end
fclose(FID);
Ntot_p=sum(sum(Mp));
Ntot_f=sum(sum(Mf));

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
totaldistance=sum(sum(pathdistances));
Ematrix=1./pathdistances;
Ematrix(Ematrix==Inf)=0;
totalefficiency=sum(sum(Ematrix));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

%%%%%%%%%% Compute clustering coefficient %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clusttot_in=0;
clusttot_out=0;
for i=1:6734
    findMf1=find(Mf(i,:));
    findneighbors1=find(Mf(findMf1,findMf1));
    if Mr_in(i,1)>0
        clusttot_in=clusttot_in+1*nnz(findneighbors1)/(Mr_in(i,1)*(Mr_in(i,1)-0));
    end
    if Mr_out(i,1)>0
        clusttot_out=clusttot_out+1*nnz(findneighbors1)/(Mr_out(i,1)*(Mr_out(i,1)-0));
    end
end
clustcoeff_in=clusttot_in/tot_active_airports_in;
clustcoeff_out=clusttot_out/tot_active_airports_out;

%%%%%%%%%% Compute cumulative distribution %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Rin=sortrows(Mr_in);
c1=0;
c2=0;
for i=6734-tot_active_airports_in+1:6734
    c1=c1+1;
    if Rin(i,1)~=Rin(i-1,1)
        c2=c2+1;
        PRxin(c2)=Rin(i-1,1);
        PRyin(c2)=(tot_active_airports_in-c1+1)/tot_active_airports_in;
        PRxin(c2+1)=Rin(i,1);
        PRyin(c2+1)=(tot_active_airports_in-c1+0)/tot_active_airports_in;
    end
end

Rout=sortrows(Mr_out);
c1=0;
c2=0;
for i=6734-tot_active_airports_out+1:6734
    c1=c1+1;
    if Rout(i,1)~=Rout(i-1,1)
        c2=c2+1;
        PRxout(c2)=Rout(i-1,1);
        PRyout(c2)=(tot_active_airports_out-c1+1)/tot_active_airports_out;
        PRxout(c2+1)=Rout(i,1);
        PRyout(c2+1)=(tot_active_airports_out-c1+0)/tot_active_airports_out;
    end
end

Fin=sortrows(Mf_in);
c1=0;
c2=0;
for i=6734-tot_active_airports_in+1:6734
    c1=c1+1;
    if Fin(i,1)~=Fin(i-1,1)
        c2=c2+1;
        PFxin(c2)=Fin(i-1,1);
        PFyin(c2)=(tot_active_airports_in-c1+1)/tot_active_airports_in;
        PFxin(c2+1)=Fin(i,1);
        PFyin(c2+1)=(tot_active_airports_in-c1+0)/tot_active_airports_in;
    end
end

Fout=sortrows(Mf_out);
c1=0;
c2=0;
for i=6734-tot_active_airports_out+1:6734
    c1=c1+1;
    if Fout(i,1)~=Fout(i-1,1)
        c2=c2+1;
        PFxout(c2)=Fout(i-1,1);
        PFyout(c2)=(tot_active_airports_out-c1+1)/tot_active_airports_out;
        PFxout(c2+1)=Fout(i,1);
        PFyout(c2+1)=(tot_active_airports_out-c1+0)/tot_active_airports_out;
    end
end

Pin=sortrows(Mp_in);
c1=0;
c2=0;
for i=6734-tot_active_airports_in+1:6734
    c1=c1+1;
    if Pin(i,1)~=Pin(i-1,1)
        c2=c2+1;
        PPxin(c2)=Pin(i-1,1);
        PPyin(c2)=(tot_active_airports_in-c1+1)/tot_active_airports_in;
        PPxin(c2+1)=Pin(i,1);
        PPyin(c2+1)=(tot_active_airports_in-c1+0)/tot_active_airports_in;
    end
end

Pout=sortrows(Mp_out);
c1=0;
c2=0;
for i=6734-tot_active_airports_out+1:6734
    c1=c1+1;
    if Pout(i,1)~=Pout(i-1,1)
        c2=c2+1;
        PPxout(c2)=Pout(i-1,1);
        PPyout(c2)=(tot_active_airports_out-c1+1)/tot_active_airports_out;
        PPxout(c2+1)=Pout(i,1);
        PPyout(c2+1)=(tot_active_airports_out-c1+0)/tot_active_airports_out;
    end
end

%%%%%%%%%% Compute Gini coefficient %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ginisum_in=0;
Ginisum_out=0;
for i=1:6734
    for j=1:6734
        if Mr_in(i,1)>0 && Mr_in(j,1)>0
            Ginisum_in=Ginisum_in+abs(Mr_in(i,1)-Mr_in(j,1));
        end
        if Mr_out(i,1)>0 && Mr_out(j,1)>0
            Ginisum_out=Ginisum_out+abs(Mr_out(i,1)-Mr_out(j,1));
        end
    end
end
Gini_in=Ginisum_in/(2*sum(Mr_in(:,1))*tot_active_airports_in);
Gini_out=Ginisum_out/(2*sum(Mr_out(:,1))*tot_active_airports_out);

%%%%%%%%%% Compute Resilience %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Resilience=0;
selfex=zeros(Nair,1);
for i=1:6734
    totf=Mf_in(i)+Mf_out(i);
    selfex(i)=totf/(Ntot_f-2*totf); % Self-excluding importance/weight
end
for i=1:6734
    AirportRes=0;
    for j=1:6734
        AirportRes=AirportRes + selfex(j)*(Mf(i,j)+Mf(j,i)); % Airport resilience
    end
    Resilience=Resilience + AirportRes*(Mf_in(i)+Mf_out(i))/Ntot_f;
end

%%%%%%%%%% Write output files %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Passengers
mkdir('Results/2016');
fileName = 'Results/2016/Passengers-Out_Airport.dat';
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

fileName = 'Results/2016/Passengers-In_Airport.dat';
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
fileName = 'Results/2016/Flights-Out_Airport.dat';
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

fileName = 'Results/2016/Flights-In_Airport.dat';
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
fileName = 'Results/2016/Routes-Out_Airport.dat';
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

fileName = 'Results/2016/Routes-In_Airport.dat';
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

% Others
fileName = 'Results/2016/Universal_Params.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s ','"Total Passengers"');
fprintf(FID,'%s ','"Total Flights"');
fprintf(FID,'%s ','"Total Distance"');
fprintf(FID,'%s ','"Total Routes"');
fprintf(FID,'%s ','"Active Airports In"');
fprintf(FID,'%s ','"Active Airports Out"');
fprintf(FID,'%s ','"Clust Coeff In"');
fprintf(FID,'%s ','"Clust Coeff Out"');
fprintf(FID,'%s ','"Sum of Shortest Path Lengths"');
fprintf(FID,'%s ','"Sum of Efficiency"');
fprintf(FID,'%s ','"Gini Coeff In"');
fprintf(FID,'%s ','"Gini Coeff Out"');
fprintf(FID,'%s \n','"Resilience"');
fprintf(FID,'%i ',Ntot_p);
fprintf(FID,'%i ',Ntot_f);
fprintf(FID,'%e ',tot_distance);
fprintf(FID,'%i ',sum(Mr_out(:,1)));
fprintf(FID,'%i ',tot_active_airports_in);
fprintf(FID,'%i ',tot_active_airports_out);
fprintf(FID,'%e ',clustcoeff_in);
fprintf(FID,'%e ',clustcoeff_out);
fprintf(FID,'%e ',totaldistance);
fprintf(FID,'%e ',totalefficiency);
fprintf(FID,'%e ',Gini_in);
fprintf(FID,'%e ',Gini_out);
fprintf(FID,'%e ',Resilience);
fclose(FID);

% Cumulative Probabilities Distribution
fileName = 'Results/2016/Cumulative_Probabilities_DegIn.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s ','"Degree In"');
fprintf(FID,'%s \n','"P Degree In"');
for i=1:length(PRxin)-1
    fprintf(FID,'%e ',PRxin(i+1));
    fprintf(FID,'%e \n',PRyin(i));
end
fclose(FID);

fileName = 'Results/2016/Cumulative_Probabilities_DegreeOut.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s ','"Degree Out"');
fprintf(FID,'%s \n','"P Degree Out"');
for i=1:length(PRxout)-1
    fprintf(FID,'%e ',PRxout(i+1));
    fprintf(FID,'%e \n',PRyout(i));
end
fclose(FID);

fileName = 'Results/2016/Cumulative_Probabilities_FlightsIn.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s ','"Flights In"');
fprintf(FID,'%s \n','"P Flights In"');
for i=1:length(PFxin)-1
    fprintf(FID,'%e ',PFxin(i+1));
    fprintf(FID,'%e \n',PFyin(i));
end
fclose(FID);

fileName = 'Results/2016/Cumulative_Probabilities_FlightsOut.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s ','"Flights Out"');
fprintf(FID,'%s \n','"P Flights Out"');
for i=1:length(PFxout)-1
    fprintf(FID,'%e ',PFxout(i+1));
    fprintf(FID,'%e \n',PFyout(i));
end
fclose(FID);

fileName = 'Results/2016/Cumulative_Probabilities_PassengersIn.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s ','"Passengers In"');
fprintf(FID,'%s \n','"P Passengers In"');
for i=1:length(PPxin)-1
    fprintf(FID,'%e ',PPxin(i+1));
    fprintf(FID,'%e \n',PPyin(i));
end
fclose(FID);

fileName = 'Results/2016/Cumulative_Probabilities_PassengersOut.dat';
FID = fopen(fileName,'w');
fprintf(FID,'%s ','"Passengers Out"');
fprintf(FID,'%s \n','"P Passengers Out"');
for i=1:length(PPxout)-1
    fprintf(FID,'%e ',PPxout(i+1));
    fprintf(FID,'%e \n',PPyout(i));
end
fclose(FID);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
toc