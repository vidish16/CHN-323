clear;clc;
% A=rand(5,5);
% b=rand(5,1);
A=[0 0 1; 4 7 1;0 2 3];
b=rand(3,1);
n=3;
x=gg(A,b,n);
function x=gg(A,b,n)
x=zeros(n,1);
augM=[A b];

% Forward Elimination
tic
for i=1:n-1
    if(augM(i,i)<1e-5)
            for k=i+1:n
                if(augM(k,i)>1e-5)
                    temp=augM(k,:);
                    augM(k,:)=augM(i,:);
                    augM(i,:)=temp;
                    break;
                end
            end
            disp(augM);
    end
    for j=i+1:n
        
        multFac=augM(j,i)/augM(i,i);
        augM(j,:)=augM(j,:)-augM(i,:)*(multFac);
    end
end
% disp(augM)
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

end

disp(sum(abs(x-A\b)));

% clear;clc;
% n=4;
% n=1000;
% A=rand(n,n);
% b=rand(n,1);
% A=[1 1;0.97 0.04];
% b=[23.726;23.726*0.6];