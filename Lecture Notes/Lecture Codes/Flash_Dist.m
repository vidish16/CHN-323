clear;clc;
%%Givens%%
z=[0.5 0.3 0.2]; %Feed Compositions

%In order of Pentane, Hexane, CycloHexane
A=[3.97786 4.00139 3.93002];
B=[1064.40 1170.875 1182.774];
C=[-41.136 -48.833 -52.532];
T=390;
p=5;
p_sat=10.^(A-B./(C+T));
K=p_sat/p;


V_by_F=fzero(@f,1);

function y=f(r)

    %%Givens%%
    z=[0.5 0.3 0.2]; %Feed Compositions

    %In order of Pentane, Hexane, CycloHexane
    A=[3.97786 4.00139 3.93002];
    B=[1064.40 1170.875 1182.774];
    C=[-41.136 -48.833 -52.532];
    T=390;
    p=5;

    p_sat=10.^(A-B./(C+T));
    K=p_sat/p;

    y=sum(z.*(K-1)./(1+r.*(K-1)));
end

x=z./(1+V_by_F.*(K-1));