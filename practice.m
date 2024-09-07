clc       
clear all
x=4;        % output is stored but not Displayed (when ; is used)
y=5         % output is stored and Displayed (when no ; used)

% The following to be written in Command Window

% clc       >> clears the command window
% clear all >> removes all variables from the current workspace
% ans       >> default answer is stored here (most recent answer)

% version >> displays the version of MATLAB
% ver     >> displays the complete version of MATLAB
% date    >> displays date
% clock   >> displays time
% who     >> lists all the variables in the workspace
% whos    >> lists all variables with their sizes

% format         >> set command window output display format
% format long    >> ans comes in 16 decimal places
% format short   >> ans comes in 4 decimal places
% format long e  >> long exponent*
% format short e >> short exponent*

% Matrix
A = [1 2 3]
B = [1 2 3; 4 5 6; 7 8 9]
C = [1 2 3;
    4 5 6;
    7 8 9]
D = [4; 5; 6]
A*D

X1 = [1 2 3]
Y1 = [3 4 5]
X1.*Y1 % to multiply element-wise
X1./Y1 % to divide element-wise

%Transpose of a Matrix
B
B'

% Size
E = [1 2 3; 4 5 6; 7 8 9; 10 11 12; 13 14 15; 16 17 18]
size(E)
rows = size(E,1) % gives number of rows
columns = size(E,2) % gives number of columns

% SUM
sum(E)   % column-wise sum
sum(E,1) % column-wise sum
sum(E,2) % row-wise sum