%Simpsons 1/3 Rule
clc
clear all
f=@(x) (cos(x))^2;
a=-0.25;
b=0.25;
n=20;
h=(b-a)/n;
sum=0;
for i=1:(n-1)
    x=a+h*i;
    if rem(i,2)==0
        sum=sum+2*f(x);
    else
        sum=sum+4*f(x);
    end
end
sum=sum+f(a)+f(b);
Simpsons=sum*(h/3)