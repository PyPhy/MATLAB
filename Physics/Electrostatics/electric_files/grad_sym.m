function [Ex Ey Ez]=grad_sym(E)
syms x y z
Ex=diff(E,x);
Ey=diff(E,y);
Ez=diff(E,z);