clear;clc;
d1=[1 1];
d2=[-2.0625 -2.0625 -2.0625];
d3=[1 1];

n=3;
A=TridiagonalGenerator(d1,d2,d3,n);
b=[1;0;0];
disp(A\b);