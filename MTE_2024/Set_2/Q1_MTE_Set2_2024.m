clear;clc;
%Question 1
% Mass balance at c1: 4*c2+2*c0-4*c1=0
% Mass Balance at c2: 4*c4+ -3*c2-4*c2=0 or 4*c4-7*c2=0;
% Mass Balance 

A=[-6 4 0 0
    0 -7 3 4
    4 0 -4 0
    2 0 1 -4];
b=[-50
    0
    0
    -50];
c=A\b;
disp("C1 "+c(1));
disp("C2 "+c(2));
disp("C3 "+c(3));
disp("C4 "+c(4));



























    

% Vidish 22112113