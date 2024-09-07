clc
clear all
%ingredients
f= @(x) -4*x+cos(x)+2
a=0.5;
b=0.75;
n=5
if f(a)*f(b) < 0
    for i=1:n
        c= (a+b)/2
        if f(a)*f(c)< 0
            b=c;
        elseif f(b)*f(c)< 0
            a=c;
        end
    end
else
    disp ('No root between given brackets')
end