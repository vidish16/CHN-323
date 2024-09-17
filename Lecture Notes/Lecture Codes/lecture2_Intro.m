clear;clc;

% x=3;
% y=x+5;
% a=5;
% b=6;
% c=a+b
% 
% a=5;b=7;
% c=a+b
% d=c+sin(b)
% e=5*d
% f=exp(-d)

% %1. Minutes to Seconds
mins=44; %minutes
secs=44; %seconds

timeSeconds=mins*60+secs;
disp(timeSeconds);

% 
% %2. Distance, time to speed
distKM=10;
distMiles=distKM*0.621371;
timeHour=timeSeconds/3600;
averageSpeed=distMiles/timeHour;
disp(averageSpeed);
% 
% %3.Volume of a sphere
rad=3;
p=pi;
vol=4*pi*(rad^3)/3;
disp(vol);
% 
% %4. 
mrp=240;
discount=0.4;
shipCost1=5; %shipping cost for first Copy
shipCost2=1; %
totalBooks=60;
totalCost=((totalBooks*mrp*(1-discount))+(totalBooks-1)*shipCost2)+shipCost1;
disp(totalCost);
