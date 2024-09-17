inGuess=[0.5 0.5 0.5 0.5];

sol=fsolve(@f,inGuess);
function y=f(z)
    Ca=z(1);
    Cb=z(2);
    Cc=z(3);
    Cd=z(4);

    k1=1.0;
    k2=0.2;
    k3=0.05;
    k4=0.4;
    t=2;
    Ca0=1;
    y=zeros(4);
    y(1)=-Ca+Ca0+(-k1*Ca-k2*(Ca^1.5)+k3*(Cc^2))*t;
    y(2)=-Cb+(2*k1*Ca-k4*Cb^2)*t;
    y(3)=-Cc+(k2*(Ca^1.5)-k3*(Cc^2)+k4*(Cb^2))*t;
    y(4)=-Cd+(k4*Cb^2)*t;
end