function A=TridiagonalGenerator(d1,d2,d3,n)
    A=zeros(n,n);
    for i=1:n-1
        A(i,i+1)=d1(i);
        A(i,i)=d2(i);
        A(i+1,i)=d3(i);
    end
    A(n,n)=d2(n);
end