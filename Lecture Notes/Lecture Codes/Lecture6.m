clear;
clc;
q=integral(@sincube,0,pi)

function val=sincube(x)
    val=sin(x).^3;
end