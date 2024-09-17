clear all
clc

x=0;
y=1;
z=2;
tolerance=0.0001;

while(abs(f(z))>tolerance)
      
    z=y-(f(y).*(y-x)/(f(y)-f(x)));
   if(f(z)*f(x)<0)
       y=z;
   else x=z;
   end
end


p=linspace(0,2,1000);

plot(p,f(p))
hold on
plot(p,p)
hold off
function y=f(p)
    y=3.*p+sin(p)-exp(p);
end
