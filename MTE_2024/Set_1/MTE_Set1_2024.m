% Question 1
% B
clear;clc;
t=0:30;
v_exp=[0 18 38 61 79 97 118 139 204 231 240 292 300 314 389 436 453 487 504 531 552 620 642 675 682 716 803 815 888 901 967];
v_t=2000.*log((14*10^4)./(14*10^4-2100.*t))-9.8*t;
%Plot
plot(t,v_exp);
hold on;
plot(t,v_t);
hold off;
xlabel("Time (s)");
ylabel("Velocity (m/s)")
legend("Experimental", "Theoretical");

%RMS
rms=sqrt(sum((abs(v_t-v_exp).^2))/numel(v_t));
disp("RMS is "+rms);

% C
deno=2*(t(2)-t(1));
acc=zeros(30,1);
acc(1)=(-3*v_exp(1)+4*v_exp(2)-v_exp(3))/deno;
for i=2:29
    acc(i)=(v_exp(i+1)-v_exp(i-1))/deno;
end
% 
acc(30)=(3*v_exp(30)-4*v_exp(29)+v_exp(28))/deno;

%D

a=0;
b=66.67;
for i=1:1000
    mid=(a+b)/2;
    if(abs(f(mid))<0.001) 
        break;
    end
    if(f(mid)>0) 
        b=mid;
    elseif f(mid<0) 
        a=mid;
    end
end

disp("Value of time at which escape velocity is reached: "+mid);
function v=f(t)
    v=2000*log((14*10^4)/(14*10^4-2100*t))-9.8*t-11200;
end





























% Vidish 22112113