% Question 2, Part 1
clear;clc;
inGuess=0.01;
options=optimset('Display','off');
res=fsolve(@f,inGuess,options);
disp("Value of Lambda for B=0.6 and E=3500 is "+res);

function y=f(L)
    B=0.6;
    E=3500;
    y=1./sqrt(L)+4*log(B+(5./sqrt(L))/E)-2;
end


%Question 2, part 2
B = linspace(0.1, 1.1, 100); 
Epsilon_values = [2800, 3000, 3200, 3400, 3600]; 
Lambda_solutions = zeros(100, 5);  

for i=1:5
    E=Epsilon_values(i);
    inGuess2=0.01;
    for j=1:100
        Beta=B(j);
        Lambda_solutions(j,i)=fsolve(@(L) f2(L,Beta,E),inGuess2,options);
    end
end

for i=1:5
    plot(B,Lambda_solutions(:,i));
    hold on;
end
hold off;
xlabel("Beta");
ylabel("Lambda");

legend("3000","3200","3400","3600","3800");


function y = f2(L, Beta, Epsilon)
    y = 1./sqrt(L) + 4*log(Beta + (5./sqrt(L)) / Epsilon) - 2;
end
savefig("Q2_ii");


%Question 2, part 3
B = linspace(0.1, 1.1, 5); 
Epsilon_values = linspace(3000,4000,1000);
Lambda_solutions = zeros(1000, 5);  

for i=1:1000
    E=Epsilon_values(i);
    inGuess2=0.01;
    for j=1:5
        Beta=B(j);
        Lambda_solutions(j,i)=fsolve(@(L) f3(L,Beta,E),inGuess2,options);
    end
end

for i=1:5
    plot(Epsilon_values,Lambda_solutions(:,i));
    hold on;
end
hold off;
xlabel("Epsilon");
ylabel("Lambda");

legend("0.1","0.3","0.5","0.7","0.9");

function y = f3(L, Beta, Epsilon)
    y = 1./sqrt(L) + 4*log(Beta + (5./sqrt(L)) / Epsilon) - 2;
end

savefig("Q2_iii");





























% Vidish 22112113