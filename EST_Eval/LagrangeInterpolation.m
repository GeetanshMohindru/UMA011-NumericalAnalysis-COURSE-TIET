%Lagrange Interpolation
clc
clear all
x=[5 7 11 13]
y=[150 392 1452 2366]
p=9
n=length(x);
sum=0;

for i=1:n
    l(i)=1;
    for j=1:n
        if j~=i
            l(i)=(p-x(j))/(x(i)-x(j))*l(i);
        end
    end
    sum=sum+l(i)*y(i);
end
sum