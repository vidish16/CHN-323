A=[1 2 3; 4 5 6; 7 8 8];
B=[4 2 8; 9 2 1; 5 3 7];
% Matrix Operations
    %Addition and Subtraction of matrices
add=A+B;
subtr=A-B;
    %Division of Matrices
div1=A/B;
div2=A\B;
    %Scalar Operations of Matrices
        %Multiplication 
k=10;
Ak=A*k;
       %addition

a=[10 12 13; 14 8 6; 27 8 9];
b=2;
c=a+b;

    %Transpose of Matrices;
Atr=A';
Btr=B';
    %Concatenating matrices
concat1=[A B];
concat2=[A;B];

    %Matrix Multiplication
mult1=A.*B; %Har ek element multiply ho raha hai A ka B se, A[i][j]*B[i][j]
mult2=A^2;  % Matrix ka normal wala multiplication
mult3=A.^2; % Har ek element ka square

      %%So element wise operations ke liye dot use karenge

    %Determinant of a Matrix;
detA=det(A);
detB=det(B);

    %Inverse of a Matrix;
invA=inv(A);
invB=inv(B);


%Special arrays in MATLAB

zeee=zeros(2,3);
oh_no=ones(3,2);
rondd=rand(5,5);

lenA=length(A);
sizA=size(A);
ndimA=ndims(A);
numA=numel(A);

%Functions
k=[];
for i=1:100000
    rondd=rand(5,5);
    ave=average(rondd);
    k(end+1)=ave;
end
histogram(k);