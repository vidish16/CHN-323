clear;clc;

Vin=[5 5 5 5];
A=[1 1 1 1];
b=20;
%Given
q=71/3600;n=2.5;k=6.25e-3;c0=20;
options=optimset('Display','Off');
[res,c4]=fmincon(@(V)vKaFunc(c0,V,q,k,n),Vin,[],[],A,b,[0 0 0 0],[20 20 20 20],[],optimset('Display','Off'));
disp("Minimum c4 is: "+vKaFunc(c0,res,q,k,n))
disp("Volume at this:")
disp(res)
function c4=vKaFunc(c0,V,q,k,n)
    inGuess=[2 2 2 2];options=optimset('Display','Off');
    cc=fsolve(@(c)cfinder(c0,c,V,q,k,n),inGuess,options);
    c4=cc(4);

end

function cc=cfinder(c0,c,V,q,k,n)
    cc(1)=q*(c0  -c(1))-k*V(1)*c(1)^n;
    cc(2)=q*(c(1)-c(2))-k*V(2)*c(2)^n;
    cc(3)=q*(c(2)-c(3))-k*V(3)*c(3)^n;
    cc(4)=q*(c(3)-c(4))-k*V(4)*c(4)^n;
end


