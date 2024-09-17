clear;clc;
x0=1;
tol=10^-4;
while abs(f(x0))>tol
    y0=f(x0);
    h=10^-4;
    y0_dash=(f(x0+h)-f(x0-h))/(2*h);
    if ~(y0_dash~=0 && y0~=0)
        break;
    end
    x1=x0;
    x0=x0-y0/y0_dash;

end
function y=f(x)
    y=3*x+sin(x)-exp(x);
end