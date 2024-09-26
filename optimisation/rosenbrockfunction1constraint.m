%Q1
clear all;
clc;

initial_guess=[-1,2];
A=[1,2];
B=[1];
[x,F]=fmincon(@(x) rosenbrock(x),initial_guess,A,B);
disp('The values of x1 and x2 at minimum values are');
x
disp('The minimum value is');
F
function ded=rosenbrock(x)
      x1=x(1);
      x2=x(2);
      ded=100*(x2-x1.^2).^2+(1-x1).^2;
end

