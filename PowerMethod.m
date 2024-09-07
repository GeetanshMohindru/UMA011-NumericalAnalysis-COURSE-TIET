%Power Method
clc
clear all
a=[4,1,0; 1,20,1; 0,1,4];
x=[1;1;1];
x0=x;
err=1;
toll=10^(-4);
while (norm(err,inf)>toll)
    y=a*x0;
    k=norm(y,inf);
    x1=y/k;
    err=x1-x0;
    x0=x1;
end
k