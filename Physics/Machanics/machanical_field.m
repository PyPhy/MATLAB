G=6.67*10^(-11);
N=input('enter the number of objects (positive integer): ');
for i=1:N
x(i)=input(['Enter the X coordinate in m for object ',int2str(i),': ']);
y(i)=input(['Enter the Y coordinate in m for object ',int2str(i),': ']);
z(i)=input(['Enter the Z coordinate in m for object ',int2str(i),': ']);
m(i)=input(['Enter the mass in Kg for object ',int2str(i),': ']);
end
disp('Properties of the point at which the gravitational field is calculated');
xp=input('Enter the X coordinate in m : ');
yp=input('Enter the Y coordinate in m : ');
zp=input('Enter the Z coordinate in m : ');
%%%
r=sqrt((xp-x).^2+(yp-y).^2+(zp-z).^2);
ux=(xp-x)./r;
uy=(yp-y)./r;
uz=(zp-z)./r;
uVec=[ux;uy;uz];
%find the force due to each object
g=(ones(3,1)*(G*(m./(r.^2)))).*uVec;
%where g represents a 3×N matrix with elemaenrs of each column being the cartesian components of one of the field vectors
%in order to obtain the components of the total force vector;all fields are summes victorially
%gtot is the column vector obtainend by adding up all columns of the matrix g
gtot=sum(g,2);
gmag=vectorMag(gtot);
guv=(gtot/gmag)';
%the results are displayes as:
fprintf(['Magnitude of the resultant field at point P is %e N/Kg. \n'],gmag);
disp('Unit vector of the resultant field :');
disp(guv);
%finally we plot individual gravitational fields on the "target" object due to N "source" objects in blue and the total gravitational field in red
figure(1);
plot3(0,0,0,'k');
hold on;
for i=1:N
plot3(x(i),y(i),z(i),'o','MarkerSize',10,'MarkerFaceColor','b');
line([xp,x(i)],[yp,y(i)],[zp,z(i)],'LineStyle',':');
hold on;
vecPlot3D([xp yp zp],[xp yp zp]+g(:,i)',1/gmag/100,'b',0);
hold on;
end;
vecPlot3D([xp yp zp],[xp yp zp]+gtot',1/gmag/100,'r',1);
text(1.1*xp,1.1*yp,1.1*zp,'Total machanical field','color','r');
hold off;
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('Force from',int2str(N),'-point objects');