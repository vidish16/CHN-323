clc;clear;
% Givens
F1=400; %kg/h
F2 =800; %kg/h
yin=0.1;
xin=0;
n=5;
K=5;

% yout,xout
a1=K*F2+F1;
a2=-K*F1;
a3=-F2;

b=zeros(n,1);
A=zeros(n,n);

%Mass balance for Stage 1
A(1,1)=a1;
A(1,2)=a3;
b(1)=F1*yin;

%Mass balance for stage 2-n-1
for i=2:n-1
        A(i,i-1)=a2;
        A(i,i)=a1;
        A(i,i+1)=a3;
end

%Mass balance for Stage n 
A(n,n-1)=a2;
A(n,n)=a1;
b(n)=xin*F2;

%Solving the matrix using Gauss Elimination

augM=[A b];

% Forward Elimination
tic
for i=1:n-1
    for j=i+1:n
        multFac=augM(j,i)/augM(i,i);
        augM(j,:)=augM(j,:)-augM(i,:)*(multFac);
    end
end

%Back Substitution
bNew=augM(:,n+1);
x(n)=bNew(n)/augM(n,n);
for i=n-1:-1:1
    sumofFacs=0;
    for j=i+1:n
        sumofFacs=sumofFacs+augM(i,j)*x(j);
    end
    x(i)=(bNew(i)-sumofFacs)/augM(i,i);
end
disp(toc);

yout=K*x(n);
xout=x(1);
disp("xout has the value:");disp(xout);
disp("yout has the value:");disp(yout);