clc
clear all
%ingredients
g= input ('Enter your function: ');
x0= input ('Enter initial guess: ');
e= input ('Enter the tolerance: ');
n= input('Enter the number of iterations:');
x0
for i=1:n
    x1=g(x0)
    disp('-------------------------')
    if abs(x1-x0)<e
        break
    end
    x0=x1
end

%%Fixed point iterative method to find the fixed point of the given eqn.
%clc
%clear all
%clearvars
%g = @(x) x - (x^3 + 4*x^2 - 10)/(3*x^2 + 8);
%x0 = 0; x1 = g(x0);
%i = 1;
%while abs(x0-x1) > 0.001
%    x0 = x1;
%    x1 = g(x0);
%    i = i+1;
%end
%x1,i