clear;clc;
digits(15);
d1=digits(15);
answer=vpa(simpson(@fun,0.0001,0,pi));



function answer=simpson(fun,deltaX,start,last)

    answer=fun(start)+fun(last);
    for i=start+deltaX:2*deltaX:last-deltaX
        answer=answer+4*fun(i);
    end
    for i=start+2*deltaX:2*deltaX:last-2*deltaX
        answer=answer+2*fun(i);
    end
    answer=answer*deltaX/3;
end
function f=fun(x)
    f=sin(x).^3;
end