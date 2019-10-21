clear all;
clc;

x = input('value of x: ');
aprx = input('Mc. approximation: ');

f = cell(1,aprx+1);
for r = 0:1:aprx
    f{r+1} = (-1)^r * x^(2*r+1) /((2*r+1)*factorial(2*r+1)); % factoria command is creating problem
end
f = cell2mat(f);
f = sum(f,2);
disp(f);