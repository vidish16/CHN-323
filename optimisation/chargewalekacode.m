e0=8.85*(10^(-12));
q=2*(10^(-5));
Q=2*(10^(-5));
a=0.9;

x0=2;
A=-1;
B=0;
%A*x<=B karna hai hamko
%here x>=0 toh inequality reverse karne ke lie kara hua hai

%syntax of fmincon is basically (function,initial_guess,variable ke
%cons,right side wale constant)
[x,F]=fmincon(@(x) -1*force(q,Q,e0,a,x),x0,A,B);

disp("The maximum force is")
F
disp("The x coor of the maximum force is at")
x

function  ui=force(q,Q,e0,a,x)
    ui=1/(4*pi*e0) * q*Q* x./(x.^2 + a.^2).^3/2;
end
