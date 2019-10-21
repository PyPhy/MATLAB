EPS0=8.8542*10^(-12);
N=input('enter the number of objects (positive integer): ');
for i=1:N
x(i)=input(['Enter the X coordinate in m for object ',int2str(i),': ']);
y(i)=input(['Enter the Y coordinate in m for object ',int2str(i),': ']);
z(i)=input(['Enter the Z coordinate in m for object ',int2str(i),': ']);
Q(i)=input(['Enter the charge for object ',int2str(i),': ']);
end
disp('Properties of the point at which the electrical potential is calculated');
xp=input('Enter the X coordinate in m : ');
yp=input('Enter the Y coordinate in m : ');
zp=input('Enter the Z coordinate in m : ');
%%%
r=sqrt((xp-x).^2+(yp-y).^2+(zp-z).^2);
%find the electrical potential due to each object
V=(1/(4*pi*EPS0))*(Q./r);
Vtot=sum(V,2);
%the results are displayes as:
fprintf(['Magnitude of the resultant electrical potential at point P is %e V. \n'],Vtot);
%%%
figure(1);
plot3(0,0,0,'k');
hold on;
for i=1:N
plot3(x(i),y(i),z(i),'o','MarkerSize',10,'MarkerFaceColor','b');
line([xp,x(i)],[yp,y(i)],[zp,z(i)],'LineStyle',':');
end;
text(1.1*xp,1.1*yp,1.1*zp,'Total electrical potatial','color','r');
hold off;
hold on
vecPlot3D([xp yp zp],[xp yp zp]+Vtot',1/Vtot/100,'r',1);
hold off
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('electrical potatial from',int2str(N),'-point charges');