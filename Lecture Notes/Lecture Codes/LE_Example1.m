clc;clear;
req=[4800;5800;5700];
comp=([52,30,18;20,50,30;25,20,55]/100)';
x=comp\req;
% comp=comp';
% c=req.*comp;
% x=sum(c)/100;
% disp(x);