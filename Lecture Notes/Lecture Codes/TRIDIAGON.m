clear;clc;
d1=[-1 -1 -1];
d2=[2 2 2 2];
d3=[-1 -1 -1];
A=TridiagonalGenerator(d1,d2,d3,4);
b=[-1;0;0;0];
n=4;
augm=[A b];
for i=2:n
    augm(i,i)=augm(i,i)-augm(i-1,i)*fac;
end