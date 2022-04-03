%______________________test data for circle hypothesis_____________________

%generating positive test data
xlower=0;
xupper=5;
n=20;
xtc=xlower+rand(1,n)*(xupper-xlower);
ylower=0;
yupper=5;
ytc=ylower+rand(1,n)*(yupper-ylower);
scatter(xtc,ytc,'s')

%generating negetive test data
xlower1=0;
xupper1=5;
n=20;
xtc1=xlower1+rand(1,n)*(xupper1-xlower1);
ylower1=0;
yupper1=5;
ytc1=ylower1+rand(1,n)*(yupper1-ylower1);
scatter(xtc1,ytc1,'x')

%check how many positive points lie in specific hypothesis
Xsp=zeros(1,20);
for i=1:20
 X=[3,2;xtc(i),ytc(i)];
 Xsp(i)=pdist(X,'euclidean');
end
npc=0;
for i=1:20
    if(Xsp(i)<Xmax)
        npc=npc+1;
    end
end
disp('Below are the percentages for circle hypothesis')
disp('The percentage of positive points in S: ')
p5=(npc/20)*100;
disp(p5);

%check how many negetive points lie in specific hypothesis
Xsp1=zeros(1,20);
for i=1:20
 X=[3,2;xtc1(i),ytc1(i)];
 Xsp1(i)=pdist(X,'euclidean');
end
nnc=0;
for i=1:20
    if(Xsp1(i)<Xmax)
        nnc=nnc+1;
    end
end
disp('The percentage of negetive points in S: ')
p6=(nnc/20)*100;
disp(p6);

%check how many positive points lie in general hypothesis
Xsp3=zeros(1,20);
for i=1:20
 X=[3,2;xtc(i),ytc(i)];
 Xsp3(i)=pdist(X,'euclidean');
end
npc1=0;
for i=1:20
    if(Xsp3(i)<m)
        npc1=npc1+1;
    end
end
disp('The percentage of positive points in G: ')
p7=(npc1/20)*100;
disp(p7);

%check how many negetive points lie in general hypothesis
Xsp4=zeros(1,20);
for i=1:20
 X=[3,2;xtc1(i),ytc1(i)];
 Xsp4(i)=pdist(X,'euclidean');
end
nnc1=0;
for i=1:20
    if(Xsp4(i)<m)
        nnc1=nnc1+1;
    end
end
disp('The percentage of negetive points in G: ')
p8=(np/20)*100;
disp(p8);
%______________________test data completed_________________________________
