% Newton Raphson method to find roots of a qiven eqn
clc
clear all
f = @(x) cos(x);
syms x;
g = diff(f,x);
x0=1 ;
x1=x0 - f(x0)/subs(g,x0);
while abs(x0-x1)>0.001
    x0=x1;
    x1=x0 - f(x0)/subs(g,x0);
end
fprintf('%f',x1);