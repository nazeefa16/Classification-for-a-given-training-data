%_______________________training for circle hypothesis_____________________

%generate random positive numbers
figure(2);
xmin=2.3;
xmax=3.7;
n=20;
x=xmin+rand(1,n)*(xmax-xmin);
ymin=1.3;
ymax=2.7;
y=ymin+rand(1,n)*(ymax-ymin);
scatter(x,y,'*')
 
%plot of class
hold on
r = 1;
c = [3 2];
pos = [c-r 2*r 2*r];
rectangle('Position',pos,'Curvature',[1 1],'EdgeColor', 'b', 'LineWidth', 2)
Xmax=zeros(1,20);

%plot of specific class
%find distance of positive points from center
for i=1:20
 X=[3,2;x(i),y(i)];
 Xmax(i)=pdist(X,'euclidean');
end
Xmax=max(Xmax); %find maximum distance for specific hypothesis

r = Xmax;
c = [3 2];
pos = [c-r 2*r 2*r];
rectangle('Position',pos,'Curvature',[1 1],'EdgeColor', 'r', 'LineWidth', 2) 
hold on
 
%generate random negetive integers for left side
xmin1=0;
xmax1=1.9;
x1=xmin1+rand(1,n)*(xmax1-xmin1);
ymin1=0;
ymax1=5;
y1=ymin1+rand(1,n)*(ymax1-ymin1);
scatter(x1,y1)
 %calculate distance of negetive points from the center
 X1=zeros(1,20);
for i=1:20
 X=[3,2;x1(i),y1(i)];
 X1(i)=pdist(X,'euclidean');
end
Xmin1=min(X1); %find minimum distance for general hypothesis
 
%generate random negetive integers for right side
hold on
xmin2=4.1;
xmax2=5;
x2=xmin2+rand(1,n)*(xmax2-xmin2);
ymin2=0;
ymax2=5;
y2=ymin2+rand(1,n)*(ymax2-ymin2);
scatter(x2,y2)
 
X2=zeros(1,20);
for i=1:20
 X=[3,2;x2(i),y2(i)];
 X2(i)=pdist(X,'euclidean');
end
Xmin2=min(X2); %find minimum distance for general hypothesis
 
%generate random negetive integers for bottom
hold on
xmin3=0;
xmax3=5;
x3=xmin3+rand(1,n)*(xmax3-xmin3);
ymin3=0;
ymax3=0.9;
y3=ymin3+rand(1,n)*(ymax3-ymin3);
scatter(x3,y3)
 
X3=zeros(1,20);
for i=1:20
 X=[3,2;x3(i),y3(i)];
 X3(i)=pdist(X,'euclidean');
end
Xmin3=min(X3); %find minimum distance for general hypothesis
 
%generate random negetive integers for top
hold on
xmin4=0;
xmax4=5;
x4=xmin4+rand(1,n)*(xmax4-xmin4);
ymin4=3.1;
ymax4=5;
y4=ymin4+rand(1,n)*(ymax4-ymin4);
scatter(x4,y4)
 
X4=zeros(1,20);
for i=1:20
 X=[3,2;x4(i),y4(i)];
 X4(i)=pdist(X,'euclidean');
end
Xmin4=min(X4); %find minimum distance for general hypothesis

%compare all the minimum distances to find the minimum distance among them
m=0;
if((Xmin1<Xmin2)&&(Xmin1<Xmin3)&&(Xmin1<Xmin4))
        m=Xmin1;
elseif((Xmin2<Xmin1)&&(Xmin2<Xmin3)&&(Xmin2<Xmin4))
    m=Xmin2;
elseif((Xmin3<Xmin1)&&(Xmin3<Xmin2)&&(Xmin3<Xmin4))
    m=Xmin3;
elseif((Xmin4<Xmin1)&&(Xmin4<Xmin2)&&(Xmin4<Xmin3))
    m=Xmin4;
end
%plot of general hypothesis
hold on
r = m;
c = [3 2];
pos = [c-r 2*r 2*r];
rectangle('Position',pos,'Curvature',[1 1],'EdgeColor', 'g ', 'LineWidth', 2) 
      

%__________________________training completed______________________________
