clear;clc;

inGuess=0.4;
options = optimoptions('fsolve','Algorithm','levenberg-marquardt','Display','off');

answer=fsolve(@f,inGuess,options)

% anss=fzero(@f,inGuess)
x=linspace(0.03,2,1000);
y=f(x);
plot(x,y);
hold on;
yn=x*0;
plot(x,yn, 'k');
xlabel('Volume (V)');
ylabel('Function Value (f(V))');
title('Plot of the function f(V)');
hold off;
function y=f(V)
    R=0.08206;
    Tc=405.5;
    Pc=111.3;
    P=56;
    T=450;
    
    a=(27/64)*(R^2 * Tc^2)/Pc;
    b=R*Tc/(8*Pc);
    
    t1=(P+a./(V.^2));
    t2=(V-b);
    t3=R*T;

    y=t1.*t2-t3;
end