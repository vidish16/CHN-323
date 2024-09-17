clear;clc;
A=[1 2 3; 4 5 6; 7 8 9];
colWise=[A(:,1)' A(:,2)' A(:,3)']';
B=A';
rowWise=B(:);

% for i=1:3
%     for j=1:3
%         if(A(i,j)<=5) 
%             A(i,j)=-inf;
%         end
%     end
% end

A