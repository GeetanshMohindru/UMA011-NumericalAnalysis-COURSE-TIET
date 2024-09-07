%Neton Divided Differnece
clc
clear all
x=[-1;0;1;2];
f=[3;-4;5;-6];
n=length(x);
F=zeros(n,n);
F(:,1)=f;
F
for j=2:n
    for i=j:n
        F(i,j)=(F(i,j-1)-F(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
F
sum=0;
p=1.5;
for i=1:n
    prod(i)=1;
    for j=1:i-1
        prod(i)=(p-x(j))*prod(i);
    end
    sum=sum+prod(i)*F(i,i);
end
sum