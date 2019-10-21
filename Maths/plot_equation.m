syms x y z
disp('enter the expression in terms of x, y & z')
disp('please write your expresion in '' ''')
expz=solve(input('enter the expression: '),'z');
figure('color',[0.999 1 0.9]);
hold on
for i=1:length(expz)
    ezsurf(expz(i));
end
hold off
hold on
axis vis3d
axis equal
axis square
hold off
xlabel('X');
ylabel('Y');
zlabel('Z');
title('3D plot of equation')
camlight;
colorbar;