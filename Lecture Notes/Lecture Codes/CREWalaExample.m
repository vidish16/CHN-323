clear;clc;
options = optimoptions('fsolve','Algorithm','levenberg-marquardt','Display','off');
x_guess=[3.6,2.4,1.4,0.8,250];
res=fsolve(@f,x_guess,options);
function fun=f(z)
    x1=z(1);
    x2=z(2);
    x3=z(3);
    x4=z(4);
    V=z(5);
    fun(1)=1000-200*x1-V.*x1.^2;
    fun(2)=200*(x1-x2)-V.*x2.^2;
    fun(3)=200*(x2-x3)-V.*x3.^2;
    fun(4)=200*(x3-x4)-V.*x4.^2;
    fun(5)=200*(x4-0.5)-V.*0.5.^2;
end