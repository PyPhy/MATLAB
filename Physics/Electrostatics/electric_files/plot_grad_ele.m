syms x y
k=9e+9;
Q=input('enter the value of charge: ');
V=k*(Q/sqrt(x^2+y^2));
[Ex Ey]=grad_sym((-1)*V);
E=sqrt(Ex^2+Ey^2);
figure('color',[0.999 1 0.9]);
ezsurf(E)
xlabel('X');
ylabel('Y');
zlabel('E');
title('electric field using gradient')
axis squre