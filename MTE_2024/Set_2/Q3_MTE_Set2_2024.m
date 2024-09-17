clear;clc;
Eps=linspace(0,0.5,11);
Sig=[0 0.252 0.531 0.84 1.184 1.558 1.975 2.444 2.943 3.5 4.115];

DelSig=zeros(11,1);
deno=2*(Eps(2)-Eps(1));
DelSig(1)=(-3*Sig(1)+4*Sig(2)-Sig(3))/deno;
for i=2:10
    DelSig(i)=(Sig(i+1)-Sig(i-1))/deno;
end

DelSig(11)=(3*Sig(11)-4*Sig(10)+Sig(9))/deno;

a=DelSig(1);
b=(DelSig(11)-DelSig(1))/(Sig(11)-Sig(1));

scatter(Sig,DelSig);
hold on;
plot(Sig,a+b*Sig);
hold off;

disp("a is "+a);
disp("b is "+b);

pred_D=(a+b*Sig)';
rms_error=sqrt(sum((DelSig-pred_D).^2)./numel(DelSig));
disp("rms error is "+rms_error);

xlabel("Sigma");
ylabel("d(Sigma)/d(epsilon)");
savefig("Q3_Set2");






























% Vidish 22112113