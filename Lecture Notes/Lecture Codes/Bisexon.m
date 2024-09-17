clear;clc;

x=linspace(0,1,100);
x0=0;
x1=1;
tol=10^-4;

while abs(x1-x0)>tol
    x2=(x0+x1)/2;
    if f(x0)*f(x2)<0
        x1=x2;

    else 
        x0=x2;
    end
end
disp(x1);
disp(x0);
y=f(x);
plot(x,y);
function y=f(x)
    y=3.*x+sin(x)-exp(x);
end