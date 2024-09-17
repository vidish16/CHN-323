clear;clc;
x=linspace(100,200,1000);
y=func(x);
y1=x*0;

plot(x,y,x,y1);
legend('function ka naam', 'x-axis');
% hold on;
% plot(x,y1); 
% hold off;

xlabel('Mass in kg');
ylabel('Deviation');
title('Plot of function f(v)');
function y=func(m)
    a=sqrt(9.81/0.25);
    v=sqrt(m);
    y=a.*v.*tanh(4*sqrt((9.81*0.25)./m))-36;
end