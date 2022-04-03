%generating positive numbers
xmin=2.3;
xmax=3.7;
n=20;
x=xmin+rand(1,n)*(xmax-xmin);
ymin=1.3;
ymax=2.7;
y=ymin+rand(1,n)*(ymax-ymin);
figure(1);
scatter(x,y,'*')
 Max_x=max(x); %maximum value of x 
 Min_x=min(x); %minimum value of x 
 Max_y=max(y); %maximum value of y 
 Min_y=min(y); %minimum value of y 
 
%Generating negetive numbers for the left side 
hold on
xmin1=0;
xmax1=1.9;
x1=xmin1+rand(1,n)*(xmax1-xmin1);
ymin1=0;
ymax1=5;
y1=ymin1+rand(1,n)*(ymax1-ymin1);
scatter(x1,y1)
Max_x1=max(x1); 

%Generating negetive numbers for the right side 
hold on
xmin2=4.1;
xmax2=5;
x2=xmin2+rand(1,n)*(xmax2-xmin2);
ymin2=0;
ymax2=5;
y2=ymin2+rand(1,n)*(ymax2-ymin2);
scatter(x2,y2)
Min_x2=min(x2);
 
%Generating negetive numbers for the lower side 
hold on
xmin3=0;
xmax3=5;
x3=xmin3+rand(1,n)*(xmax3-xmin3);
ymin3=0;
ymax3=0.9;
y3=ymin3+rand(1,n)*(ymax3-ymin3);
scatter(x3,y3)
Max_y3=max(y3);
 
%Generating negetive numbers for the upper side 
hold on
xmin4=0;
xmax4=5;
x4=xmin4+rand(1,n)*(xmax4-xmin4);
ymin4=3.1;
ymax4=5;
y4=ymin4+rand(1,n)*(ymax4-ymin4);
scatter(x4,y4)
Min_y4=min(y4);
 
%plot of class
rectangle('Position', [2,1,2,2], 'EdgeColor', 'b', 'LineWidth', 2);
%plot of specific hypothesis
width=Max_x-Min_x; 
height=Max_y-Min_y; 
rectangle('Position', [Min_x,Min_y,width,height], 'EdgeColor', 'r', 'LineWidth', 2);
%plot of general hypothesis
width1=Min_x2-Max_x1;
height1=Min_y4-Max_y3;
rectangle('Position', [Max_x1,Max_y3,width1,height1], 'EdgeColor', 'g', 'LineWidth', 2);

 
%__________________________training completed______________________________
