clear;clc;
%Question 2 (a)
p=linspace(1,30,30);
options=optimset('Display','off');
inGuess=zeros(30,1);
for i=1:30
    inGuess(i)=1;
end
Kavyansh=fsolve(@f,inGuess,options);
function y=f(z)
    y=zeros(30,1);
    Tc=425.2;
    Pc=37.5;
    w=0.193;
    T=500;
    Tr=T/Tc;
    F=1/Tr*(1+(0.48+1.574*w-0.176*w^2)*(1-Tr^0.5))^2;
    for i=1:30
        P=i;
        Pr=P/Pc;
        B=0.08664.*(Pr./Tr);
        A=0.42748.*(Pr./Tr).*(F);
        y(i)=z(i)^3-z(i)^2+z(i)*(A-B-B^2)-A*B;
    end
end


%Question 2 (b);
Krishna=fsolve(@b,inGuess,options);
function y=b(z)
    y=zeros(30,1);
    Tc=425.2;
    Pc=37.5;
    w=0.193;
    T=500;
    Tr=T/Tc;
    for i=1:30
        P=i;
        Pr=P/Pc;
        B=(1/8).*(Pr./Tr);
        A=(27/64).*(Pr/(Tr*Tr));
        y(i)=z(i)^3-(1+B)*z(i)^2+A*z(i)*-A*B;
    end
end

plot(p,Kavyansh);
hold on;
plot(p,Krishna);
hold off;

legend('SRK','Van Der Vaal');
xlabel('Pressure(atm)');
ylabel('Compressibility Factor(Z)')
title('Nigga, THIS IS MY CODE FFS');