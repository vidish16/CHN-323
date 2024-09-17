clear;clc;
n=5;
A=rand(n,n);
b=rand(n,1);
x=zeros(n,1);
tic
if(round(det(A),10)==0)
    disp("MATRIX IS BAD");
    return;
end

for i=1:n
    temp=A;
    temp(:,i)=b;
    x(i)=det(temp)/det(A);
end

if(round(x,10)==round(A\b,10))
    disp('gud bhay gud')
end

disp(toc);


% cramers
%     1.9699
% 
% GaussElimination
%     0.0800
