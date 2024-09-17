guess=[2 3];
res=fsolve(@f,guess);
disp(res);

function fun=f(z)
    x=z(1);
    y=z(2);
    fun(1)=x^2+2*y^2-5*x+7*y-40;
    fun(2)=3*x^2-y^2+4*x+2*y-28;
end

