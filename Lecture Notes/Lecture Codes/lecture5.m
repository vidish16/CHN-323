clear;clc;
v=[1 2 3; 4 5 6; 7 8 9];
disp(f(v));

function ave=f(x)
    ave=sum(x(:))/numel(x);
end

