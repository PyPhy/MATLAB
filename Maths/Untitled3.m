tta=0:0.03:pi/2;
phi=0:0.03:2*pi;
r_1=(1/(4*pi))^(1/2);
r_2=-(1/(4*pi))^(1/2);
[x_1 y_1 z_1]=meshgrid(tta,phi,r_1);
X_1=z_1.*sin(x_1).*cos(y_1);
Y_1=z_1.*sin(x_1).*sin(y_1);
Z_1=z_1.*cos(x_1);
[x_2 y_2 z_2]=meshgrid(tta,phi,r_2);
X_2=z_2.*sin(x_2).*cos(y_2);
Y_2=z_2.*sin(x_2).*sin(y_2);
Z_2=z_2.*cos(x_2);
figure('color',[0.999 1 0.9]);
surf(X_1,Y_1,Z_1);
hold on
surf(X_2,Y_2,Z_2);
axis equal
camlight
colorbar

displayEndOfDemoMessage(mfilename)