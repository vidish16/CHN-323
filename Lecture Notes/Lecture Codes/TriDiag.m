clear;clc;
% n=5;a=[-2000, -2000, -2000, -2000];b=[4400,4400,4400,4400,4400];c=[-800 -800 -800 -800];
A=TridiagonalGenerator(a,b,c,n);
d=zeros(n,1);
d(1)=40;
% function x=td(A,b)
augM=[A d];
for i=2:n 
    factor=augM(i,i-1)/augM(i-1,i-1);
    augM(i,i)=augM(i,i)-augM(i-1,i)*factor;
    augM(i,n+1)=augM(i,n+1)-augM(i-1,n+1)*factor;
    augM(i,i-1)=0;
end
for i=1:n
    augM(i,:)=augM(i,:)/augM(i,i);
end

disp(augM);
x=zeros(n,1);
x(n)=augM(n,n+1);
for i=n-1:-1:1
    x(i)=(augM(i,n+1)-x(i+1)*augM(i,i+1));
end
% for i=n-1:-1:1
%     augM(i,n+1)=augM(i,n+1)-augM(i+1,n+1)*augM(i,i+1);
%     augM(i,i+1)=0;
% end
% disp(augM);
% x=augM(:,n+1);

% end