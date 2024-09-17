clear;clc;
%inputs
n=3;A=rand(n,n);b=rand(n,1);
%solution
x=gaussJordan(A,b,n);
%function
function x=gaussJordan(A,b,n)
    augM=[A b];
    
    for i=1:n
        augM(i,:)=augM(i,:)/augM(i,i);
        for j=1:n
            if ~(j==i)
                augM(j,:)=augM(j,:)-augM(i,:)*augM(j,i);
            end
        end
    end
    x=augM(:,n+1);
end