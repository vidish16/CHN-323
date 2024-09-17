clear;clc;
x0=0;
x1=1;
tol=10^-4;

while abs(x1-x0)>2*tol
    m1=(x1-x0)/(f(x1)-f(x0));
    x2=x1-f(x1)*m1;
    x0=x1;
    x1=x2;
end

disp(x1);

function y=f(x)
   y=3.*x+sin(x)-exp(x);
end