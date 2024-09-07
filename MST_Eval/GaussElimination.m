% Gauss Elimination
clc
clear all
% a=[10,8,-3,1 ; 2,10,1,-4 ; 3,-4,10,1 ; 2,2,-3,10]
% b=[16;9;10;11]
a=[3 2 -1; 1 -3 2; 2 -1 1]
b=[1; 2; 3]
n=size(a,1); % size of row
x=zeros(1,n);
y=[a,b];
disp('Augmented Matrix: ')
disp(y)

% forward elimination
for j=1:n-1
    for i=j+1:n
        y(i,:)=y(i,:)-(y(i,j)/y(j,j))*y(j,:);
    end
end
disp('After Forward Elimination: ')
disp(y)

% back substitution
c=y(:,1:n);
d=y(:,n+1);
for i=n:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+c(i,j)*x(j);
    end
    x(i)=(d(i)-sum)/c(i,i);
end
disp('After Back Substitution: ')
disp(x)