%____________________test data for rectangle hypothesis____________________

%generating positive test data
xlower=0;
xupper=5;
n=20;
xt=xlower+rand(1,n)*(xupper-xlower);
ylower=0;
yupper=5;
yt=ylower+rand(1,n)*(yupper-ylower);
scatter(xt,yt,'s')

%generating negetive test data
xlower1=0;
xupper1=5;
n=20;
xt1=xlower1+rand(1,n)*(xupper1-xlower1);
ylower1=0;
yupper1=5;
yt1=ylower1+rand(1,n)*(yupper1-ylower1);
scatter(xt1,yt1,'x')

%check how many positive points lie in Specific Hypothesis
np=0;
for i=1:20
    if((Min_x<xt(i))&&(xt(i)<Max_x)&&(Min_y<yt(i))&&(yt(i)<Max_y))
      np=np+1;  
    end
end
disp('Below are the percentages for rectangle hypothesis')
disp('The percentage of positive points in S: ')
p1=(np/20)*100;
disp(p1);
%check how many negetive points lie in Specific Hypothesis
nn=0;
for i=1:20
    if((Min_x<xt1(i))&&(xt1(i)<Max_x)&&(Min_y<yt1(i))&&(yt1(i)<Max_y))
      nn=nn+1;  
    end
end
disp('The percentage of negetive points in S: ')
p2=(nn/20)*100;
disp(p2);
%check how many positive points lie in General Hypothesis
np1=0;
for i=1:20
    if((Max_x1<xt(i))&&(xt(i)<Min_x2)&&(Max_y3<yt(i))&&(yt(i)<Min_y4))
      np1=np1+1;  
    end
end
disp('The percentage of positive points in G: ')
p3=(np1/20)*100;
disp(p3);
%check how many negetive points lie in General Hypothesis
nn1=0;
for i=1:20
    if((Max_x1<xt1(i))&&(xt1(i)<Min_x2)&&(Max_y3<yt1(i))&&(yt1(i)<Min_y4))
      nn1=nn1+1;  
    end
end
disp('The percentage of negetive points in G: ')
p4=(nn1/20)*100;
disp(p4);

%_____________________________test data completed__________________________
