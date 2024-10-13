clc;
clear all;
q = 71/3600;
c0 = 20; 
k = 6.25e-3;
n = 2.5;

V0 = [5, 5, 5, 5];

lb = [0, 0, 0, 0]
ub = [20, 20, 20, 20]

Aeq = [1, 1, 1, 1];
Beq = 20;

[V, c4] = fmincon(@(V)prodConc(q, V, c0, k, n), V0, [], [], Aeq, Beq, lb, ub);
disp('Final concentration in the last reactor (c4):');
disp(c4);
V
function c = concentration(q, V, k, n, cprev)
    c = q*(cprev - V*k*cprev^n);
end

function c4 = prodConc(q, Vg, c0, k, n)
    c = fsolve(@(C) [
        q*(c0 - C(1)) - Vg(1)*k*C(1)^n;
        q*(C(1) - C(2)) - Vg(2)*k*C(2)^n;
        q*(C(2) - C(3)) - Vg(3)*k*C(3)^n;
        q*(C(3) - C(4)) - Vg(4)*k*C(4)^n
    ], [c0, c0, c0, c0]);
    
    c4 = c(4);
end
