syms x y
disp('enter the expression in terms of x & y:')
exp=input('enter the expression: ');
z=exp;
figure('color',[0.999 1 0.9]);
ezsurf(z);
xlabel('X');
ylabel('Y');
zlabel('Z');
shading interp
axis vis3d
camlight;
colorbar;