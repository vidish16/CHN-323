z0=100;
m=80;
c=15;
v0=55;
g=9.184;

%is case me bhi fmincon se constraint laga dete hai
%for maximum in this case we have A=-1;B=0;
%this means A*X<=B
A=-1;
B=0;
x0=2;
%-1 islie hai coz fmincon is an optimisation function and uske bina if we
%try to do it to minimum altitude initial hi dikha dega so
[t,altitude]=fmincon(@(t) -1*alt(z0,m,c,v0,t,g),x0,A,B);
disp('The time at which maximum is achieved');
t
disp('The maximum altitude achieved');
abs(altitude)
function ui=alt(z0,m,c,v0,t,g)
        ui=z0+(m/c)*(v0+(m*g/c))*(1-exp(-1*(c/m)*t))-(m*g*t/c);
end