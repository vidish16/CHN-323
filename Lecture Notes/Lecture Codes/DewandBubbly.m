% Pentane: A1=3.97786 B1=1064.40 C1=-41.136
% Hexane: A2=4.00139, B2=1170.875, C2=-48.833
% Cyclohexane: A3=3.93002 B3=1182.774, C3=-52.532;
clear;clc;
TBubble=fzero(@BubblePoint,290);

x=[0.5 0.3 0.2];
A=[3.97786 4.00139 3.93002];
B=[1064.40 1170.875 1182.774];
C=[-41.136 -48.833 -52.532];
P_Total=5;
P_sat=10.^(A-B./(TBubble+C));
P_i=x.*P_sat;
yi=P_i/P_Total;

function y=BubblePoint(T)
    x=[0.5 0.3 0.2];
    A=[3.97786 4.00139 3.93002];
    B=[1064.40 1170.875 1182.774];
    C=[-41.136 -48.833 -52.532];
    p=5;
    diff=-p;
    for i=1:3
        expon=A(i)-B(i)/(C(i)+T);
        t=x(i)*power(10,expon);
        diff=diff+t;
    end
    y=diff;
end

T_Dew=fzero(@DewPoint,390);

P_sat2=10.^(A-B./(T_Dew+C));
xi=P_Total.*x./P_sat2;
function Dp=DewPoint(T)
    y=[0.5 0.3 0.2];
    A=[3.97786 4.00139 3.93002];
    B=[1064.40 1170.875 1182.774];
    C=[-41.136 -48.833 -52.532];
    p=5;
    diff=-1/p;
    for i=1:3
        expon=A(i)-B(i)/(C(i)+T);
        t=y(i)/power(10,expon);
        diff=diff+t;
    end
    Dp=diff;
end
disp("Bubble Point is: "+TBubble);
disp("Composition at this point is");
disp(yi);
disp(" ");
disp("Dew Point is: "+T_Dew);

disp("Composition at this point is");
disp(xi);